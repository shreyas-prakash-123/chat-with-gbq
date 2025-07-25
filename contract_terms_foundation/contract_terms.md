project: snproject0c0a584f
dataset: contract_terms_foundation
table: contract_terms

schema:

[
  {
    "name": "bpid",
    "mode": "",
    "type": "STRING",
    "description": "",
    "fields": []
  },
  {
    "name": "name",
    "mode": "",
    "type": "STRING",
    "description": "",
    "fields": []
  },
  {
    "name": "prepay",
    "mode": "",
    "type": "BOOLEAN",
    "description": "",
    "fields": []
  },
  {
    "name": "dealType",
    "mode": "",
    "type": "STRING",
    "description": "",
    "fields": []
  },
  {
    "name": "salesOrg",
    "mode": "",
    "type": "STRING",
    "description": "",
    "fields": []
  },
  {
    "name": "lineItems",
    "mode": "REPEATED",
    "type": "RECORD",
    "description": "",
    "fields": [
      {
        "name": "isVerified",
        "mode": "",
        "type": "BOOLEAN",
        "description": "",
        "fields": []
      },
      {
        "name": "priceSource",
        "mode": "",
        "type": "RECORD",
        "description": "",
        "fields": [
          {
            "name": "type",
            "mode": "",
            "type": "STRING",
            "description": "",
            "fields": []
          },
          {
            "name": "currency",
            "mode": "",
            "type": "STRING",
            "description": "",
            "fields": []
          }
        ]
      },
      {
        "name": "authorDiscount",
        "mode": "",
        "type": "FLOAT",
        "description": "",
        "fields": []
      },
      {
        "name": "journalsExcluded",
        "mode": "REPEATED",
        "type": "RECORD",
        "description": "",
        "fields": [
          {
            "name": "endDate",
            "mode": "",
            "type": "DATE",
            "description": "",
            "fields": []
          },
          {
            "name": "jFlowId",
            "mode": "",
            "type": "INTEGER",
            "description": "",
            "fields": []
          },
          {
            "name": "startDate",
            "mode": "",
            "type": "DATE",
            "description": "",
            "fields": []
          }
        ]
      },
      {
        "name": "journalsIncluded",
        "mode": "REPEATED",
        "type": "RECORD",
        "description": "",
        "fields": [
          {
            "name": "endDate",
            "mode": "",
            "type": "DATE",
            "description": "",
            "fields": []
          },
          {
            "name": "jFlowId",
            "mode": "",
            "type": "INTEGER",
            "description": "",
            "fields": []
          },
          {
            "name": "startDate",
            "mode": "",
            "type": "DATE",
            "description": "",
            "fields": []
          }
        ]
      },
      {
        "name": "validityParameter",
        "mode": "",
        "type": "RECORD",
        "description": "",
        "fields": [
          {
            "name": "id",
            "mode": "",
            "type": "STRING",
            "description": "",
            "fields": []
          },
          {
            "name": "endDate",
            "mode": "",
            "type": "DATE",
            "description": "",
            "fields": []
          },
          {
            "name": "startDate",
            "mode": "",
            "type": "DATE",
            "description": "",
            "fields": []
          },
          {
            "name": "itemCancelled",
            "mode": "",
            "type": "BOOLEAN",
            "description": "",
            "fields": []
          }
        ]
      },
      {
        "name": "commercialGroupDetails",
        "mode": "REPEATED",
        "type": "RECORD",
        "description": "",
        "fields": [
          {
            "name": "discount",
            "mode": "",
            "type": "STRING",
            "description": "",
            "fields": []
          },
          {
            "name": "commercialGroup",
            "mode": "",
            "type": "STRING",
            "description": "",
            "fields": []
          }
        ]
      },
      {
        "name": "contractualOAException",
        "mode": "",
        "type": "BOOLEAN",
        "description": "",
        "fields": []
      },
      {
        "name": "specificLicenseTypesAllowed",
        "mode": "REPEATED",
        "type": "STRING",
        "description": "",
        "fields": []
      },
      {
        "name": "productionArticleTypesAllowed",
        "mode": "REPEATED",
        "type": "STRING",
        "description": "",
        "fields": []
      }
    ]
  },
  {
    "name": "apcCapping",
    "mode": "",
    "type": "RECORD",
    "description": "",
    "fields": [
      {
        "name": "baseYear",
        "mode": "",
        "type": "INTEGER",
        "description": "",
        "fields": []
      },
      {
        "name": "cappingTerms",
        "mode": "",
        "type": "RECORD",
        "description": "",
        "fields": [
          {
            "name": "y2021",
            "mode": "",
            "type": "FLOAT",
            "description": "",
            "fields": []
          },
          {
            "name": "y2022",
            "mode": "",
            "type": "FLOAT",
            "description": "",
            "fields": []
          },
          {
            "name": "y2023",
            "mode": "",
            "type": "FLOAT",
            "description": "",
            "fields": []
          },
          {
            "name": "y2024",
            "mode": "",
            "type": "FLOAT",
            "description": "",
            "fields": []
          },
          {
            "name": "y2025",
            "mode": "",
            "type": "FLOAT",
            "description": "",
            "fields": []
          },
          {
            "name": "y2026",
            "mode": "",
            "type": "FLOAT",
            "description": "",
            "fields": []
          },
          {
            "name": "y2027",
            "mode": "",
            "type": "FLOAT",
            "description": "",
            "fields": []
          },
          {
            "name": "y2028",
            "mode": "",
            "type": "FLOAT",
            "description": "",
            "fields": []
          }
        ]
      }
    ]
  },
  {
    "name": "displayName",
    "mode": "",
    "type": "STRING",
    "description": "",
    "fields": []
  },
  {
    "name": "lastUpdated",
    "mode": "",
    "type": "TIMESTAMP",
    "description": "",
    "fields": []
  },
  {
    "name": "agreementType",
    "mode": "",
    "type": "STRING",
    "description": "",
    "fields": []
  },
  {
    "name": "contractNumber",
    "mode": "",
    "type": "STRING",
    "description": "",
    "fields": []
  },
  {
    "name": "welcomeMessage",
    "mode": "",
    "type": "STRING",
    "description": "",
    "fields": []
  },
  {
    "name": "memberContracts",
    "mode": "REPEATED",
    "type": "RECORD",
    "description": "",
    "fields": [
      {
        "name": "bpid",
        "mode": "",
        "type": "STRING",
        "description": "",
        "fields": []
      },
      {
        "name": "isPaused",
        "mode": "",
        "type": "BOOLEAN",
        "description": "",
        "fields": []
      },
      {
        "name": "contractNumber",
        "mode": "",
        "type": "STRING",
        "description": "",
        "fields": []
      },
      {
        "name": "validityParameters",
        "mode": "REPEATED",
        "type": "RECORD",
        "description": "",
        "fields": [
          {
            "name": "id",
            "mode": "",
            "type": "STRING",
            "description": "",
            "fields": []
          },
          {
            "name": "endDate",
            "mode": "",
            "type": "DATE",
            "description": "",
            "fields": []
          },
          {
            "name": "startDate",
            "mode": "",
            "type": "DATE",
            "description": "",
            "fields": []
          },
          {
            "name": "itemCancelled",
            "mode": "",
            "type": "BOOLEAN",
            "description": "",
            "fields": []
          }
        ]
      }
    ]
  },
  {
    "name": "autoapprovalRules",
    "mode": "REPEATED",
    "type": "STRING",
    "description": "",
    "fields": []
  },
  {
    "name": "showGreenOAOptOut",
    "mode": "",
    "type": "BOOLEAN",
    "description": "",
    "fields": []
  },
  {
    "name": "suppressApcDisplay",
    "mode": "",
    "type": "BOOLEAN",
    "description": "",
    "fields": []
  },
  {
    "name": "deductAtPublication",
    "mode": "",
    "type": "BOOLEAN",
    "description": "",
    "fields": []
  },
  {
    "name": "journalPublishingModel",
    "mode": "",
    "type": "STRING",
    "description": "",
    "fields": []
  }
]