# Olist E-commerce Analysis: SQL and Power BI

An analysis of about 100,000 orders from Olist, a Brazilian online marketplace, to understand what drives revenue. SQL is used for the analysis, and a Power BI dashboard is planned.

**Status:** In progress. SQL exploration is under way.

## Data
- Olist Brazilian E-commerce dataset (Kaggle), 9 related tables
- Orders from September 2016 to October 2018
- Loaded into SQLite, with checks on the import

## Approach
1. Loaded the data and fixed an early import error where two files had merged into one table
2. Profiled order volumes, date range and order status
3. Set a revenue rule: only delivered orders count (97% of orders)
4. Analysed revenue by product category and reconciled the totals against a direct sum
5. Next: monthly revenue trends, repeat customers, delivery time versus review scores

## Key findings so far
- Delivered revenue is about 13.2M across 71 categories
- The top five categories make up about 40% of revenue, so it is spread widely
- About 1.3% of revenue has no English category. An inner join dropped it, so I used a left join and checked the total

## Repository
- `sql/`: queries, numbered in the order they were written
- `notes/`: working notes and detailed findings