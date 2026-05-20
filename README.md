# 🛒 Retail Sales Analysis — SQL Project

## Project Overview
A retail business needs to understand its sales performance, customer behavior, and product trends to make better business decisions. This project analyzes a retail sales dataset using SQL to answer key business questions — from identifying best-selling months to understanding customer demographics across product categories.

## Dataset
- **Source:** Simulated retail transaction data
- **Size:** ~2,000 transactions
- **Fields:** Transaction ID, Sale Date, Sale Time, Customer ID, Gender, Age, Category, Quantity, Price Per Unit, COGS, Total Sale

## Key Findings
- **Best-selling month** identified for each year using window functions (RANK)
- **Clothing** category had the highest transaction volume in November 2022
- **Top 5 customers** by total spending were identified for loyalty targeting
- Customer age for **Beauty category** averaged around mid-30s, suggesting a clear target demographic
- Sales were segmented into **Morning / Afternoon / Evening** shifts to optimize staffing

## Tools Used
- PostgreSQL
- SQL (Aggregations, Window Functions, Date Functions, CTEs)

## Key SQL Concepts Demonstrated
- `GROUP BY` with aggregate functions
- `RANK()` window function for time-series ranking
- `EXTRACT()` for date-based analysis
- `COUNT(DISTINCT)` for unique customer analysis
- Data cleaning with `NULL` detection and deletion

## How to Run
1. Install PostgreSQL (or use any SQL client)
2. Import the dataset: `SQL - Retail Sales Analysis_utf.csv`
3. Run `retail_sales.sql` sequentially
