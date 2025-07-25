-- Query to find 10 different examples of contracts that are:
-- 1. Full pay (not prepay)
-- 2. Active (current date between start and end dates, not cancelled)
-- 3. 'Institutional' as Deal Type
-- 4. Allow "OriginalPaper" article types
-- 5. Allow "CC BY" license type

SELECT
  c.bpid,
  c.name,
  c.displayName,
  c.contractNumber,
  c.dealType,
  li.validityParameter.startDate as start_date,
  li.validityParameter.endDate as end_date
FROM
  `snproject0c0a584f.contract_terms_foundation.contract_terms` c,
  UNNEST(c.lineItems) as li
WHERE
  -- Full pay (not prepay)
  c.prepay = FALSE
  
  -- Active contracts (current date between start and end dates)
  AND li.validityParameter.startDate <= CURRENT_DATE()
  AND li.validityParameter.endDate >= CURRENT_DATE()
  
  -- Not cancelled
  AND (li.validityParameter.itemCancelled IS NULL OR li.validityParameter.itemCancelled = FALSE)
  
  -- Deal Type is 'Institutional'
  AND c.dealType = 'Institutional'
  
  -- Allow "OriginalPaper" article type
  AND 'OriginalPaper' IN UNNEST(li.productionArticleTypesAllowed)
  
  -- Allow "CC BY" license type
  AND 'CC BY' IN UNNEST(li.specificLicenseTypesAllowed)
  
LIMIT 10;
