# Chat with GBQ - Research Publication Workflow Datasets

This repository contains information about Google BigQuery (GBQ) datasets for research publication workflows at Springer Nature, spanning from submissions to post-acceptance and publication. The repository is structured to provide context for generating relevant SQL queries that can be used in Google Cloud BigQuery Studio for analysis.

## Repository Structure

### Contract Terms Foundation
- **[contract_terms.md](./contract_terms_foundation/contract_terms.md)**: Information about contract terms and deals that Springer Nature makes with various organizations.

### Joint Submissions
Contains information on submissions across all PRS systems (eJP, eM, and SNAPP):
- **[example_queries.md](./joint_submissions/example_queries.md)**: Sample SQL queries for joint submissions analysis.
- **[joint_submissions.md](./joint_submissions/joint_submissions.md)**: Schema documentation for joint submissions datasets.
- **[tat-documentation.md](./joint_submissions/tat-documentation.md)**: Documentation related to turnaround time for joint submissions.

### Post-Acceptance
All workflows across all PRS systems go through OASIS (the only system for post-acceptance workflows):
- **[account_balance_problems.md](./post_acceptance/account_balance_problems.md)**: Information about account balance discrepancies during order processing.
- **[approvals_librarian_report.md](./post_acceptance/approvals_librarian_report.md)**: Reports related to librarian approvals.
- **[article_order_projection.md](./post_acceptance/article_order_projection.md)**: Information about article orders.
- **[example-queries.md](./post_acceptance/example-queries.md)**: Sample SQL queries for post-acceptance analysis.
- **[journal_info_cache.md](./post_acceptance/journal_info_cache.md)**: Information about journals processed through OASIS.
- **[post_acceptance_workflow_projection.md](./post_acceptance/post_acceptance_workflow_projection.md)**: Documentation of workflows and the author journey through various stages of post-acceptance.

### Reconciliation Report
- **[reconciliation_report.md](./reconciliation_report/reconciliation_report.md)**: Captures all events across funding, eligibility, licensing, rights, checkout payment, etc. for author workflows.

### Submissions
Information on the submissions phase of the research publishing workflow (specifically for SNAPP):
- **[example-queries.md](./submissions/example-queries.md)**: Sample SQL queries for submissions analysis.
- **[journal_config.md](./submissions/journal_config.md)**: Information on journals in the submissions phase.
- **[submissions.md](./submissions/submissions.md)**: Information on all events that occur during submissions.
- **[submissions_stages_tat.md](./submissions/submissions_stages_tat.md)**: Information on turnaround time for each event during the submissions workflow.

## Purpose

This repository aims to provide comprehensive context to GitHub Copilot to generate relevant SQL queries for Google BigQuery Studio. These queries can be used for analyzing various aspects of the research publication journey, from submissions to acceptance and publication.

## Publication Workflow Systems

This repository covers data from multiple publication workflow systems:

- **eJP**: Electronic Journal Publishing system
- **eM**: Editorial Manager system
- **SNAPP**: Springer Nature Article Processing Platform
- **OASIS**: Post-acceptance workflow system (used across all PRS systems)

## Usage

Browse through the relevant directories to understand the schemas and available datasets. Use the example queries provided in various directories as a starting point for your own analysis. The documentation in each file provides context about the data and its structure to help you formulate effective queries.
