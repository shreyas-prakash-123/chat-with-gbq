# Joint Submissions Schema Across All PRS Systems

This file documents the schema for the joint submissions datasets that consolidate data from all three PRS systems: eJP (Electronic Journal Publishing), eM (Editorial Manager), and SNAPP (Springer Nature Article Processing Platform). This unified schema allows for analysis across all submission systems.

project: datasn-submissions-55677263
dataset: prod_joint_submissions_core
table: submissions_v2

schema:


[
  {
    "name": "submission_key",
    "mode": "",
    "type": "STRING",
    "description": "Composite key, unique identifier of the submission. NOTE: You can use this to join to other core tables only. Use internal_submission_id to join to other datasets outside of core.\n",
    "fields": []
  },
  {
    "name": "source_system_submission_id",
    "mode": "",
    "type": "STRING",
    "description": "Submission Id as specified in the source system. For EJP this is ejp_j_id/ejp_ms_id. You can use this to debug or join to tables outside the core dataset.",
    "fields": []
  },
  {
    "name": "source_system_global_submission_id",
    "mode": "",
    "type": "STRING",
    "description": "Global Submission ID across the 3 systems. NOTE: This column is not available for eJP data so it will be null for all source_system='EJP'.\n",
    "fields": []
  },
  {
    "name": "submission_id",
    "mode": "",
    "type": "STRING",
    "description": "ID of the submission. NOTE: You can use this to join to other core tables only. Use internal_submission_id to join to other datasets outside of core.\n",
    "fields": []
  },
  {
    "name": "source_system",
    "mode": "",
    "type": "STRING",
    "description": "System of origin of this data. Either EM, EJP or SNAPP.",
    "fields": []
  },
  {
    "name": "journal_id",
    "mode": "",
    "type": "STRING",
    "description": "The Springer Nature Journal ID to reference Journals. You can use this to join to other core tables.",
    "fields": []
  },
  {
    "name": "global_submission_id",
    "mode": "",
    "type": "STRING",
    "description": "Global Submission ID across the 3 systems. NOTE: This column is not available for eJP data so it will be null for all source_system='EJP'.\n",
    "fields": []
  },
  {
    "name": "submission_title",
    "mode": "",
    "type": "STRING",
    "description": "Current submission title",
    "fields": []
  },
  {
    "name": "submission_date",
    "mode": "",
    "type": "TIMESTAMP",
    "description": "Date the submission was received",
    "fields": []
  },
  {
    "name": "revision_number",
    "mode": "",
    "type": "INTEGER",
    "description": "Number of revisions starting with 1, until the final decision is made.",
    "fields": []
  },
  {
    "name": "current_stage_id",
    "mode": "",
    "type": "INTEGER",
    "description": "Current stage Id of the submissions as defined in Stages Logic: https://docs.google.com/presentation/d/1kXaG4GReEqhoK8kMBkZcCk2NJklGQfMghQLXCvCAX_k",
    "fields": []
  },
  {
    "name": "current_stage",
    "mode": "",
    "type": "STRING",
    "description": "Current stage of the submissions as defined in Stages Logic: https://docs.google.com/presentation/d/1kXaG4GReEqhoK8kMBkZcCk2NJklGQfMghQLXCvCAX_k",
    "fields": []
  },
  {
    "name": "current_stage_date",
    "mode": "",
    "type": "TIMESTAMP",
    "description": "Date when a submission got to the given current_stage",
    "fields": []
  },
  {
    "name": "final_decision",
    "mode": "",
    "type": "STRING",
    "description": "When a decision is made for a submission. You can find the date of a decision using the decision_date column.",
    "fields": []
  },
  {
    "name": "decision_date",
    "mode": "",
    "type": "TIMESTAMP",
    "description": "Date when a decision was made on the submission. You can get the decision info from the final_decision column.",
    "fields": []
  },
  {
    "name": "article_type",
    "mode": "",
    "type": "STRING",
    "description": "type of article- research, editorial, etc. This is the list of types in a journal and can be used to map whether a submission is part of primary research or not by using https://docs.google.com/spreadsheets/d/1TIRZ9AsgAV3_92fZwSjRI3xJSTv0JQA1dqXXhgcOUww/edit#gid=179815079",
    "fields": []
  },
  {
    "name": "is_submission_transferred_from",
    "mode": "",
    "type": "BOOLEAN",
    "description": "True if the submission was transferred from some other journal",
    "fields": []
  },
  {
    "name": "corresponding_author_email",
    "mode": "",
    "type": "STRING",
    "description": "Corresponding author email address during peer review. You also use this to join to the authors table in conjunction with the submission_id",
    "fields": []
  },
  {
    "name": "handling_editor_email",
    "mode": "",
    "type": "STRING",
    "description": "Email of the primary editor (person handling the manuscript).",
    "fields": []
  },
  {
    "name": "handling_editor_full_name",
    "mode": "",
    "type": "STRING",
    "description": "Full Name of the primary editor (person handling the manuscript).",
    "fields": []
  },
  {
    "name": "subject_terms",
    "mode": "",
    "type": "STRING",
    "description": "The subject area/s a manuscript belongs to",
    "fields": []
  },
  {
    "name": "abstract",
    "mode": "",
    "type": "STRING",
    "description": "Abstract of the manuscript",
    "fields": []
  },
  {
    "name": "internal_submission_id",
    "mode": "",
    "type": "STRING",
    "description": "Submission Id as specified in the source system. You can use this to debug or join to tables outside the core dataset.",
    "fields": []
  },
  {
    "name": "last_update_date",
    "mode": "",
    "type": "TIMESTAMP",
    "description": "The timestamp when this submissions was last updated at.",
    "fields": []
  },
  {
    "name": "is_correction",
    "mode": "",
    "type": "BOOLEAN",
    "description": "True if the submission is a correction",
    "fields": []
  },
  {
    "name": "is_currently_in_collection",
    "mode": "",
    "type": "BOOLEAN",
    "description": "Whether this submission currently belongs to a valid collection",
    "fields": []
  },
  {
    "name": "collection_list",
    "mode": "REPEATED",
    "type": "RECORD",
    "description": "Array of collections currently associated with submission",
    "fields": [
      {
        "name": "collection_key",
        "mode": "",
        "type": "STRING",
        "description": "",
        "fields": []
      },
      {
        "name": "collection_type",
        "mode": "",
        "type": "STRING",
        "description": "",
        "fields": []
      },
      {
        "name": "collection_api_id",
        "mode": "REPEATED",
        "type": "STRING",
        "description": "",
        "fields": []
      },
      {
        "name": "source_system_collection_title",
        "mode": "",
        "type": "STRING",
        "description": "",
        "fields": []
      }
    ]
  },
  {
    "name": "source_system_current_stage_id",
    "mode": "",
    "type": "INTEGER",
    "description": "Current stage ID of the submissions in the source system data",
    "fields": []
  },
  {
    "name": "source_system_current_stage_name",
    "mode": "",
    "type": "STRING",
    "description": "Current stage of the submissions in the source system data",
    "fields": []
  },
  {
    "name": "first_decision_term",
    "mode": "",
    "type": "STRING",
    "description": "First decision made after a manuscript is submitted.",
    "fields": []
  },
  {
    "name": "first_decision_date",
    "mode": "",
    "type": "TIMESTAMP",
    "description": "Time when the first decision was made.",
    "fields": []
  },
  {
    "name": "ejp_revision_round",
    "mode": "",
    "type": "INTEGER",
    "description": "",
    "fields": []
  },
  {
    "name": "ejp_revision_round_type",
    "mode": "",
    "type": "STRING",
    "description": "",
    "fields": []
  },
  {
    "name": "ejp_interim_stage_decision",
    "mode": "",
    "type": "STRING",
    "description": "",
    "fields": []
  }
]