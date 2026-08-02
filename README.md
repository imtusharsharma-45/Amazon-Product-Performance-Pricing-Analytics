## Amazon Product Performance & Pricing Analytics

## Project Overview

This project demonstrates an end-to-end cloud analytics workflow using AWS S3, AWS IAM, Snowflake, SQL, Power BI, and DAX.

The Amazon Product dataset was downloaded from Kaggle, uploaded to AWS S3, loaded into Snowflake for SQL analysis, and connected to Power BI to build an interactive dashboard for product performance, pricing strategy, customer ratings, customer engagement, and category-level analysis.

## Business Problem

E-commerce companies manage thousands of products across multiple categories. This project helps analyze product portfolio, pricing, discounts, customer ratings, customer engagement, and category performance.

## Business Questions

Which categories contain the highest number of products?

Which products receive the highest number of reviews?

Which categories receive the highest customer engagement?

Which categories have the highest average ratings?

Which categories offer the highest average discounts?

How do actual and discounted prices compare?

Is there any relationship between discount percentage and customer ratings?

## Cloud Architecture

Amazon Product Dataset (CSV)→ AWS S3→ AWS IAM→ Snowflake→ SQL Analysis→ Power BI Dashboard

## Data Pipeline

Download dataset from Kaggle.

Upload dataset to AWS S3.

Configure AWS IAM.

Load data into Snowflake.

Perform SQL analysis.

Connect Snowflake to Power BI.

Create DAX measures.

Build interactive dashboard.

## Tech Stack

AWS S3

AWS IAM

Snowflake

SQL

Power BI

DAX

## Dataset

Source: Kaggle

Total Products: 1,351

## Data Preparation

Dataset validated before loading.

Loaded into Snowflake.

Created DAX calculated column for numeric discount percentage.

Created KPI measures in Power BI.

## SQL Analysis

Performed:

Product Count Analysis

Category Analysis

Rating Analysis

Discount Analysis

Top Products by Reviews

## Power BI Dashboard

# KPIs:

Total Products

Total Reviews

Average Rating

Average Discount

# Visuals:

Products by Category

Top Products by Reviews

Average Rating by Category

Total Reviews by Category

Average Actual Price vs Average Discounted Price

Average Discount vs Average Rating by Category

Filters:

Category

Rating

# Dashboard Preview

## Dashboard Preview
![Amazon Product Performance Pricing Analytics](Screenshots/amazon%20product%20dashboard.png)

## Key Business Insights

Electronics has the largest product portfolio.

Electronics receives the highest customer engagement.

Home Improvement offers the highest average discount.

Office Products has one of the highest average ratings.

Higher discounts do not always result in higher customer ratings.

## Business Recommendations

Focus on high-engagement categories.

Review discount strategies by category.

Monitor highly reviewed products.

Combine ratings with pricing before making business decisions.

## Project Structure

amazon-product-performance-pricing-analytics/

Data/

SQL/

Dashboard/

Screenshots/

README.md

## How to Reproduce

Download dataset from Kaggle.

Upload to AWS S3.

Configure IAM.

Load into Snowflake.

Execute SQL queries.

Connect to Power BI.

Create DAX measures.

Build dashboard.

## Key Learnings

AWS S3

AWS IAM

Snowflake

SQL

Power BI

DAX

KPI Reporting

Dashboard Development

Product Performance Analysis

Pricing Analysis

Customer Engagement Analysis

## Author

Tushar Sharma

Data Analyst | SQL | Power BI | Snowflake | AWS

GitHub: https://github.com/imtusharsharma-45
