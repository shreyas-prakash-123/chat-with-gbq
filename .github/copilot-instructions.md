I have multiple folders that span submissions, joint-submissions and post-acceptance.

Each folder has info on the GBQ datasets and the schema related to the part of the research publication journey, right from submissions to acceptance, and then finally getting published. the final objective of this project is to help give enough context to the github copilot for it to generate relevant SQL queries that could be fed to the Google cloud GBQ studio for further analysis

joint-submissions folder contains info on submissions across all PRS systems such as eJP, eM and SNAPP.

as for submissions, it only contains info on SNAPP submission system.

as for post-acceptance, all workflows across all PRS go through OASIS. There exists only one system for the post-acceptance workflows. post-acceptance workflow is also called as oasis internally.

map of the folders present:
/contract_terms_foundation
- contract_terms.md (to know more about contract information, the deals that springer nature makes with various organisations)

/joint_submissions
- example_queries.md (to see examples of sample SQL queries one can run in joint submissions)

-joint-submissions.md (to see the schema for the joint submissions datasets across eJp, eM and SNAPP)

/post-acceptance

- account_balance_problems (to know more about the account balance discrepancies that happen while orders are being processed)

- approvals_librarian_report 
- article_order_projection (to know more about the article orders)
- journal_info_cache (to know more about the list of journals which go through oasis)
- post_acceptance_workflow_projection (captures the workflows and what the author going through various stages of the post acceptance workflow would look like)

/reconciliation_report

- reconciliation_report (captures all the list of events across funding, eligibility, licensing, rights, checkout payment etc for the author workflows)


/submissions (info on submissions phase of research publishing workflow for authors)

- journal_config (info on the journals that are in the submissions phase)

- submissions (has info on all the events that happen during submissions)

- submissions_stages_tat (has info on the tat of each event/s during the submissions workflow)


