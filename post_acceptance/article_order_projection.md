project: snproject0c0a584f
dataset: oasis_data_private
table: article_order_projection

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
        "name": "article_order_id",
        "mode": "NULLABLE",
        "type": "STRING",
        "description": "",
        "fields": []
      },
      {
        "name": "article_order",
        "mode": "NULLABLE",
        "type": "RECORD",
        "description": "",
        "fields": [
          {
            "name": "contract_number",
            "mode": "NULLABLE",
            "type": "INTEGER",
            "description": "",
            "fields": []
          },
          {
            "name": "bpid",
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
            "name": "journal_id",
            "mode": "NULLABLE",
            "type": "INTEGER",
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
            "name": "submission_date",
            "mode": "NULLABLE",
            "type": "DATE",
            "description": "",
            "fields": []
          },
          {
            "name": "manuscript_title",
            "mode": "NULLABLE",
            "type": "STRING",
            "description": "",
            "fields": []
          },
          {
            "name": "article_type",
            "mode": "NULLABLE",
            "type": "STRING",
            "description": "",
            "fields": []
          },
          {
            "name": "prs_id",
            "mode": "NULLABLE",
            "type": "STRING",
            "description": "",
            "fields": []
          },
          {
            "name": "pricing_information",
            "mode": "NULLABLE",
            "type": "RECORD",
            "description": "",
            "fields": [
              {
                "name": "amount_charged",
                "mode": "NULLABLE",
                "type": "FLOAT",
                "description": "",
                "fields": []
              },
              {
                "name": "currency",
                "mode": "NULLABLE",
                "type": "STRING",
                "description": "",
                "fields": []
              },
              {
                "name": "discount_amount",
                "mode": "NULLABLE",
                "type": "FLOAT",
                "description": "",
                "fields": []
              },
              {
                "name": "full_apc",
                "mode": "NULLABLE",
                "type": "FLOAT",
                "description": "",
                "fields": []
              },
              {
                "name": "tax_amount",
                "mode": "NULLABLE",
                "type": "FLOAT",
                "description": "",
                "fields": []
              },
              {
                "name": "admin_fee",
                "mode": "NULLABLE",
                "type": "FLOAT",
                "description": "",
                "fields": []
              },
              {
                "name": "article_discount",
                "mode": "NULLABLE",
                "type": "FLOAT",
                "description": "",
                "fields": []
              }
            ]
          },
          {
            "name": "is_credit_card",
            "mode": "NULLABLE",
            "type": "BOOLEAN",
            "description": "",
            "fields": []
          },
          {
            "name": "cancel_count",
            "mode": "NULLABLE",
            "type": "INTEGER",
            "description": "",
            "fields": []
          },
          {
            "name": "payer",
            "mode": "NULLABLE",
            "type": "INTEGER",
            "description": "",
            "fields": []
          },
          {
            "name": "purchaseOrderNumber",
            "mode": "NULLABLE",
            "type": "STRING",
            "description": "",
            "fields": []
          },
          {
            "name": "isContentWaiver",
            "mode": "NULLABLE",
            "type": "BOOLEAN",
            "description": "",
            "fields": []
          },
          {
            "name": "socopay_order_details",
            "mode": "NULLABLE",
            "type": "RECORD",
            "description": "",
            "fields": [
              {
                "name": "source_order_number",
                "mode": "NULLABLE",
                "type": "STRING",
                "description": "",
                "fields": []
              },
              {
                "name": "order_number",
                "mode": "NULLABLE",
                "type": "STRING",
                "description": "",
                "fields": []
              },
              {
                "name": "order_creating_date",
                "mode": "NULLABLE",
                "type": "STRING",
                "description": "",
                "fields": []
              },
              {
                "name": "original_rmb_price",
                "mode": "NULLABLE",
                "type": "STRING",
                "description": "",
                "fields": []
              },
              {
                "name": "final_rmb_price",
                "mode": "NULLABLE",
                "type": "STRING",
                "description": "",
                "fields": []
              },
              {
                "name": "rmb_commission",
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
        "name": "messages_to_send",
        "mode": "REPEATED",
        "type": "RECORD",
        "description": "",
        "fields": [
          {
            "name": "type",
            "mode": "NULLABLE",
            "type": "STRING",
            "description": "",
            "fields": []
          }
        ]
      },
      {
        "name": "message_types_to_send_at_publication",
        "mode": "REPEATED",
        "type": "RECORD",
        "description": "",
        "fields": [
          {
            "name": "type",
            "mode": "NULLABLE",
            "type": "STRING",
            "description": "",
            "fields": []
          }
        ]
      },
      {
        "name": "payment_authorisation",
        "mode": "NULLABLE",
        "type": "RECORD",
        "description": "",
        "fields": [
          {
            "name": "order_code",
            "mode": "NULLABLE",
            "type": "STRING",
            "description": "",
            "fields": []
          },
          {
            "name": "authorisation_id",
            "mode": "NULLABLE",
            "type": "STRING",
            "description": "",
            "fields": []
          },
          {
            "name": "credit_card_type",
            "mode": "NULLABLE",
            "type": "STRING",
            "description": "",
            "fields": []
          },
          {
            "name": "merchant_id",
            "mode": "NULLABLE",
            "type": "STRING",
            "description": "",
            "fields": []
          }
        ]
      },
      {
        "name": "publication_metadata",
        "mode": "NULLABLE",
        "type": "RECORD",
        "description": "",
        "fields": [
          {
            "name": "publication_date",
            "mode": "NULLABLE",
            "type": "DATE",
            "description": "",
            "fields": []
          },
          {
            "name": "doi",
            "mode": "NULLABLE",
            "type": "STRING",
            "description": "",
            "fields": []
          }
        ]
      },
      {
        "name": "billing_details",
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
            "name": "organisation",
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
            "name": "department_email",
            "mode": "NULLABLE",
            "type": "STRING",
            "description": "",
            "fields": []
          },
          {
            "name": "sub_department",
            "mode": "NULLABLE",
            "type": "STRING",
            "description": "",
            "fields": []
          },
          {
            "name": "vat_registration_number",
            "mode": "NULLABLE",
            "type": "STRING",
            "description": "",
            "fields": []
          },
          {
            "name": "purchase_order_number",
            "mode": "NULLABLE",
            "type": "STRING",
            "description": "",
            "fields": []
          },
          {
            "name": "contact_details",
            "mode": "NULLABLE",
            "type": "RECORD",
            "description": "",
            "fields": [
              {
                "name": "phone",
                "mode": "NULLABLE",
                "type": "STRING",
                "description": "",
                "fields": []
              },
              {
                "name": "street",
                "mode": "NULLABLE",
                "type": "STRING",
                "description": "",
                "fields": []
              },
              {
                "name": "house_no",
                "mode": "NULLABLE",
                "type": "STRING",
                "description": "",
                "fields": []
              },
              {
                "name": "city",
                "mode": "NULLABLE",
                "type": "STRING",
                "description": "",
                "fields": []
              },
              {
                "name": "postal_code",
                "mode": "NULLABLE",
                "type": "STRING",
                "description": "",
                "fields": []
              },
              {
                "name": "region",
                "mode": "NULLABLE",
                "type": "STRING",
                "description": "",
                "fields": []
              },
              {
                "name": "country",
                "mode": "NULLABLE",
                "type": "STRING",
                "description": "",
                "fields": []
              },
              {
                "name": "email_address",
                "mode": "NULLABLE",
                "type": "STRING",
                "description": "",
                "fields": []
              }
            ]
          },
          {
            "name": "first_name",
            "mode": "NULLABLE",
            "type": "STRING",
            "description": "",
            "fields": []
          },
          {
            "name": "last_name",
            "mode": "NULLABLE",
            "type": "STRING",
            "description": "",
            "fields": []
          },
          {
            "name": "contactDetails",
            "mode": "NULLABLE",
            "type": "RECORD",
            "description": "",
            "fields": [
              {
                "name": "phone",
                "mode": "NULLABLE",
                "type": "STRING",
                "description": "",
                "fields": []
              },
              {
                "name": "street",
                "mode": "NULLABLE",
                "type": "STRING",
                "description": "",
                "fields": []
              },
              {
                "name": "house_no",
                "mode": "NULLABLE",
                "type": "STRING",
                "description": "",
                "fields": []
              },
              {
                "name": "city",
                "mode": "NULLABLE",
                "type": "STRING",
                "description": "",
                "fields": []
              },
              {
                "name": "postal_code",
                "mode": "NULLABLE",
                "type": "STRING",
                "description": "",
                "fields": []
              },
              {
                "name": "region",
                "mode": "NULLABLE",
                "type": "STRING",
                "description": "",
                "fields": []
              },
              {
                "name": "country",
                "mode": "NULLABLE",
                "type": "STRING",
                "description": "",
                "fields": []
              },
              {
                "name": "email_address",
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
        "name": "order_code",
        "mode": "NULLABLE",
        "type": "STRING",
        "description": "",
        "fields": []
      },
      {
        "name": "can_create",
        "mode": "NULLABLE",
        "type": "BOOLEAN",
        "description": "",
        "fields": []
      },
      {
        "name": "sapAgreementType",
        "mode": "NULLABLE",
        "type": "STRING",
        "description": "",
        "fields": []
      }
    ]
  }
]





