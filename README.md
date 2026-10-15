# Supermarket Sales Analysis Using SQL

## Project Overview
This project analyses supermarket sales data using SQLite to identify revenue trends, compare branch performance, and understand customer purchasing behaviour.

## Dataset
- **Records:** 1,000 transactions
- **Period:** January–March 2019
- **Data fields:** Branch, product line, customer type, gender, payment method, quantity, date, total sales, and customer rating.

## Tools Used
- SQLite — data querying and analysis
- SQL — aggregation, filtering, grouping, sorting, and date extraction
- GitHub — project documentation and version control

## Key Findings
1. **Total revenue:** 322,966.75 across 1,000 transactions.
2. **Branch performance:** Branch C generated the highest total sales at 110,568.71.
3. **Product performance:** Food and beverages generated the highest revenue at 56,144.84.
4. **Payment methods:** Cash generated the highest revenue at 112,206.57.
5. **Customer type:** Members generated 164,223.44 in sales, compared with 158,743.30 for normal customers.
6. **Monthly trend:** January recorded the highest monthly sales at 116,291.87, while February recorded the lowest at 97,219.37.
7. **Customer spending:** Female customers had a higher average transaction value than male customers in this dataset.

## SQL Skills Demonstrated
- SELECT and WHERE
- GROUP BY and ORDER BY
- Aggregate functions: SUM, AVG, COUNT, MIN, MAX
- CAST for numeric conversion
- CASE, SUBSTR, and INSTR for extracting months from dates
- Grouping by multiple columns
- Business interpretation of query results

## Business Recommendations
- Investigate why February sales were lower than January sales.
- Review the sales strategies used by Branch C to identify practices that could benefit other branches.
- Examine the performance of Health and beauty products to identify opportunities for improvement.
- Continue monitoring payment methods and customer purchasing patterns.

## Project Files
- `supermarket_analysis.sql` — SQL queries used in the analysis.
- `supermarket_analysis.db` — SQLite database.

## Limitations
The analysis describes patterns in the available dataset. It does not establish the causes of differences in sales or customer behaviour. Revenue is not the same as profit.

## Author
Samwel Shakwa