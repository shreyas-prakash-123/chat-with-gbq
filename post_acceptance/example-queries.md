# Example SQL Queries for Post-Acceptance (OASIS)

This file contains example queries that can be used to analyze post-acceptance data in the OASIS system.

## Query 1: Article Order Analysis by Journal

```sql
SELECT
  jo.title AS journal_name,
  COUNT(ao.id) AS order_count,
  AVG(JSON_EXTRACT_SCALAR(ao.json_blob.article_order, '$.total_price')) AS avg_order_price
FROM
  `snproject0c0a584f.oasis_data_private.article_order_projection` AS ao,
  `snproject0c0a584f.oasis_data_private.journal_info_cache` AS jo
WHERE
  JSON_EXTRACT_SCALAR(ao.json_blob.article_order, '$.journal_eissn') = jo.eissn
  AND JSON_EXTRACT_SCALAR(ao.json_blob, '$.can_create') = 'true'
  AND TIMESTAMP(JSON_EXTRACT_SCALAR(ao.json_blob.article_order, '$.created_date')) 
    BETWEEN TIMESTAMP('2025-01-01') AND TIMESTAMP('2025-06-30')
GROUP BY
  journal_name
ORDER BY
  order_count DESC
LIMIT 20;
```

## Query 2: Post-Acceptance Workflow Status Distribution

```sql
SELECT
  JSON_EXTRACT_SCALAR(json_blob, '$.status') AS workflow_status,
  COUNT(*) AS workflow_count,
  ROUND(COUNT(*) * 100.0 / (SELECT COUNT(*) FROM `snproject0c0a584f.oasis_data_private.post_acceptance_workflow_projection`), 2) AS percentage
FROM
  `snproject0c0a584f.oasis_data_private.post_acceptance_workflow_projection`
WHERE
  JSON_EXTRACT_SCALAR(json_blob, '$.workflow_created') >= '2025-01-01'
GROUP BY
  workflow_status
ORDER BY
  workflow_count DESC;
```

## Query 3: Account Balance Issues Analysis

```sql
SELECT
  reason,
  COUNT(*) AS issue_count,
  ROUND(AVG(sap_charge - aas_charge), 2) AS avg_charge_difference,
  publishing_model,
  deal_type
FROM
  `snproject0c0a584f.oasis_data_private.account_balance_problems`
WHERE
  issue_found_date BETWEEN '2025-01-01' AND '2025-06-30'
GROUP BY
  reason, publishing_model, deal_type
ORDER BY
  issue_count DESC;
```

## Query 4: Librarian Approval Analysis

```sql
SELECT
  JSON_EXTRACT_SCALAR(json_blob, '$.dealType') AS deal_type,
  JSON_EXTRACT_SCALAR(json_blob, '$.status') AS approval_status,
  COUNT(*) AS approval_count,
  AVG(TIMESTAMP_DIFF(
    TIMESTAMP(JSON_EXTRACT_SCALAR(json_blob, '$.approvedTime')),
    TIMESTAMP(JSON_EXTRACT_SCALAR(json_blob, '$.filterTime')),
    HOUR
  )) AS avg_hours_to_approval
FROM
  `snproject0c0a584f.oasis_data_private.approvals_librarian_report`
WHERE
  JSON_EXTRACT_SCALAR(json_blob, '$.filterTime') >= '2025-01-01'
  AND JSON_EXTRACT_SCALAR(json_blob, '$.status') IS NOT NULL
GROUP BY
  deal_type, approval_status
ORDER BY
  deal_type, approval_count DESC;
```

## Query 5: Publication Workflow TAT Analysis

```sql
WITH workflow_times AS (
  SELECT
    id,
    JSON_EXTRACT_SCALAR(json_blob, '$.workflow_created') AS workflow_created,
    JSON_EXTRACT_SCALAR(json_blob, '$.legally_stored_at') AS legally_stored_at,
    JSON_EXTRACT_SCALAR(json_blob, '$.status') AS status,
    JSON_EXTRACT_SCALAR(json_blob.article_info, '$.journal_title') AS journal_title
  FROM
    `snproject0c0a584f.oasis_data_private.post_acceptance_workflow_projection`
  WHERE
    JSON_EXTRACT_SCALAR(json_blob, '$.workflow_created') >= '2025-01-01'
    AND JSON_EXTRACT_SCALAR(json_blob, '$.legally_stored_at') IS NOT NULL
)

SELECT
  journal_title,
  COUNT(*) AS completed_workflows,
  ROUND(AVG(TIMESTAMP_DIFF(
    TIMESTAMP(legally_stored_at),
    TIMESTAMP(workflow_created),
    DAY
  )), 1) AS avg_days_to_completion
FROM
  workflow_times
GROUP BY
  journal_title
HAVING
  completed_workflows > 5
ORDER BY
  avg_days_to_completion DESC;
```

## Query 6: Contract Terms and Article Orders Integration

```sql
SELECT
  ct.name AS contract_name,
  ct.dealType,
  COUNT(ao.id) AS order_count,
  SUM(CAST(JSON_EXTRACT_SCALAR(ao.json_blob.article_order, '$.total_price') AS NUMERIC)) AS total_order_value
FROM
  `snproject0c0a584f.contract_terms_foundation.contract_terms` AS ct
JOIN
  `snproject0c0a584f.oasis_data_private.article_order_projection` AS ao
ON
  JSON_EXTRACT_SCALAR(ao.json_blob.article_order, '$.contract_number') = ct.contractNumber
WHERE
  TIMESTAMP(JSON_EXTRACT_SCALAR(ao.json_blob.article_order, '$.created_date')) >= TIMESTAMP('2025-01-01')
GROUP BY
  contract_name, ct.dealType
ORDER BY
  total_order_value DESC
LIMIT 20;
```