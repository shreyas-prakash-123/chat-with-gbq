# SNAPP Submissions Schema

This file documents the schema for submission data exclusively in the SNAPP system. Note that this only includes data from the SNAPP submission system and does not include eJP or eM data. For queries that span all submission systems, refer to the joint_submissions directory.

project: snapp-data-1158cc46
dataset: snapp_data
table: submissions

[
  {
    "name": "journalId",
    "mode": "REQUIRED",
    "type": "STRING",
    "description": "",
    "fields": []
  },
  {
    "name": "journalTitle",
    "mode": "NULLABLE",
    "type": "STRING",
    "description": "",
    "fields": []
  },
  {
    "name": "issn",
    "mode": "REPEATED",
    "type": "RECORD",
    "description": "",
    "fields": [
      {
        "name": "value",
        "mode": "NULLABLE",
        "type": "STRING",
        "description": "",
        "fields": []
      },
      {
        "name": "medium",
        "mode": "NULLABLE",
        "type": "STRING",
        "description": "",
        "fields": []
      }
    ]
  },
  {
    "name": "eissn",
    "mode": "NULLABLE",
    "type": "STRING",
    "description": "",
    "fields": []
  },
  {
    "name": "impactFactor",
    "mode": "NULLABLE",
    "type": "FLOAT",
    "description": "",
    "fields": []
  },
  {
    "name": "snappLaunchDate",
    "mode": "NULLABLE",
    "type": "STRING",
    "description": "",
    "fields": []
  },
  {
    "name": "publishingModel",
    "mode": "NULLABLE",
    "type": "STRING",
    "description": "",
    "fields": []
  },
  {
    "name": "supportedPeerReviewSystems",
    "mode": "REPEATED",
    "type": "STRING",
    "description": "",
    "fields": []
  },
  {
    "name": "articleTypes",
    "mode": "REPEATED",
    "type": "STRING",
    "description": "",
    "fields": []
  },
  {
    "name": "journalStatus",
    "mode": "NULLABLE",
    "type": "STRING",
    "description": "",
    "fields": []
  },
  {
    "name": "acceptingTransfers",
    "mode": "NULLABLE",
    "type": "BOOLEAN",
    "description": "",
    "fields": []
  },
  {
    "name": "aimsAndScope",
    "mode": "NULLABLE",
    "type": "STRING",
    "description": "",
    "fields": []
  },
  {
    "name": "blockedForTrex",
    "mode": "REQUIRED",
    "type": "BOOLEAN",
    "description": "",
    "fields": []
  },
  {
    "name": "mandatoryRecommendation",
    "mode": "REPEATED",
    "type": "STRING",
    "description": "",
    "fields": []
  }
]