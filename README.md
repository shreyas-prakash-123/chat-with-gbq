# Chat with GBQ - Research Publication Workflow Datasets

This repository contains information about Google BigQuery (GBQ) datasets for research publication workflows at Springer Nature, spanning from submissions to post-acceptance and publication. The repository is structured to provide context for generating relevant SQL queries that can be used in Google Cloud BigQuery Studio for analysis.

## Repository Structure

### Contract Terms Foundation
- **[contract_terms.md](./contract_terms_foundation/contract_terms.md)**: Information about contract terms and deals that Springer Nature makes with various organizations.

### Joint Submissions
Contains information on submissions across all PRS systems (eJP, eM, and SNAPP):
- **[example_queries.md](./joint_submissions/example_queries.md)**: Sample SQL queries for joint submissions analysis across all systems.
- **[joint_submissions.md](./joint_submissions/joint_submissions.md)**: Schema documentation for joint submissions datasets that consolidate data from all three systems.
- **[tat-documentation.md](./joint_submissions/tat-documentation.md)**: Documentation related to turnaround time for joint submissions across all systems.

### Post-Acceptance
All workflows across all PRS systems go through OASIS (the only system for post-acceptance workflows):
- **[account_balance_problems.md](./post_acceptance/account_balance_problems.md)**: Information about account balance discrepancies during order processing.
- **[approvals_librarian_report.md](./post_acceptance/approvals_librarian_report.md)**: Reports related to librarian approvals.
- **[article_order_projection.md](./post_acceptance/article_order_projection.md)**: Information about article orders.
- **[example-queries.md](./post_acceptance/example-queries.md)**: Sample SQL queries for post-acceptance analysis.
- **[journal_info_cache.md](./post_acceptance/journal_info_cache.md)**: Information about journals processed through OASIS.
- **[post_acceptance_workflow_projection.md](./post_acceptance/post_acceptance_workflow_projection.md)**: Documentation of workflows and the author journey through various stages of post-acceptance.

### Reconciliation Report
- **[reconciliation_report.md](./reconciliation_report/reconciliation_report.md)**: Captures all events across funding, eligibility, licensing, rights, checkout payment, etc. for author workflows. (as this has the complete trial, this is also used by the CS support to diagnose what happened/what went wrong.)

### Submissions
Information on the submissions phase of the research publishing workflow exclusively for SNAPP system:
- **[example-queries.md](./submissions/example-queries.md)**: Sample SQL queries for SNAPP submissions analysis only.
- **[journal_config.md](./submissions/journal_config.md)**: Information on journals in the SNAPP submissions phase.
- **[submissions.md](./submissions/submissions.md)**: Information on all events that occur during SNAPP submissions.
- **[submissions_stages_tat.md](./submissions/submissions_stages_tat.md)**: Information on turnaround time for each event during the SNAPP submissions workflow.

## Purpose

This repository aims to provide comprehensive context to GitHub Copilot to generate relevant SQL queries for Google BigQuery Studio. These queries can be used for analyzing various aspects of the research publication journey, from submissions to acceptance and publication.

## Publication Workflow Systems

This repository covers data from multiple publication workflow systems:

- **eJP**: Electronic Journal Publishing system
- **eM**: Editorial Manager system
- **SNAPP**: Springer Nature Article Processing Platform
- **OASIS**: Post-acceptance workflow system (used across all PRS systems)

## Prerequisites

To access the datasets referenced in this repository, you need to be added to the following Google BigQuery projects:

1. **datasn-submissions-55677263**: Contains joint submissions data across all PRS systems
2. **snapp-data-1158cc46**: Contains SNAPP-specific submission data
3. **snproject0c0a584f**: Contains post-acceptance/OASIS data and reconciliation reports

Please contact your team administrator or data access manager to request access to these projects. Once access is granted, you'll be able to execute the example queries provided in this repository.

## Usage

Browse through the relevant directories to understand the schemas and available datasets. Use the example queries provided in various directories as a starting point for your own analysis. The documentation in each file provides context about the data and its structure to help you formulate effective queries.

### Example Queries

Here are some examples of the types of queries you can generate to analyze the research publication workflow at Springer Nature:

#### Joint Submissions Analysis

```sql
-- Count submissions by source system over time
SELECT 
  source_system,
  EXTRACT(QUARTER FROM submission_date) AS quarter,
  EXTRACT(YEAR FROM submission_date) AS year,
  COUNT(*) AS submission_count
FROM 
  `datasn-submissions-55677263.prod_joint_submissions_core.submissions_v2`
WHERE 
  submission_date BETWEEN '2024-01-01' AND '2025-06-30'
GROUP BY 
  source_system, quarter, year
ORDER BY 
  year, quarter, source_system;
```

#### Post-Acceptance (OASIS) Analysis

```sql
-- Analyze workflow stages and their completion rates
SELECT
  JSON_EXTRACT_SCALAR(json_blob, '$.status') AS workflow_status,
  COUNT(*) AS workflow_count,
  ROUND(AVG(TIMESTAMP_DIFF(
    CURRENT_TIMESTAMP(),
    TIMESTAMP(JSON_EXTRACT_SCALAR(json_blob, '$.workflow_created')),
    DAY
  )), 1) AS avg_days_in_workflow
FROM
  `snproject0c0a584f.oasis_data_private.post_acceptance_workflow_projection`
WHERE
  JSON_EXTRACT_SCALAR(json_blob, '$.workflow_created') >= '2025-01-01'
GROUP BY
  workflow_status
ORDER BY
  avg_days_in_workflow DESC;
```

#### SNAPP Submissions Analysis

```sql
-- Analyze editorial decision times by journal
SELECT
  j.journalTitle,
  j.publishingModel,
  COUNT(DISTINCT s.submissionId) AS submission_count,
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
  j.journalTitle, j.publishingModel
HAVING
  submission_count > 5
ORDER BY
  avg_days_to_decision;
```

### How to Use with GitHub Copilot

1. **Understand Your Analysis Needs**: Determine which part of the research publication workflow you want to analyze (submissions, post-acceptance, or both).

2. **Navigate to Relevant Files**: Browse the appropriate schema files to understand the data structure and available fields.

3. **Generate Queries**: Use GitHub Copilot to help generate SQL queries by:
   - Describing the analysis you want to perform
   - Referencing specific tables or fields from the schema documentation
   - Using example queries as templates

4. **Example Prompt for Copilot**: "Create a SQL query for BigQuery that analyzes the acceptance rate of submissions in SNAPP by journal and article type for Q2 2025."

5. **Execute in BigQuery**: Take the generated SQL and run it in Google BigQuery Studio, adjusting parameters as needed.
