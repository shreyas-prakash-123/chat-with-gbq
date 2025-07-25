project: snproject0c0a584f
dataset: oasis_data_private
table: post_acceptance_workflow_projection

schema:

[
  {
    "name": "id",
    "mode": "NULLABLE",
    "type": "STRING",
    "description": "",
    "fields": []
  },
  {
    "name": "json_blob",
    "mode": "NULLABLE",
    "type": "RECORD",
    "description": "",
    "fields": [
      {
        "name": "id",
        "mode": "NULLABLE",
        "type": "STRING",
        "description": "",
        "fields": []
      },
      {
        "name": "status",
        "mode": "NULLABLE",
        "type": "STRING",
        "description": "",
        "fields": []
      },
      {
        "name": "ready_for_status",
        "mode": "NULLABLE",
        "type": "STRING",
        "description": "",
        "fields": []
      },
      {
        "name": "workflow_created",
        "mode": "NULLABLE",
        "type": "TIMESTAMP",
        "description": "",
        "fields": []
      },
      {
        "name": "eligibility_id",
        "mode": "NULLABLE",
        "type": "STRING",
        "description": "",
        "fields": []
      },
      {
        "name": "checkout_id",
        "mode": "NULLABLE",
        "type": "STRING",
        "description": "",
        "fields": []
      },
      {
        "name": "article_info",
        "mode": "NULLABLE",
        "type": "RECORD",
        "description": "",
        "fields": [
          {
            "name": "journal_id",
            "mode": "NULLABLE",
            "type": "INTEGER",
            "description": "",
            "fields": []
          },
          {
            "name": "doi",
            "mode": "NULLABLE",
            "type": "STRING",
            "description": "",
            "fields": []
          },
          {
            "name": "title",
            "mode": "NULLABLE",
            "type": "STRING",
            "description": "",
            "fields": []
          },
          {
            "name": "type",
            "mode": "NULLABLE",
            "type": "STRING",
            "description": "",
            "fields": []
          },
          {
            "name": "prs_article_type",
            "mode": "NULLABLE",
            "type": "STRING",
            "description": "",
            "fields": []
          },
          {
            "name": "licence_type",
            "mode": "NULLABLE",
            "type": "STRING",
            "description": "",
            "fields": []
          },
          {
            "name": "manuscript_id",
            "mode": "NULLABLE",
            "type": "STRING",
            "description": "",
            "fields": []
          },
          {
            "name": "corresponding_author",
            "mode": "NULLABLE",
            "type": "RECORD",
            "description": "",
            "fields": [
              {
                "name": "email",
                "mode": "NULLABLE",
                "type": "STRING",
                "description": "",
                "fields": []
              },
              {
                "name": "given_name",
                "mode": "NULLABLE",
                "type": "STRING",
                "description": "",
                "fields": []
              },
              {
                "name": "family_name",
                "mode": "NULLABLE",
                "type": "STRING",
                "description": "",
                "fields": []
              },
              {
                "name": "affiliations",
                "mode": "REPEATED",
                "type": "RECORD",
                "description": "",
                "fields": [
                  {
                    "name": "name",
                    "mode": "NULLABLE",
                    "type": "STRING",
                    "description": "",
                    "fields": []
                  },
                  {
                    "name": "department",
                    "mode": "NULLABLE",
                    "type": "STRING",
                    "description": "",
                    "fields": []
                  },
                  {
                    "name": "address",
                    "mode": "NULLABLE",
                    "type": "STRING",
                    "description": "",
                    "fields": []
                  },
                  {
                    "name": "gridId",
                    "mode": "NULLABLE",
                    "type": "STRING",
                    "description": "",
                    "fields": []
                  },
                  {
                    "name": "isniId",
                    "mode": "NULLABLE",
                    "type": "STRING",
                    "description": "",
                    "fields": []
                  }
                ]
              },
              {
                "name": "primaryAffiliation",
                "mode": "NULLABLE",
                "type": "RECORD",
                "description": "",
                "fields": [
                  {
                    "name": "name",
                    "mode": "NULLABLE",
                    "type": "STRING",
                    "description": "",
                    "fields": []
                  },
                  {
                    "name": "department",
                    "mode": "NULLABLE",
                    "type": "STRING",
                    "description": "",
                    "fields": []
                  },
                  {
                    "name": "address",
                    "mode": "NULLABLE",
                    "type": "STRING",
                    "description": "",
                    "fields": []
                  },
                  {
                    "name": "gridId",
                    "mode": "NULLABLE",
                    "type": "STRING",
                    "description": "",
                    "fields": []
                  },
                  {
                    "name": "isniId",
                    "mode": "NULLABLE",
                    "type": "STRING",
                    "description": "",
                    "fields": []
                  }
                ]
              },
              {
                "name": "orc_id",
                "mode": "NULLABLE",
                "type": "STRING",
                "description": "",
                "fields": []
              }
            ]
          },
          {
            "name": "contributing_authors",
            "mode": "REPEATED",
            "type": "RECORD",
            "description": "",
            "fields": [
              {
                "name": "email",
                "mode": "NULLABLE",
                "type": "STRING",
                "description": "",
                "fields": []
              },
              {
                "name": "orc_id",
                "mode": "NULLABLE",
                "type": "STRING",
                "description": "",
                "fields": []
              },
              {
                "name": "given_name",
                "mode": "NULLABLE",
                "type": "STRING",
                "description": "",
                "fields": []
              },
              {
                "name": "family_name",
                "mode": "NULLABLE",
                "type": "STRING",
                "description": "",
                "fields": []
              },
              {
                "name": "affiliations",
                "mode": "REPEATED",
                "type": "RECORD",
                "description": "",
                "fields": [
                  {
                    "name": "name",
                    "mode": "NULLABLE",
                    "type": "STRING",
                    "description": "",
                    "fields": []
                  },
                  {
                    "name": "department",
                    "mode": "NULLABLE",
                    "type": "STRING",
                    "description": "",
                    "fields": []
                  },
                  {
                    "name": "address",
                    "mode": "NULLABLE",
                    "type": "STRING",
                    "description": "",
                    "fields": []
                  },
                  {
                    "name": "gridId",
                    "mode": "NULLABLE",
                    "type": "STRING",
                    "description": "",
                    "fields": []
                  },
                  {
                    "name": "isniId",
                    "mode": "NULLABLE",
                    "type": "STRING",
                    "description": "",
                    "fields": []
                  }
                ]
              }
            ]
          },
          {
            "name": "submission_date",
            "mode": "NULLABLE",
            "type": "DATE",
            "description": "",
            "fields": []
          },
          {
            "name": "is_colour_for_free",
            "mode": "NULLABLE",
            "type": "BOOLEAN",
            "description": "",
            "fields": []
          },
          {
            "name": "funders",
            "mode": "REPEATED",
            "type": "RECORD",
            "description": "",
            "fields": [
              {
                "name": "name",
                "mode": "NULLABLE",
                "type": "STRING",
                "description": "",
                "fields": []
              },
              {
                "name": "ref_id",
                "mode": "NULLABLE",
                "type": "STRING",
                "description": "",
                "fields": []
              },
              {
                "name": "grant_numbers",
                "mode": "REPEATED",
                "type": "STRING",
                "description": "",
                "fields": []
              },
              {
                "name": "funding_note",
                "mode": "NULLABLE",
                "type": "STRING",
                "description": "",
                "fields": []
              }
            ]
          },
          {
            "name": "registration_date",
            "mode": "NULLABLE",
            "type": "DATE",
            "description": "",
            "fields": []
          },
          {
            "name": "acceptance_date",
            "mode": "NULLABLE",
            "type": "DATE",
            "description": "",
            "fields": []
          },
          {
            "name": "is_contractual_oa_exception",
            "mode": "NULLABLE",
            "type": "BOOLEAN",
            "description": "",
            "fields": []
          },
          {
            "name": "locale",
            "mode": "NULLABLE",
            "type": "STRING",
            "description": "",
            "fields": []
          },
          {
            "name": "ejp_id",
            "mode": "NULLABLE",
            "type": "STRING",
            "description": "",
            "fields": []
          },
          {
            "name": "acknowledgements",
            "mode": "NULLABLE",
            "type": "RECORD",
            "description": "",
            "fields": [
              {
                "name": "xml",
                "mode": "NULLABLE",
                "type": "STRING",
                "description": "",
                "fields": []
              }
            ]
          },
          {
            "name": "accepted_manuscript_file_id",
            "mode": "NULLABLE",
            "type": "STRING",
            "description": "",
            "fields": []
          },
          {
            "name": "society_statement",
            "mode": "NULLABLE",
            "type": "BOOLEAN",
            "description": "",
            "fields": []
          },
          {
            "name": "for_bmc_supplementary_issue",
            "mode": "NULLABLE",
            "type": "BOOLEAN",
            "description": "",
            "fields": []
          }
        ]
      },
      {
        "name": "returned_to_production_at",
        "mode": "NULLABLE",
        "type": "TIMESTAMP",
        "description": "",
        "fields": []
      },
      {
        "name": "publication_rights_id",
        "mode": "NULLABLE",
        "type": "STRING",
        "description": "",
        "fields": []
      },
      {
        "name": "licence_file_id",
        "mode": "NULLABLE",
        "type": "STRING",
        "description": "",
        "fields": []
      },
      {
        "name": "author_email_transmission_id",
        "mode": "NULLABLE",
        "type": "STRING",
        "description": "",
        "fields": []
      },
      {
        "name": "author_email_transmission_sent_at",
        "mode": "NULLABLE",
        "type": "TIMESTAMP",
        "description": "",
        "fields": []
      },
      {
        "name": "legally_stored_at",
        "mode": "NULLABLE",
        "type": "TIMESTAMP",
        "description": "",
        "fields": []
      },
      {
        "name": "intervention_reason",
        "mode": "NULLABLE",
        "type": "STRING",
        "description": "",
        "fields": []
      },
      {
        "name": "intervention_date",
        "mode": "NULLABLE",
        "type": "TIMESTAMP",
        "description": "",
        "fields": []
      },
      {
        "name": "eligibility_decision",
        "mode": "NULLABLE",
        "type": "RECORD",
        "description": "",
        "fields": [
          {
            "name": "type",
            "mode": "NULLABLE",
            "type": "STRING",
            "description": "",
            "fields": []
          },
          {
            "name": "institution",
            "mode": "NULLABLE",
            "type": "INTEGER",
            "description": "",
            "fields": []
          },
          {
            "name": "publication_funding",
            "mode": "NULLABLE",
            "type": "RECORD",
            "description": "",
            "fields": [
              {
                "name": "funder_name",
                "mode": "NULLABLE",
                "type": "STRING",
                "description": "",
                "fields": []
              },
              {
                "name": "funding_note",
                "mode": "NULLABLE",
                "type": "STRING",
                "description": "",
                "fields": []
              }
            ]
          },
          {
            "name": "contract_number",
            "mode": "NULLABLE",
            "type": "INTEGER",
            "description": "",
            "fields": []
          },
          {
            "name": "price_type",
            "mode": "NULLABLE",
            "type": "STRING",
            "description": "",
            "fields": []
          },
          {
            "name": "confirm_institution_choice",
            "mode": "NULLABLE",
            "type": "RECORD",
            "description": "",
            "fields": [
              {
                "name": "type",
                "mode": "NULLABLE",
                "type": "STRING",
                "description": "",
                "fields": []
              },
              {
                "name": "reason",
                "mode": "NULLABLE",
                "type": "STRING",
                "description": "",
                "fields": []
              }
            ]
          },
          {
            "name": "send_order_post_approval",
            "mode": "NULLABLE",
            "type": "BOOLEAN",
            "description": "",
            "fields": []
          }
        ]
      },
      {
        "name": "workflow_overrides",
        "mode": "NULLABLE",
        "type": "RECORD",
        "description": "",
        "fields": [
          {
            "name": "reference",
            "mode": "NULLABLE",
            "type": "STRING",
            "description": "",
            "fields": []
          },
          {
            "name": "eligibility",
            "mode": "NULLABLE",
            "type": "STRING",
            "description": "",
            "fields": []
          },
          {
            "name": "publication_rights",
            "mode": "NULLABLE",
            "type": "STRING",
            "description": "",
            "fields": []
          },
          {
            "name": "checkout",
            "mode": "NULLABLE",
            "type": "STRING",
            "description": "",
            "fields": []
          },
          {
            "name": "created",
            "mode": "NULLABLE",
            "type": "TIMESTAMP",
            "description": "",
            "fields": []
          }
        ]
      },
      {
        "name": "extra_id",
        "mode": "NULLABLE",
        "type": "STRING",
        "description": "",
        "fields": []
      },
      {
        "name": "discount_token",
        "mode": "NULLABLE",
        "type": "STRING",
        "description": "",
        "fields": []
      },
      {
        "name": "last_status_update",
        "mode": "NULLABLE",
        "type": "TIMESTAMP",
        "description": "",
        "fields": []
      },
      {
        "name": "reset_count",
        "mode": "NULLABLE",
        "type": "INTEGER",
        "description": "",
        "fields": []
      },
      {
        "name": "is_green_oa_opt_out_scenario",
        "mode": "NULLABLE",
        "type": "BOOLEAN",
        "description": "",
        "fields": []
      }
    ]
  }
]