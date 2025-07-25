-- Debugging queries for contract_terms table

-- 1. Basic query to check if the table has data
SELECT COUNT(*) as total_contracts
FROM `snproject0c0a584f.contract_terms_foundation.contract_terms`;

-- 2. Check how many contracts are full pay (not prepay)
SELECT COUNT(*) as full_pay_contracts
FROM `snproject0c0a584f.contract_terms_foundation.contract_terms`
WHERE prepay = FALSE;

-- 3. Check how many contracts have 'Institutional' as Deal Type
SELECT COUNT(*) as institutional_deals
FROM `snproject0c0a584f.contract_terms_foundation.contract_terms`
WHERE dealType = 'Institutional';

-- 4. Check contracts with their validity dates to see the date ranges
SELECT 
  COUNT(*) as active_contracts,
  MIN(li.validityParameter.startDate) as earliest_start_date,
  MAX(li.validityParameter.endDate) as latest_end_date,
  CURRENT_DATE() as current_date
FROM `snproject0c0a584f.contract_terms_foundation.contract_terms` c,
UNNEST(c.lineItems) as li
WHERE li.validityParameter.startDate <= CURRENT_DATE()
AND li.validityParameter.endDate >= CURRENT_DATE();

-- 5. Check if there are any contracts with 'OriginalPaper' article type
SELECT COUNT(*) as contracts_with_original_paper
FROM `snproject0c0a584f.contract_terms_foundation.contract_terms` c,
UNNEST(c.lineItems) as li
WHERE EXISTS(SELECT 1 FROM UNNEST(li.productionArticleTypesAllowed) as article_type 
             WHERE article_type = 'OriginalPaper');

-- 6. Check if there are any contracts with 'CC BY' license type
SELECT COUNT(*) as contracts_with_cc_by
FROM `snproject0c0a584f.contract_terms_foundation.contract_terms` c,
UNNEST(c.lineItems) as li
WHERE EXISTS(SELECT 1 FROM UNNEST(li.specificLicenseTypesAllowed) as license_type 
             WHERE license_type = 'CC BY');

-- 7. Now let's combine conditions one by one to see where we lose results
-- Full pay + Institutional
SELECT COUNT(*) as full_pay_institutional
FROM `snproject0c0a584f.contract_terms_foundation.contract_terms`
WHERE prepay = FALSE
AND dealType = 'Institutional';

-- Full pay + Institutional + Active
SELECT COUNT(*) as full_pay_institutional_active
FROM `snproject0c0a584f.contract_terms_foundation.contract_terms` c,
UNNEST(c.lineItems) as li
WHERE c.prepay = FALSE
AND c.dealType = 'Institutional'
AND li.validityParameter.startDate <= CURRENT_DATE()
AND li.validityParameter.endDate >= CURRENT_DATE()
AND (li.validityParameter.itemCancelled IS NULL OR li.validityParameter.itemCancelled = FALSE);

-- 8. Check what article types and license types actually exist in the data
SELECT DISTINCT article_type
FROM `snproject0c0a584f.contract_terms_foundation.contract_terms` c,
UNNEST(c.lineItems) as li,
UNNEST(li.productionArticleTypesAllowed) as article_type
LIMIT 20;

SELECT DISTINCT license_type
FROM `snproject0c0a584f.contract_terms_foundation.contract_terms` c,
UNNEST(c.lineItems) as li,
UNNEST(li.specificLicenseTypesAllowed) as license_type
LIMIT 20;

-- 9. Check if the specificLicenseTypesAllowed field is populated
SELECT COUNT(*) as contracts_with_license_types
FROM `snproject0c0a584f.contract_terms_foundation.contract_terms` c,
UNNEST(c.lineItems) as li
WHERE li.specificLicenseTypesAllowed IS NOT NULL
AND ARRAY_LENGTH(li.specificLicenseTypesAllowed) > 0;

-- 10. Check if the productionArticleTypesAllowed field is populated
SELECT COUNT(*) as contracts_with_article_types
FROM `snproject0c0a584f.contract_terms_foundation.contract_terms` c,
UNNEST(c.lineItems) as li
WHERE li.productionArticleTypesAllowed IS NOT NULL
AND ARRAY_LENGTH(li.productionArticleTypesAllowed) > 0;
