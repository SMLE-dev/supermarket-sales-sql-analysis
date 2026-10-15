-- SUPERMARKET SALES ANALYSIS
-- Project: Supermarket Sales Analysis
-- Database: supermarket_analysis.db
-- Tool: SQLite

-- 1. Check the total number of records
SELECT COUNT(*) AS total_transactions
FROM supermarket;



-- 2. Calculate total sales
SELECT ROUND(SUM(CAST("Total" AS REAL)), 2) AS total_sales
FROM supermarket;

-- 3. Calculate average transaction value
SELECT ROUND(AVG(CAST("Total" AS REAL)), 2) AS average_sale
FROM supermarket;

-- 4. Find the highest transaction value
SELECT MAX(CAST("Total" AS REAL)) AS highest_sale
FROM supermarket;

-- 5. Find the lowest transaction value
SELECT MIN(CAST("Total" AS REAL)) AS lowest_sale
FROM supermarket;

-- 6. Compare total sales by branch
SELECT
    Branch,
    COUNT(*) AS transactions,
    ROUND(SUM(CAST("Total" AS REAL)), 2) AS total_sales
FROM supermarket
GROUP BY Branch
ORDER BY total_sales DESC;

-- 7. Compare sales by product line
SELECT
    "Product line",
    COUNT(*) AS transactions,
    ROUND(SUM(CAST("Total" AS REAL)), 2) AS total_sales
FROM supermarket
GROUP BY "Product line"
ORDER BY total_sales DESC;

-- 8. Analyse payment methods
SELECT
    Payment,
    COUNT(*) AS transactions,
    ROUND(SUM(CAST("Total" AS REAL)), 2) AS total_sales
FROM supermarket
GROUP BY Payment
ORDER BY transactions DESC;

-- 9. Compare member and normal customers
SELECT
    "Customer type",
    COUNT(*) AS transactions,
    ROUND(SUM(CAST("Total" AS REAL)), 2) AS total_sales,
    ROUND(AVG(CAST("Total" AS REAL)), 2) AS average_sale
FROM supermarket
GROUP BY "Customer type"
ORDER BY total_sales DESC;

-- 10. Analyse sales by gender
SELECT
    Gender,
    COUNT(*) AS transactions,
    ROUND(SUM(CAST("Total" AS REAL)), 2) AS total_sales,
    ROUND(AVG(CAST("Total" AS REAL)), 2) AS average_sale
FROM supermarket
GROUP BY Gender
ORDER BY total_sales DESC;


-- 11. Analyse monthly sales
SELECT
    CASE
        WHEN INSTR(Date, '/') = 2
        THEN '0' || SUBSTR(Date, 1, 1)
        ELSE SUBSTR(Date, 1, 2)
    END AS month,
    COUNT(*) AS transactions,
    ROUND(SUM(CAST("Total" AS REAL)), 2) AS total_sales
FROM supermarket
GROUP BY month
ORDER BY month;

-- 12. Compare branch performance by month
SELECT
    CASE
        WHEN INSTR(Date, '/') = 2
        THEN '0' || SUBSTR(Date, 1, 1)
        ELSE SUBSTR(Date, 1, 2)
    END AS month,
    Branch,
    COUNT(*) AS transactions,
    ROUND(SUM(CAST("Total" AS REAL)), 2) AS total_sales
FROM supermarket
GROUP BY month, Branch
ORDER BY month, total_sales DESC;

-- 13. Analyse product-line performance
SELECT
    "Product line",
    COUNT(*) AS transactions,
    SUM(Quantity) AS units_sold,
    ROUND(SUM(CAST("Total" AS REAL)), 2) AS total_sales,
    ROUND(AVG(CAST("Total" AS REAL)), 2) AS average_sale
FROM supermarket
GROUP BY "Product line"
ORDER BY total_sales DESC;


-- 14. Analyse payment-method performance
SELECT
    Payment,
    COUNT(*) AS transactions,
    ROUND(SUM(CAST("Total" AS REAL)), 2) AS total_sales,
    ROUND(AVG(CAST("Total" AS REAL)), 2) AS average_sale
FROM supermarket
GROUP BY Payment
ORDER BY total_sales DESC;

-- 15. Compare member and normal customers
SELECT
    "Customer type",
    COUNT(*) AS transactions,
    ROUND(SUM(CAST("Total" AS REAL)), 2) AS total_sales,
    ROUND(AVG(CAST("Total" AS REAL)), 2) AS average_sale
FROM supermarket
GROUP BY "Customer type"
ORDER BY total_sales DESC;

-- 16. Analyse sales by gender
SELECT
    Gender,
    COUNT(*) AS transactions,
    ROUND(SUM(CAST("Total" AS REAL)), 2) AS total_sales,
    ROUND(AVG(CAST("Total" AS REAL)), 2) AS average_sale
FROM supermarket
GROUP BY Gender
ORDER BY total_sales DESC;
