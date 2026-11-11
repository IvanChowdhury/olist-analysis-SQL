# Olist E-commerce Analysis: SQL and Power BI

An analysis of about 100,000 orders from Olist, a Brazilian online marketplace, to understand what drives revenue. SQL is used for the analysis, and a one-page Power BI report is planned.

**Status:** In progress. The SQL analysis is under way.

## Data
- Olist Brazilian E-commerce dataset (Kaggle), 9 related tables
- Orders from September 2016 to October 2018
- Loaded into SQLite, with checks on the import

## Business rules
- Revenue counts delivered orders only (97% of orders)
- The monthly trend covers January 2017 to August 2018. The 2016 months are excluded because they had only 1, 265 and 1 orders

## Approach
1. Loaded the data and fixed an early import error where two files had merged into one table
2. Profiled order volumes, date range and order status
3. Analysed revenue by product category and reconciled the total against a direct sum
4. Built monthly revenue growth using a CTE and the LAG window function
5. Analysed delivery time against review scores. I averaged the score per order first, because 551 orders had more than one review
6. Next: export the results and build a one-page Power BI report

## Key findings so far
- Delivered revenue is about 13.2M across 71 categories
- The top five categories make up about 40% of revenue, so it is spread widely
- About 1.3% of revenue has no English category. An inner join dropped it, so I used a left join and checked the total
- Monthly revenue grew from about 112K in January 2017 to about 482K in July 2017. The early growth rates (110% in February 2017) come from a very small starting base
- Orders delivered in 15+ days average a review score of 3.72, against 4.42 for orders delivered within 7 days. About 31% of delivered orders fall in the slow group

## Skills shown
SQL joins (inner and left), subqueries, CTEs, window functions (LAG), aggregation, and reconciling results against a control total.

## Repository
- `sql/`: queries, numbered in the order they were written
- `notes/`: working notes and detailed findings