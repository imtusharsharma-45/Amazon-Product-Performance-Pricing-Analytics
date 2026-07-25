 Amazon Product Analytics Pipeline

Project Overview

This project demonstrates an end-to-end data pipeline using AWS S3, Snowflake, SQL, and Power BI.

The Amazon Product dataset was uploaded to AWS S3, loaded into Snowflake using Storage Integration and External Stage, analyzed with SQL, and visualized in Power BI through an interactive dashboard.

## Business Problem

E-commerce platforms contain large volumes of product data across multiple categories, making it difficult to manually evaluate product performance, customer engagement, pricing, and discount strategies.

The objective of this project is to build an end-to-end analytics pipeline that centralizes Amazon product data in a cloud data warehouse and enables business users to analyze product performance through SQL and an interactive Power BI dashboard.

### Business Questions

This project aims to answer the following questions:

- Which product categories receive the highest customer engagement?
- Which categories have the highest average product ratings?
- Which products receive the most customer reviews?
- How do actual prices and discounted prices vary across categories?
- Which categories offer the highest average discounts?
- Is a higher discount associated with better product ratings?
- Which categories contribute the most to overall product volume?

---

## Architecture

The project follows a cloud-based analytics pipeline where raw Amazon product data is stored in AWS S3, ingested into Snowflake, analyzed using SQL, and visualized through Power BI.

Amazon Product Dataset (CSV)
          │
          ▼
       AWS S3
          │
          ▼
Snowflake Storage Integration
          │
          ▼
 Snowflake External Stage
          │
          ▼
   Snowflake Table
          │
          ▼
     SQL Analysis
          │
          ▼
 Power BI Dashboard

Data Flow
Data Storage: The Amazon product dataset is stored as a CSV file in AWS S3.
Cloud Integration: Snowflake Storage Integration provides secure access between Snowflake and AWS S3.
External Stage: A Snowflake External Stage references the dataset stored in S3.
Data Loading: Product data is loaded into a Snowflake table for analysis.
SQL Analysis: SQL queries are used to calculate KPIs and analyze ratings, reviews, pricing, discounts, and categories.
Visualization: Snowflake data is connected to Power BI to build an interactive business dashboard.

---

Tech Stack

- AWS S3
- Snowflake
- SQL
- Power BI

---

Dataset Information

## Dataset Information

The dataset contains **1,351 Amazon products** with information related to product categories, customer ratings, reviews, pricing, and discounts.

### Key Columns

| Column | Description |
|---|---|
| Product Name | Name of the Amazon product |
| Category | Product category |
| Rating | Average customer rating |
| Rating Count | Number of customer ratings/reviews |
| Actual Price | Original product price |
| Discounted Price | Price after discount |
| Discount Percentage | Percentage discount offered |

**Total Products:** 1,351
---

SQL Analysis

Performed various SQL analyses including:

- Total Products
- Average Rating
- Total Reviews
- Average Discount
- Reviews by Category
- Rating by Category
- Discount Analysis

---

Dashboard KPIs

- Total Products
- Average Rating
- Total Reviews
- Average Discount Percentage

---

Dashboard Features

- Product Rating Distribution
- Category-wise Products
- Top Reviewed Products
- Review Share by Category
- Average Price Comparison
- Estimated Revenue by Category


---

Dashboard Insights

Rating Analysis
- Average product rating is around 4.1
- Most categories maintain ratings above 4.0

Review Analysis
- Electronics and Computer Accessories categories generate the highest review volume

Discount Analysis
- Several categories provide discounts above 50%
- High discounts do not always result in higher ratings

Category Analysis
- Electronics dominates product distribution
- Home & Kitchen and Computer Accessories also contribute significantly

---

Dashboard Preview

[Dashboard](Screenshots/dashboard.png)

---

Project Structure

```text
AWS-Snowflake-PowerBI-Pipeline

├── Data
│   └── amazon.csv

├── SQL
│   └── snowflake_queries.sql

├── Dashboard
│   └── pipeline_project.pbix

├── Screenshots
│   └── dashboard.png

└── README.md
```

---

Key Learnings

- AWS S3 Data Storage
- Snowflake Storage Integration
- Snowflake External Stage
- Data Loading using COPY INTO
- SQL Data Analysis
- Power BI Dashboard Development
- End-to-End Data Pipeline Design

---

Author

Tushar Sharma
