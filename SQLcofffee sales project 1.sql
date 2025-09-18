SELECT 
    '2024' AS year,
    date,
    datetime,
    cash_type,
    money,
    coffee_name
FROM `coffee sales`.`coffee sales2024`

UNION ALL

SELECT 
    '2025' AS year,
    date,
    datetime,
    cash_type,
    money,
    coffee_name
FROM `coffee sales`.`coffee sales 2025`;
#
SELECT
  '2024' AS year,
  COUNT(*) AS total_sales,
  SUM(money) AS total_revenue
FROM `coffee sales`.`coffee sales2024`
UNION ALL
SELECT
  '2025' AS year,
  COUNT(*) AS total_sales,
  SUM(money) AS total_revenue
FROM `coffee sales`.`coffee sales 2025`;
#
SELECT
  cash_type,
  '2024' AS year,
  COUNT(*) AS sales_count,
  SUM(money) AS total_revenue
FROM `coffee sales`.`coffee sales2024`
GROUP BY cash_type

UNION ALL

SELECT
  cash_type,
  '2025' AS year,
  COUNT(*) AS sales_count,
  SUM(money) AS total_revenue
FROM `coffee sales`.`coffee sales 2025`
GROUP BY cash_type;

