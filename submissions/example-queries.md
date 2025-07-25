# Example SQL Queries for SNAPP Submissions

This file contains example queries that can be used to analyze submission data in the SNAPP system.

## Query 1: Journal Submission Volume

```sql
SELECT
  j.journalTitle,
  j.publishingModel,
  COUNT(s.submissionId) AS submission_count
FROM
  `snapp-data-1158cc46.snapp_data.journal_config` AS j
LEFT JOIN
  `snapp-data-1158cc46.snapp_data.submissions_stages_tat` AS s
ON
  j.journalId = s.journalId
WHERE
  s.stage_since BETWEEN TIMESTAMP('2025-01-01') AND TIMESTAMP('2025-06-30')
GROUP BY
  j.journalTitle, j.publishingModel
ORDER BY
  submission_count DESC
LIMIT 20;
```

## Query 2: Submission Turnaround Time by Journal

```sql
SELECT
  j.journalTitle,
  COUNT(s.submissionId) AS submission_count,
  ROUND(AVG(s.duration_days), 1) AS avg_days_in_stage,
  ROUND(AVG(CASE WHEN s.stage_from = 'INITIAL_SUBMISSION' AND s.stage_to = 'UNDER_REVIEW' 
    THEN s.duration_days ELSE NULL END), 1) AS avg_days_to_review,
  ROUND(AVG(CASE WHEN s.stage_to = 'DECISION_MADE' 
    THEN s.duration_days ELSE NULL END), 1) AS avg_days_to_decision
FROM
  `snapp-data-1158cc46.snapp_data.journal_config` AS j
JOIN
  `snapp-data-1158cc46.snapp_data.submissions_stages_tat` AS s
ON
  j.journalId = s.journalId
WHERE
  s.stage_since BETWEEN TIMESTAMP('2025-01-01') AND TIMESTAMP('2025-06-30')
GROUP BY
  j.journalTitle
HAVING
  submission_count > 10
ORDER BY
  avg_days_in_stage DESC;
```

## Query 3: Editor Performance Analysis

```sql
SELECT
  s.assignedEditor_emailAddress,
  s.assignedEditor_givenName || ' ' || s.assignedEditor_familyName AS editor_name,
  COUNT(DISTINCT s.submissionId) AS handled_submissions,
  ROUND(AVG(s.duration_days), 1) AS avg_days_per_stage,
  COUNT(DISTINCT CASE WHEN s.final_decision IS NOT NULL THEN s.submissionId ELSE NULL END) AS decisions_made
FROM
  `snapp-data-1158cc46.snapp_data.submissions_stages_tat` AS s
WHERE
  s.assignedEditor_emailAddress IS NOT NULL
  AND s.stage_since BETWEEN TIMESTAMP('2025-01-01') AND TIMESTAMP('2025-06-30')
GROUP BY
  s.assignedEditor_emailAddress, editor_name
HAVING
  handled_submissions > 5
ORDER BY
  handled_submissions DESC;
```

## Query 4: Stage Transition Analysis

```sql
SELECT
  stage_from,
  stage_to,
  COUNT(*) AS transition_count,
  ROUND(AVG(duration_days), 1) AS avg_days_in_transition,
  ROUND(STDDEV(duration_days), 1) AS std_dev_days
FROM
  `snapp-data-1158cc46.snapp_data.submissions_stages_tat`
WHERE
  stage_since BETWEEN TIMESTAMP('2025-01-01') AND TIMESTAMP('2025-06-30')
  AND stage_from IS NOT NULL
  AND stage_to IS NOT NULL
GROUP BY
  stage_from, stage_to
ORDER BY
  transition_count DESC;
```

## Query 5: Journal Performance by Impact Factor

```sql
SELECT
  CASE
    WHEN impactFactor < 2 THEN 'Low Impact (<2)'
    WHEN impactFactor BETWEEN 2 AND 5 THEN 'Medium Impact (2-5)'
    WHEN impactFactor > 5 THEN 'High Impact (>5)'
    ELSE 'No Impact Factor'
  END AS impact_category,
  COUNT(DISTINCT journalId) AS journal_count,
  AVG(impactFactor) AS avg_impact_factor,
  COUNT(DISTINCT CASE WHEN publishingModel = 'OPEN_ACCESS' THEN journalId ELSE NULL END) AS oa_journals,
  COUNT(DISTINCT CASE WHEN publishingModel = 'SUBSCRIPTION' THEN journalId ELSE NULL END) AS subscription_journals
FROM
  `snapp-data-1158cc46.snapp_data.journal_config`
WHERE
  journalStatus = 'ACTIVE'
GROUP BY
  impact_category
ORDER BY
  avg_impact_factor DESC;
```

## Query 6: Decision Trends Over Time

```sql
SELECT
  FORMAT_TIMESTAMP('%Y-%m', stage_until) AS decision_month,
  final_decision,
  COUNT(*) AS decision_count
FROM
  `snapp-data-1158cc46.snapp_data.submissions_stages_tat`
WHERE
  stage_to = 'DECISION_MADE'
  AND final_decision IS NOT NULL
  AND stage_until BETWEEN TIMESTAMP('2025-01-01') AND TIMESTAMP('2025-06-30')
GROUP BY
  decision_month, final_decision
ORDER BY
  decision_month, decision_count DESC;
```