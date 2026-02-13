-- =====================================================
-- Go to dune website and make 5 projects with queries from below
-- Use dune api to download each list
-- The limit for downloading is 32k lines, change your 
-- curl command accordingly
-- =====================================================

-- =====================================================
-- TIER 1
-- Complete list of all addresses with >1200 SOL
-- Ordered by balance descending
-- =====================================================
SELECT 
  address,
  sol_balance,
  sol_balance * 126 AS sol_balance_usd
FROM solana_utils.latest_balances
WHERE sol_balance > 1200
ORDER BY sol_balance DESC
LIMIT 32000;


-- =====================================================
-- TIER 2
-- Complete list of all addresses with 600-1200 SOL
-- Ordered by balance descending
-- =====================================================
SELECT 
  address,
  sol_balance,
  sol_balance * 126 AS sol_balance_usd
FROM solana_utils.latest_balances
WHERE sol_balance BETWEEN 600 AND 1200
ORDER BY sol_balance DESC
LIMIT 32000;


-- =====================================================
-- TIER 3
-- Complete list of all addresses with 300-600 SOL
-- Ordered by balance descending
-- =====================================================
SELECT 
  address,
  sol_balance,
  sol_balance * 126 AS sol_balance_usd
FROM solana_utils.latest_balances
WHERE sol_balance BETWEEN 300 AND 600
ORDER BY sol_balance DESC
LIMIT 32000;


-- =====================================================
-- TIER 4
-- Complete list of all addresses with 200-300 SOL
-- Ordered by balance descending
-- =====================================================
SELECT 
  address,
  sol_balance,
  sol_balance * 126 AS sol_balance_usd
FROM solana_utils.latest_balances
WHERE sol_balance BETWEEN 200 AND 300
ORDER BY sol_balance DESC
LIMIT 32000;


-- =====================================================
-- TIER 5: SMALL HOLDERS (100-200 SOL)
-- RANDOM SAMPLING - need multiple runs to collect all addresses
-- you could change limit to 100000 to see how many addresses there currently,
-- but downloading limit still will remain 32k
-- press RUN button each time for fresh batch then download it and merge until
-- you stop getting new results
-- =====================================================
SELECT 
  address,
  sol_balance,
  sol_balance * 126 AS sol_balance_usd
FROM solana_utils.latest_balances
WHERE sol_balance BETWEEN 100 AND 200
ORDER BY RANDOM()
LIMIT 32000;
