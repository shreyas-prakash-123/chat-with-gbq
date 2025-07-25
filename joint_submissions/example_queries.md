# Example SQL Queries for Joint Submissions

This file contains example queries that can be used to analyze submission data across eJP, eM, and SNAPP systems using the `datasn-submissions-55677263.prod_joint_submissions_core.submissions_v2` table.

## Query 1: Count of Submissions by Journal

```sql
SELECT 
  journal_id,
  COUNT(*) AS submission_count
FROM 
  `datasn-submissions-55677263.prod_joint_submissions_core.submissions_v2`
WHERE 
  submission_date BETWEEN '2025-01-01' AND '2025-06-30'
GROUP BY 
  journal_id
ORDER BY 
  submission_count DESC
LIMIT 20;
```

## Query 2: Decision Outcomes Analysis

```sql
SELECT 
  final_decision,
  source_system,
  COUNT(*) AS decision_count,
  ROUND(COUNT(*) / SUM(COUNT(*)) OVER (PARTITION BY source_system) * 100, 2) AS percentage
FROM 
  `datasn-submissions-55677263.prod_joint_submissions_core.submissions_v2`
WHERE 
  decision_date BETWEEN '2025-01-01' AND '2025-06-30'
  AND final_decision IS NOT NULL
GROUP BY 
  final_decision, source_system
ORDER BY 
  source_system, decision_count DESC;
```

## Query 3: Average Time from Submission to Decision

```sql
SELECT 
  source_system,
  EXTRACT(QUARTER FROM submission_date) AS submission_quarter,
  EXTRACT(YEAR FROM submission_date) AS submission_year,
  COUNT(*) AS submissions_with_decisions,
  ROUND(AVG(DATE_DIFF(decision_date, submission_date, DAY)), 2) AS avg_days_to_decision
FROM 
  `datasn-submissions-55677263.prod_joint_submissions_core.submissions_v2`
WHERE 
  submission_date BETWEEN '2024-01-01' AND '2025-06-30'
  AND decision_date IS NOT NULL
GROUP BY 
  source_system, submission_quarter, submission_year
ORDER BY 
  submission_year, submission_quarter, source_system;
```

## Query 4: Handling Editor Performance

```sql
SELECT 
  handling_editor_email,
  handling_editor_full_name,
  COUNT(*) AS total_submissions_handled,
  COUNT(CASE WHEN final_decision IS NOT NULL THEN 1 END) AS decisions_made,
  ROUND(AVG(DATE_DIFF(decision_date, submission_date, DAY)), 2) AS avg_days_to_decision,
  COUNT(CASE WHEN final_decision = 'Accept' OR final_decision LIKE '%Accept%' THEN 1 END) AS acceptances
FROM 
  `datasn-submissions-55677263.prod_joint_submissions_core.submissions_v2`
WHERE 
  handling_editor_email IS NOT NULL
  AND submission_date BETWEEN '2025-01-01' AND '2025-06-30'
GROUP BY 
  handling_editor_email, handling_editor_full_name
HAVING 
  total_submissions_handled > 5
ORDER BY 
  total_submissions_handled DESC;
```

## Query 5: Submissions Pipeline Status

```sql
SELECT 
  current_stage,
  source_system,
  COUNT(*) AS manuscript_count,
  ROUND(AVG(DATE_DIFF(CURRENT_DATE(), current_stage_date, DAY)), 1) AS avg_days_in_current_stage
FROM 
  `datasn-submissions-55677263.prod_joint_submissions_core.submissions_v2`
WHERE 
  final_decision IS NULL
  AND submission_date > '2024-01-01'
GROUP BY 
  current_stage, source_system
ORDER BY 
  source_system, avg_days_in_current_stage DESC;
```

## Query 6: Journal Transfer Analysis

```sql
SELECT 
  journal_id AS transferred_to_journal,
  COUNT(*) AS transfer_count
FROM 
  `datasn-submissions-55677263.prod_joint_submissions_core.submissions_v2`
WHERE 
  is_submission_transferred_from = TRUE
  AND submission_date BETWEEN '2025-01-01' AND '2025-06-30'
GROUP BY 
  journal_id
ORDER BY 
  transfer_count DESC
LIMIT 15;
```