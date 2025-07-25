
# SNAPP Journal Configuration

This file documents the schema for journal configuration data exclusively in the SNAPP system. Note that this only includes journals that are in the SNAPP submissions phase and does not include journal data from eJP or eM systems. For queries that span all submission systems, refer to the joint_submissions directory.

project: snapp-data-1158cc46
dataset: snapp_data
table: journal_config

schema:

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