# SNAPP Submissions Stages Turn-Around-Time

This file documents the schema for tracking turnaround times of each event during the submissions workflow exclusively in the SNAPP system. Note that this only includes data from the SNAPP submission system and does not include eJP or eM data. For queries that span all submission systems, refer to the joint_submissions directory.

project: snapp-data-1158cc46
dataset: snapp_data
table: submissions_stages_tat


[
  {
    "name": "submissionId",
    "mode": "NULLABLE",
    "type": "STRING",
    "description": "",
    "fields": []
  },
  {
    "name": "journalId",
    "mode": "NULLABLE",
    "type": "STRING",
    "description": "",
    "fields": []
  },
  {
    "name": "collectionId",
    "mode": "NULLABLE",
    "type": "STRING",
    "description": "",
    "fields": []
  },
  {
    "name": "version",
    "mode": "NULLABLE",
    "type": "STRING",
    "description": "",
    "fields": []
  },
  {
    "name": "revision",
    "mode": "NULLABLE",
    "type": "INTEGER",
    "description": "",
    "fields": []
  },
  {
    "name": "amendment",
    "mode": "NULLABLE",
    "type": "INTEGER",
    "description": "",
    "fields": []
  },
  {
    "name": "stage_number",
    "mode": "NULLABLE",
    "type": "INTEGER",
    "description": "",
    "fields": []
  },
  {
    "name": "stage_from",
    "mode": "NULLABLE",
    "type": "STRING",
    "description": "",
    "fields": []
  },
  {
    "name": "stage_since",
    "mode": "NULLABLE",
    "type": "TIMESTAMP",
    "description": "",
    "fields": []
  },
  {
    "name": "stage_until",
    "mode": "NULLABLE",
    "type": "TIMESTAMP",
    "description": "",
    "fields": []
  },
  {
    "name": "stage_to",
    "mode": "NULLABLE",
    "type": "STRING",
    "description": "",
    "fields": []
  },
  {
    "name": "duration_days",
    "mode": "NULLABLE",
    "type": "INTEGER",
    "description": "",
    "fields": []
  },
  {
    "name": "duration_hours",
    "mode": "NULLABLE",
    "type": "INTEGER",
    "description": "",
    "fields": []
  },
  {
    "name": "final_decision",
    "mode": "NULLABLE",
    "type": "STRING",
    "description": "",
    "fields": []
  },
  {
    "name": "assignedEditor_userId",
    "mode": "NULLABLE",
    "type": "STRING",
    "description": "",
    "fields": []
  },
  {
    "name": "assignedEditor_givenName",
    "mode": "NULLABLE",
    "type": "STRING",
    "description": "",
    "fields": []
  },
  {
    "name": "assignedEditor_familyName",
    "mode": "NULLABLE",
    "type": "STRING",
    "description": "",
    "fields": []
  },
  {
    "name": "assignedEditor_emailAddress",
    "mode": "NULLABLE",
    "type": "STRING",
    "description": "",
    "fields": []
  }
]