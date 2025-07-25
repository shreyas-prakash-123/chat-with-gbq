# Copilot Instructions for Research Publication Workflow Analytics

This repository contains information about Google BigQuery (GBQ) datasets for research publication workflows at Springer Nature, spanning from submissions through acceptance to final publication. The repository provides context for generating relevant SQL queries that can be used in Google Cloud BigQuery Studio for analytics.

## Publication Workflow Systems

This repository covers data from multiple publication workflow systems:

1. **Submissions Systems**:
   - **SNAPP**: Springer Nature Article Processing Platform - The `/submissions` directory contains data EXCLUSIVELY from this system
   - **eJP**: Electronic Journal Publishing system - Only found in the `/joint_submissions` directory 
   - **eM**: Editorial Manager system - Only found in the `/joint_submissions` directory

2. **Post-Acceptance System**:
   - **OASIS**: The only system for post-acceptance workflows across all PRS (Publication Review Systems). All workflows across all PRS systems go through OASIS after acceptance.

## Directory Structure Explanation

- The `/joint_submissions` directory contains information on submissions across ALL PRS systems (eJP, eM, and SNAPP). Use this when you need to analyze data across multiple submission systems.

- The `/submissions` directory contains information EXCLUSIVELY on the SNAPP submission system. Use this when you only need data from SNAPP.

- The `/post-acceptance` directory contains information on OASIS workflows. Post-acceptance is also referred to as "oasis" internally.

## Repository Map and File Descriptions

### /contract_terms_foundation
- **contract_terms.md**: Information about contract agreements and deals that Springer Nature makes with various organizations.

### /joint_submissions (COVERS ALL: SNAPP, eJP, and eM systems)
- **example_queries.md**: Sample SQL queries for analyzing submissions across all PRS systems.
- **joint_submissions.md**: Schema documentation for joint submissions datasets that consolidate data from all three systems.
- **tat-documentation.md**: Documentation related to turnaround time metrics for submissions across all systems.

### /post-acceptance (OASIS - single system for all post-acceptance workflows)
- **account_balance_problems.md**: Information about account balance discrepancies during order processing.
- **approvals_librarian_report.md**: Reports related to librarian approvals.
- **article_order_projection.md**: Information about article orders.
- **example-queries.md**: Sample SQL queries for post-acceptance analysis.
- **journal_info_cache.md**: Information about journals processed through OASIS.
- **post_acceptance_workflow_projection.md**: Documentation of workflows and author journey through post-acceptance stages.

### /reconciliation_report
- **reconciliation_report.md**: Captures all events across funding, eligibility, licensing, rights, checkout payment, etc. for author workflows. Used by CS support to diagnose issues.

### /submissions (EXCLUSIVELY SNAPP SYSTEM ONLY)
- **journal_config.md**: Information on journals in the SNAPP submissions phase.
- **submissions.md**: Information on events that occur during SNAPP submissions only.
- **submissions_stages_tat.md**: Information on turnaround time for events during the SNAPP submissions workflow.
- **example-queries.md**: Sample SQL queries for SNAPP submissions analysis only.

## SQL Query Generation Guidelines

When generating SQL queries for this repository, please follow these guidelines:

1. **Identify the Correct Data Source**:
   - For cross-system analysis (spanning eJP, eM, and SNAPP), use tables from the `/joint_submissions` directory.
   - For SNAPP-only analysis, use tables from the `/submissions` directory.
   - For post-acceptance workflows, use OASIS data from the `/post-acceptance` directory.

2. **Include Clear Comments**: Add comments explaining the purpose of the query and any important assumptions.

3. **Use Proper Table References**: Always include the full table path with project, dataset, and table name.

4. **Follow BigQuery Best Practices**: Use appropriate syntax for BigQuery, including functions like EXTRACT(), JSON_EXTRACT_SCALAR(), etc.

5. **LIMIT Clause Syntax**: LIMIT is not supported directly after FROM queries. Instead:
   - Use the pipe operator: `|> LIMIT n`
   - Or wrap the FROM query in parentheses: `(FROM ... ) LIMIT n`
   - Or structure as a proper SELECT statement: `SELECT * FROM ... LIMIT n`

6. **Include Date Filtering**: Where appropriate, include date filters to limit data to relevant time periods.

7. **Consider Performance**: Write queries that are optimized for performance, especially when working with large datasets.


