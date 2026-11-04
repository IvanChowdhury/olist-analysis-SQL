# Olist E-commerce Analysis: SQL and Power BI

## Overview
An analysis of about 100,000 orders from Olist, a Brazilian online marketplace, to understand what drives revenue and customer value. The project uses SQL for the analysis and will use Power BI for an interactive dashboard.

**Status:** In progress. SQL exploration is under way and the dashboard is planned.

## Business question
What drives revenue, and which customers are worth retaining? I will refine this into a more specific question once I know what the data can support.

## Data
- Olist Brazilian E-commerce dataset (Kaggle): 9 related tables covering orders, items, customers, payments, reviews, products and sellers
- Orders from September 2016 to October 2018
- Loaded into a SQLite database, with row counts checked against the source files

## Approach
1. Loaded the nine source files into a SQLite database and checked the import. I fixed an early error where two files had merged into one table.
2. Profiled the data: counted the orders, found the date range (Sept 2016 to Oct 2018) and checked the share of orders in each status. About 97% are delivered.
3. Set a revenue rule: only delivered orders count.
4. Next: monthly revenue trends, top product categories, repeat purchase behaviour, and delivery time versus review scores.

## Key findings so far
- The dataset covers just over two years of trading
- About 97% of orders are delivered, so order status has little effect on overall revenue
- Cancelled and unavailable orders make up roughly 1% of orders

## Data quality notes
- Some orders have a status that does not match their timestamps, so I treat timestamps with care
- The first and last months of the dataset look like partial periods, so I check order counts per month before drawing trend conclusions

## Skills demonstrated
SQL (joins, aggregation), data validation, defining business rules for metrics, and documenting assumptions. Power BI and DAX will be added when the dashboard is built.

## Repository structure
- `sql/`: queries, numbered in the order they were written
- `notes/`: working notes and findings