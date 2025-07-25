project: snproject0c0a584f
dataset: reconciliation_foundation
table: reconciliation_report

schema:

[
  {
    "name": "uniqueness_differentiator",
    "mode": "",
    "type": "STRING",
    "description": "Distinguishes rows with the same article or workflow ID, based on the DOI. Please note that this field does not contain unique values as, at present, it represents the DOI for the article. For a uniqueness identifier users will have to concatenate DOI with wokflow_id",
    "fields": []
  },
  {
    "name": "is_aborted",
    "mode": "",
    "type": "BOOLEAN",
    "description": "Indicates if the workflow from OASiS was aborted.",
    "fields": []
  },
  {
    "name": "reset_count",
    "mode": "",
    "type": "INTEGER",
    "description": "Number of times the workflow has been reset.",
    "fields": []
  },
  {
    "name": "workflow_id",
    "mode": "",
    "type": "STRING",
    "description": "Unique identifier of the OASiS workflow.",
    "fields": []
  },
  {
    "name": "corresponding_author_given_name",
    "mode": "",
    "type": "STRING",
    "description": "First name of the corresponding author.",
    "fields": []
  },
  {
    "name": "corresponding_author_family_name",
    "mode": "",
    "type": "STRING",
    "description": "Last name of the corresponding author.",
    "fields": []
  },
  {
    "name": "article_manuscript_id",
    "mode": "",
    "type": "STRING",
    "description": "Manuscript ID associated with the article.",
    "fields": []
  },
  {
    "name": "article_submission_date",
    "mode": "",
    "type": "DATE",
    "description": "Date when the article was submitted.",
    "fields": []
  },
  {
    "name": "article_prs_article_type",
    "mode": "",
    "type": "STRING",
    "description": "Internal article type used during production.",
    "fields": []
  },
  {
    "name": "workflow_created",
    "mode": "",
    "type": "TIMESTAMP",
    "description": "Timestamp when the workflow was created.",
    "fields": []
  },
  {
    "name": "workflow_author_contacted",
    "mode": "",
    "type": "TIMESTAMP",
    "description": "Timestamp when the author was first contacted as part of the workflow process from OASiS.",
    "fields": []
  },
  {
    "name": "workflow_returned_to_production_at",
    "mode": "",
    "type": "TIMESTAMP",
    "description": "Timestamp when the article returned to the production phase for publication upon completion of all relevant OASiS phases.",
    "fields": []
  },
  {
    "name": "workflow_legally_stored_at",
    "mode": "",
    "type": "TIMESTAMP",
    "description": "Timestamp indicating when the workflow was archived for legal compliance.",
    "fields": []
  },
  {
    "name": "workflow_eligibility_decision_type",
    "mode": "",
    "type": "STRING",
    "description": "Decision related to the type of publishing by the author, i.e. SubscriptionChosen, OAInDealChosen, OAOutsideDealChosen",
    "fields": []
  },
  {
    "name": "workflow_status",
    "mode": "",
    "type": "STRING",
    "description": "Current status of the article in the OASiS workflow. This field reflects where the article is in the approval, eligibility, or production process. The values are system-generated and reflect different states in the lifecycle of the workflow.",
    "fields": []
  },
  {
    "name": "workflow_intervention_reason",
    "mode": "",
    "type": "STRING",
    "description": "Reason provided for interrupting the automated workflow.",
    "fields": []
  },
  {
    "name": "workflow_intervention_date",
    "mode": "",
    "type": "TIMESTAMP",
    "description": "Date and time when manual intervention occurred in the workflow.",
    "fields": []
  },
  {
    "name": "eligibility_selection_user_text",
    "mode": "",
    "type": "STRING",
    "description": "User-provided free text with the name of their institutional affiliation for the article, set during eligibility by the author.",
    "fields": []
  },
  {
    "name": "eligibility_selection_id",
    "mode": "",
    "type": "STRING",
    "description": "Author selection from the drop-down in OASiS of the institutional affiliation.",
    "fields": []
  },
  {
    "name": "eligibility_selection_institution_name",
    "mode": "",
    "type": "STRING",
    "description": "Name of the selected institution in the eligibility process.",
    "fields": []
  },
  {
    "name": "eligibility_approval_comment",
    "mode": "",
    "type": "STRING",
    "description": "Free-text comment from the relevant librarian when approving an eligibility case.",
    "fields": []
  },
  {
    "name": "eligibility_rejection_reason",
    "mode": "",
    "type": "STRING",
    "description": "Preset reason selected when an article was rejected during eligibility review by the relevant librarian.",
    "fields": []
  },
  {
    "name": "eligibility_rejection_comment",
    "mode": "",
    "type": "STRING",
    "description": "Optional free-text comment explaining why an article was rejected by the relevant librarian.",
    "fields": []
  },
  {
    "name": "eligibility_forward_comment",
    "mode": "",
    "type": "STRING",
    "description": "Free-text comment explaining why the eligibility case was forwarded to another institution by the relevant librarian.",
    "fields": []
  },
  {
    "name": "eligibility_opt_out_reason",
    "mode": "",
    "type": "STRING",
    "description": "Explanation provided when author opted out of the eligibility process.",
    "fields": []
  },
  {
    "name": "eligibility_criteria_collected",
    "mode": "",
    "type": "TIMESTAMP",
    "description": "Timestamp when eligibility criteria were collected for the article by OASiS.",
    "fields": []
  },
  {
    "name": "eligibility_country_code",
    "mode": "",
    "type": "STRING",
    "description": "ISO-3166 Country code associated with the eligible institution for the author.",
    "fields": []
  },
  {
    "name": "eligibility_discount_token",
    "mode": "",
    "type": "STRING",
    "description": "Token used to track specific discount entitlement.",
    "fields": []
  },
  {
    "name": "rights_requested",
    "mode": "",
    "type": "TIMESTAMP",
    "description": "Timestamp when rights clearance was initiated for the article.",
    "fields": []
  },
  {
    "name": "rights_completed",
    "mode": "",
    "type": "TIMESTAMP",
    "description": "Timestamp when rights clearance was initiated for the article.",
    "fields": []
  },
  {
    "name": "discount_decision_date",
    "mode": "",
    "type": "TIMESTAMP",
    "description": "Date when a decision on discount application was made.",
    "fields": []
  },
  {
    "name": "discount_value",
    "mode": "",
    "type": "FLOAT",
    "description": "Numeric value of the discount applied.",
    "fields": []
  },
  {
    "name": "discount_category",
    "mode": "",
    "type": "STRING",
    "description": "Category label describing type of discount (for example full waiver, capped, institutional deal).",
    "fields": []
  },
  {
    "name": "discount_application_date",
    "mode": "",
    "type": "TIMESTAMP",
    "description": "Date when the discount application was submitted or logged.",
    "fields": []
  },
  {
    "name": "approved_by_id",
    "mode": "",
    "type": "STRING",
    "description": "User ID of the individual who approved the workflow or funding decision.",
    "fields": []
  },
  {
    "name": "approval_corresponding_author_name",
    "mode": "",
    "type": "STRING",
    "description": "Name of the corresponding author used at the approval step.",
    "fields": []
  },
  {
    "name": "approving_institution_name",
    "mode": "",
    "type": "STRING",
    "description": "Institution that formally approved the articles eligibility or funding.",
    "fields": []
  },
  {
    "name": "approval_umbrella_bpid",
    "mode": "",
    "type": "INTEGER",
    "description": "Internal Business Pertner ID (BPID) for the umbrella agreement under which the article was approved for funding by the relevant librarian.",
    "fields": []
  },
  {
    "name": "approval_umbrella_contract_number",
    "mode": "",
    "type": "INTEGER",
    "description": "Contract number corresponding to the umbrella deal.",
    "fields": []
  },
  {
    "name": "approval_forwarded_time",
    "mode": "",
    "type": "TIMESTAMP",
    "description": "Timestamp when the article was forwarded to another institution for approval.",
    "fields": []
  },
  {
    "name": "approving_institution_contract_number",
    "mode": "",
    "type": "INTEGER",
    "description": "Specific contract number used by the institution that approved the article.",
    "fields": []
  },
  {
    "name": "approval_deal_name",
    "mode": "",
    "type": "STRING",
    "description": "Human-readable name of the deal or agreement under which approval took place; please note that this is a free-text field, typically comprising the two letter country code, followed by the acronym of the consortia or institution; if the deal relates to fully sponsored journals, it also includes the journal ID, and the OA Agreement type (e.g. Fully OA).",
    "fields": []
  },
  {
    "name": "approval_contract_publishing_model",
    "mode": "",
    "type": "STRING",
    "description": "Publishing model specified in the approval contract (for example, Hybrid, Fully OA).",
    "fields": []
  },
  {
    "name": "approval_email_affiliation_name",
    "mode": "",
    "type": "STRING",
    "description": "Affiliation extracted from author email domain during approval.",
    "fields": []
  },
  {
    "name": "approval_ip_affiliation_name",
    "mode": "",
    "type": "STRING",
    "description": "Affiliation inferred from IP lookup or IP-based match, using IP ranges from SN's Identity team.",
    "fields": []
  },
  {
    "name": "approval_initial_institution_sent_to_bpid",
    "mode": "",
    "type": "INTEGER",
    "description": "BPID of the institution first contacted for approval.",
    "fields": []
  },
  {
    "name": "approval_initial_institution_sent_to_name",
    "mode": "",
    "type": "STRING",
    "description": "Name of the institution first contacted for approval.",
    "fields": []
  },
  {
    "name": "approval_deal_type",
    "mode": "",
    "type": "STRING",
    "description": "Type of agreement used for approval (i.e. Journal Specific or Institutional).",
    "fields": []
  },
  {
    "name": "approval_agreement_type",
    "mode": "",
    "type": "STRING",
    "description": "Further categorisation of the deal (i.e. Fully Sponsored, Multi Pay, Free Contract, Full Pay, Supporter).",
    "fields": []
  },
  {
    "name": "approval_author_comments",
    "mode": "",
    "type": "STRING",
    "description": "Any comments from the author provided during the approval process.",
    "fields": []
  },
  {
    "name": "approvals_responsible_institution",
    "mode": "",
    "type": "INTEGER",
    "description": "Institution responsible for approval verification in ASS.",
    "fields": []
  },
  {
    "name": "external_insertion_reason",
    "mode": "",
    "type": "STRING",
    "description": "Explanation for manually inserting this record into the system.",
    "fields": []
  },
  {
    "name": "DOI",
    "mode": "",
    "type": "STRING",
    "description": "Digital Object Identifier, this is the main public-facing identifier of the article.",
    "fields": []
  },
  {
    "name": "article_title",
    "mode": "",
    "type": "STRING",
    "description": "Title of the article submitted for publication.",
    "fields": []
  },
  {
    "name": "journal_id",
    "mode": "",
    "type": "INTEGER",
    "description": "Internal numeric ID of the journal.",
    "fields": []
  },
  {
    "name": "email_affiliation_BPID",
    "mode": "",
    "type": "INTEGER",
    "description": "BPID matched based on the email domain of the corresponding author.",
    "fields": []
  },
  {
    "name": "ip_affiliation_BPID",
    "mode": "",
    "type": "INTEGER",
    "description": "BPID matched based on the IP address used by the author.",
    "fields": []
  },
  {
    "name": "approval_flow_started",
    "mode": "",
    "type": "TIMESTAMP",
    "description": "Timestamp when the approval flow process was triggered.",
    "fields": []
  },
  {
    "name": "author_email",
    "mode": "",
    "type": "STRING",
    "description": "Email address of the corresponding author.",
    "fields": []
  },
  {
    "name": "licence_type",
    "mode": "",
    "type": "STRING",
    "description": "Type of licence selected for the publication (for example CC BY, CC BY-NC).",
    "fields": []
  },
  {
    "name": "journal_type",
    "mode": "",
    "type": "STRING",
    "description": "Categorical type of the journal (for example Hybrid, Fully OA). Please note Subscription journals are out-of-scope for the OASiS workflows.",
    "fields": []
  },
  {
    "name": "approving_institution",
    "mode": "",
    "type": "INTEGER",
    "description": "Internal BPID of the institution that granted final approval.",
    "fields": []
  },
  {
    "name": "approver_email",
    "mode": "",
    "type": "STRING",
    "description": "Email address of the person who approved the submission.",
    "fields": []
  },
  {
    "name": "article_type",
    "mode": "",
    "type": "STRING",
    "description": "General category of the article (for example Research, Review, Letter).",
    "fields": []
  },
  {
    "name": "publication_date_1",
    "mode": "",
    "type": "DATE",
    "description": "Date the article was first made publicly available by the publisher.",
    "fields": []
  },
  {
    "name": "realised_date_1",
    "mode": "",
    "type": "DATE",
    "description": "Date when the APC revenue was officially accounted for.",
    "fields": []
  },
  {
    "name": "approved",
    "mode": "",
    "type": "TIMESTAMP",
    "description": "Timestamp when the approval of elligibility was granted.",
    "fields": []
  },
  {
    "name": "rejected",
    "mode": "",
    "type": "TIMESTAMP",
    "description": "Timestamp when the article was rejected for elligibility.",
    "fields": []
  },
  {
    "name": "author_opt_out",
    "mode": "",
    "type": "STRING",
    "description": "Indicates whether the author opted out of funding or Open Access.",
    "fields": []
  },
  {
    "name": "editorial_acceptance_date",
    "mode": "",
    "type": "DATE",
    "description": "Date when the article was accepted through the editorial process.",
    "fields": []
  },
  {
    "name": "payment_method",
    "mode": "",
    "type": "STRING",
    "description": "Method used to pay the article processing charge (for example INVOICE, CREDIT CARD, SOCOPAY).",
    "fields": []
  },
  {
    "name": "non_csp_apc_in_charged_currency",
    "mode": "",
    "type": "FLOAT",
    "description": "APC value (not covered by central service provider) in the original charged currency.",
    "fields": []
  },
  {
    "name": "list_price_apc_in_charged_currency",
    "mode": "",
    "type": "FLOAT",
    "description": "Full list price APC before discounts or caps, in the original charged currency.",
    "fields": []
  },
  {
    "name": "capped_list_price_apc_in_charged_currency",
    "mode": "",
    "type": "FLOAT",
    "description": "List price APC after applying price caps, if any, in the original currency.",
    "fields": []
  },
  {
    "name": "apc_currency",
    "mode": "",
    "type": "STRING",
    "description": "Currency in which the APC (article processing charge), i.e. GBP, EUR, USD, JPY.",
    "fields": []
  },
  {
    "name": "institutional_discount_contract_discount",
    "mode": "",
    "type": "FLOAT",
    "description": "Discount amount defined in the institution’s contract, applied to the APC.",
    "fields": []
  },
  {
    "name": "customer_specific_apc",
    "mode": "",
    "type": "FLOAT",
    "description": "Final APC amount agreed specifically with the customer or author.",
    "fields": []
  },
  {
    "name": "institutional_share",
    "mode": "",
    "type": "FLOAT",
    "description": "Portion of APC covered by the institution or its agreement.",
    "fields": []
  },
  {
    "name": "author_share",
    "mode": "",
    "type": "FLOAT",
    "description": "Portion of APC paid directly by the author.",
    "fields": []
  },
  {
    "name": "legacy_waiver_category",
    "mode": "",
    "type": "STRING",
    "description": "Label describing waiver granted under legacy programmes, i.e. DISCOUNT_DISCRETIONARY, WAIVER_COUNTRY, WAIVER_INSTITUTION, WAIVER_DISCRETIONARY, DISCOUNT_PROMPTREVIEWER, WAIVER_JOURNALPROMO.",
    "fields": []
  },
  {
    "name": "institution_article_discount",
    "mode": "",
    "type": "FLOAT",
    "description": "Discount applied to the article based on the institution’s entitlement.",
    "fields": []
  },
  {
    "name": "author_article_discount",
    "mode": "",
    "type": "FLOAT",
    "description": "Discount granted directly to the author (for example for financial hardship).",
    "fields": []
  },
  {
    "name": "verification_type",
    "mode": "",
    "type": "STRING",
    "description": "Method used to verify the article’s eligibility, i.e. Manual, Automatic.",
    "fields": []
  },
  {
    "name": "inserted",
    "mode": "",
    "type": "STRING",
    "description": "System-generated timestamp when this record was inserted into the database.",
    "fields": []
  },
  {
    "name": "deal_structure",
    "mode": "",
    "type": "STRING",
    "description": "Description of how the deal is organised, i.e. Consortia, Standalone.",
    "fields": []
  },
  {
    "name": "approval_status",
    "mode": "",
    "type": "STRING",
    "description": "Final status of the approval workflow, i.e. OPEN, REJECTED, ABORTED, APPROVED.",
    "fields": []
  },
  {
    "name": "publication_date",
    "mode": "",
    "type": "DATE",
    "description": "Actual publication date of the article.",
    "fields": []
  },
  {
    "name": "currency_exchanged",
    "mode": "",
    "type": "STRING",
    "description": "Currency into which the charged APC was converted.",
    "fields": []
  },
  {
    "name": "amount_charged_exchanged",
    "mode": "",
    "type": "FLOAT",
    "description": "Amount charged after applying currency exchange rates.",
    "fields": []
  },
  {
    "name": "approval_request_time",
    "mode": "",
    "type": "TIMESTAMP",
    "description": "Time when the approval request of funding was initially created.",
    "fields": []
  },
  {
    "name": "eligibility_approval_requested",
    "mode": "",
    "type": "TIMESTAMP",
    "description": "Timestamp when eligibility approval was formally requested.",
    "fields": []
  },
  {
    "name": "eligibility_auto_approved",
    "mode": "",
    "type": "BOOLEAN",
    "description": "Boolean flag indicating if eligibility was automatically approved without review.",
    "fields": []
  },
  {
    "name": "eligibility_journal_publishing_model",
    "mode": "",
    "type": "STRING",
    "description": "Publishing model used for eligibility calculation, i.e. Subscription, FullyOpenAccess, Hybrid.",
    "fields": []
  },
  {
    "name": "approval_journal_type",
    "mode": "",
    "type": "STRING",
    "description": "Journal type used at the point of approval decision, i.e. Hybrid or FullyOpenAccess.",
    "fields": []
  },
  {
    "name": "eligibility_ip_match_bpid",
    "mode": "",
    "type": "INTEGER",
    "description": "BPID from IP match used during eligibility check.",
    "fields": []
  },
  {
    "name": "eligibility_ip_match_root_institution_bpid",
    "mode": "",
    "type": "INTEGER",
    "description": "Root institution BPID from IP match in eligibility check.",
    "fields": []
  },
  {
    "name": "eligibility_email_match_bpid",
    "mode": "",
    "type": "INTEGER",
    "description": "BPID matched using email domain of corresponding author during eligibility check.",
    "fields": []
  },
  {
    "name": "eligibility_email_match_root_institution_bpid",
    "mode": "",
    "type": "INTEGER",
    "description": "Root institution BPID from email domain match.",
    "fields": []
  },
  {
    "name": "eligibility_selection_bpid",
    "mode": "",
    "type": "INTEGER",
    "description": "BPID of the selected institution from the dropdown selection by the author for eligibility match.",
    "fields": []
  },
  {
    "name": "eligibility_selection_root_institution_bpid",
    "mode": "",
    "type": "INTEGER",
    "description": "Root institution BPID of selected eligibility match.",
    "fields": []
  },
  {
    "name": "eligibility_decision_type",
    "mode": "",
    "type": "STRING",
    "description": "Final eligibility decision status, i.e. OAOutsideDealChosen, OAInDealChosen, SubscriptionChosen.",
    "fields": []
  },
  {
    "name": "eligibility_decision_received",
    "mode": "",
    "type": "TIMESTAMP",
    "description": "Timestamp when the eligibility decision was received or recorded.",
    "fields": []
  },
  {
    "name": "eligibility_order_publication_date",
    "mode": "",
    "type": "DATE",
    "description": "Publication date used to determine eligibility in contract logic.",
    "fields": []
  },
  {
    "name": "extras_publication_date",
    "mode": "",
    "type": "DATE",
    "description": "Additional or corrected publication date (for example from later updates).",
    "fields": []
  },
  {
    "name": "journal_title",
    "mode": "",
    "type": "STRING",
    "description": "Full title of the journal where the article was published.",
    "fields": []
  },
  {
    "name": "journal_eissn",
    "mode": "",
    "type": "STRING",
    "description": "Electronic ISSN of the journal where the article was published.",
    "fields": []
  },
  {
    "name": "affiliation_country",
    "mode": "",
    "type": "STRING",
    "description": "Name of the country of the institution affiliated with the author.",
    "fields": []
  },
  {
    "name": "billing_country",
    "mode": "",
    "type": "STRING",
    "description": "ISO-3166 two-letter country code where the invoice or billing was registered.",
    "fields": []
  },
  {
    "name": "discount_internal_reason",
    "mode": "",
    "type": "STRING",
    "description": "System-generated code explaining why a discount was applied internally.",
    "fields": []
  }
]