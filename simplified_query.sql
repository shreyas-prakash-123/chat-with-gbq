-- Simple query to check what data exists in the contract_terms table

-- First get a count of records
SELECT COUNT(*) FROM `snproject0c0a584f.contract_terms_foundation.contract_terms`;

-- Then look at some basic information
SELECT
  c.bpid,
  c.name,
  c.displayName,
  c.contractNumber,
  c.dealType,
  c.prepay
FROM
  `snproject0c0a584f.contract_terms_foundation.contract_terms` c
LIMIT 10;

-- Check the line items structure
SELECT
  c.bpid,
  c.name,
  li.validityParameter.startDate,
  li.validityParameter.endDate,
  li.validityParameter.itemCancelled,
  ARRAY_LENGTH(li.productionArticleTypesAllowed) as num_article_types,
  ARRAY_LENGTH(li.specificLicenseTypesAllowed) as num_license_types
FROM
  `snproject0c0a584f.contract_terms_foundation.contract_terms` c,
  UNNEST(c.lineItems) as li
LIMIT 10;
