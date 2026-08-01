# Amazon Product Analytics Pipeline

## Project Overview

This project demonstrates an end-to-end cloud-based product analytics pipeline using **AWS S3, Snowflake, SQL, and Power BI**.

The Amazon Product dataset is stored in AWS S3, integrated with Snowflake using Storage Integration and an External Stage, loaded into Snowflake for SQL-based analysis, and connected to Power BI to build an interactive product analytics dashboard.

The project analyzes **1,351 Amazon products** across product categories, customer ratings, review activity, pricing, discounts, and estimated revenue to generate actionable business insights.

---

## Business Problem

E-commerce platforms contain large volumes of product information across multiple categories, making it difficult to evaluate product assortment, customer engagement, pricing strategies, discount levels, and category performance efficiently.

The objective of this project is to build an end-to-end cloud analytics pipeline that centralizes Amazon product data in Snowflake and provides business users with an interactive Power BI dashboard for product-level and category-level analysis.

### Business Questions

The analysis aims to answer:

- Which categories contain the largest number of products?
- Which products receive the highest number of customer reviews?
- Which categories generate the highest customer engagement?
- How do average actual and discounted prices differ across categories?
- Which categories show the largest pricing gaps after discounts?
- Which categories contribute the most to estimated revenue?
- What are the overall product rating and discount levels?
- How can users interactively analyze performance by category and rating?

---

## Architecture

The project follows a cloud-based analytics workflow where raw product data is stored in AWS S3, ingested into Snowflake, analyzed using SQL, and visualized using Power BI.

```text
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
```

### Data Flow

1. **Data Storage** — The Amazon product dataset is stored as a CSV file in AWS S3.
2. **Cloud Integration** — Snowflake Storage Integration provides secure access between Snowflake and AWS S3.
3. **External Stage** — A Snowflake External Stage references the dataset stored in S3.
4. **Data Loading** — Product data is loaded into a Snowflake table for analytical querying.
5. **SQL Analysis** — SQL is used to analyze product, category, rating, pricing, discount, and review data.
6. **Visualization** — The analytical dataset is connected to Power BI for interactive business reporting.

---

## Tech Stack

| Technology | Purpose |
|---|---|
| AWS S3 | Cloud storage for the source dataset |
| AWS IAM | Access management for AWS resources |
| Snowflake | Cloud data warehouse |
| SQL | Data querying and analytical calculations |
| Power BI | Dashboard development and business reporting |

---

## Dataset Information

The dataset contains **1,351 Amazon products** with information related to product categories, customer ratings, reviews, prices, and discounts.

### Dataset Fields

| Column | Description |
|---|---|
| product_id | Unique product identifier |
| product_name | Product name |
| category | Product category |
| discounted_price | Product price after discount |
| actual_price | Original product price |
| discount_percentage | Discount applied to the product |
| rating | Average product rating |
| rating_count | Number of customer ratings/reviews |
| about_product | Product description |
| user_id | Customer/user identifier |
| user_name | Customer/user name |
| review_id | Review identifier |
| review_title | Review title |
| review_content | Customer review content |
| img_link | Product image URL |
| product_link | Amazon product URL |

**Total Products Analyzed:** 1,351

---

## Data Preparation

Before analysis, several fields require preprocessing because numerical information is stored as text in the source dataset.

The following transformations are performed:

- Remove the ₹ symbol from price columns.
- Remove commas from price and rating count values.
- Remove the % symbol from discount percentage.
- Convert actual and discounted prices to numeric values.
- Convert ratings to decimal values.
- Convert rating counts to numeric values.
- Validate missing values before analysis.
- Standardize category values where required.

These transformations prepare the dataset for SQL analysis and Power BI reporting.

---

## SQL Analysis

SQL queries were used to explore product performance and generate analytical outputs from the Snowflake dataset.

### Analysis Performed

- Total number of unique products
- Average product rating
- Category-wise product count
- Top products by customer reviews
- Product discount analysis
- Category-level pricing analysis
- Review and engagement analysis

### Example SQL

```sql
-- Total Products
SELECT COUNT(DISTINCT product_id) AS total_products
FROM amazon_sales;

-- Average Rating
SELECT AVG(TRY_CAST(rating AS FLOAT)) AS avg_rating
FROM amazon_sales;

-- Category-wise Product Count
SELECT category, COUNT(*) AS total_products
FROM amazon_sales
GROUP BY category
ORDER BY total_products DESC;

-- Top 10 Products by Reviews
SELECT product_name, rating_count
FROM amazon_sales
ORDER BY rating_count DESC
LIMIT 10;

-- Highest Discount Products
SELECT product_name, discount_percentage
FROM amazon_sales
ORDER BY discount_percentage DESC
LIMIT 10;
```

The complete SQL script is available in the `SQL` directory.

---

## Power BI Dashboard

An interactive Power BI dashboard was developed to provide a consolidated view of Amazon product performance, customer engagement, pricing, discounts, and estimated revenue.

### KPI Cards

| KPI | Dashboard Result |
|---|---:|
| Total Products | 1,351 |
| Total Reviews | 27M |
| Average Rating | 4.10 |
| Average Discount | 47.69% |

### Interactive Filters

The dashboard includes:

- **Category Slicer** — Analyze dashboard metrics for individual product categories.
- **Rating Range Slicer** — Filter products according to their rating range.

These filters allow users to dynamically explore product performance across the dashboard.

---

## Dashboard Visualizations

### 1. Products by Category

A horizontal bar chart compares the number of products available across Amazon product categories.

This visual helps identify which categories dominate the product portfolio.

### 2. Top 10 Products by Reviews

A horizontal bar chart highlights the products receiving the highest number of customer reviews.

This provides an indication of products generating significant customer engagement and market attention.

### 3. Average Actual vs Discounted Price by Category

A clustered column chart compares:

- Average Actual Price
- Average Discounted Price

across product categories.

The comparison highlights category-level pricing differences and the impact of discounting on product prices.

### 4. Estimated Revenue Share by Category

A donut chart shows the percentage contribution of each category to estimated revenue.

For analytical purposes, estimated revenue is calculated as:

```text
Estimated Revenue = Discounted Price × Rating Count
```

This metric is used only as an analytical proxy because actual sales quantity and transaction revenue are not available in the source dataset.

It should therefore **not be interpreted as actual Amazon revenue**.

---

## Dashboard Preview

![Amazon Product Analytics Dashboard](Screenshots/dashboard.png)

---

## Key Insights

### Product Portfolio

- **Electronics** contains approximately **490 products**, making it the largest category in the dataset.
- **Home & Kitchen** follows with approximately **448 products**.
- **Computers & Accessories** contains approximately **375 products**.
- These three categories represent the majority of products in the analyzed dataset.

### Customer Engagement

- The dashboard aggregates approximately **27 million customer ratings/reviews** based on the available rating-count field.
- A relatively small number of products receive exceptionally high review volumes.
- The most reviewed product has approximately **1.95 million reviews/ratings**, indicating substantial customer engagement.

### Product Ratings

- The overall average product rating is approximately **4.10**.
- This indicates generally positive customer feedback across the analyzed products.

### Discount Strategy

- The average discount across the dataset is approximately **47.69%**.
- Significant differences exist between average actual prices and discounted prices across several categories.
- Discount levels vary substantially depending on the product category.

### Pricing

- Electronics shows one of the highest average actual prices among the major categories.
- The comparison between actual and discounted prices demonstrates substantial price reductions across several categories.
- Category-level pricing analysis helps identify where discounting has the greatest monetary impact.

### Estimated Revenue

- **Electronics dominates the estimated revenue share** in the dashboard.
- Other major categories contribute substantially smaller shares compared with Electronics.
- This indicates that Electronics combines strong pricing levels with high customer engagement in this analytical estimate.

> **Note:** Estimated revenue is a proxy based on discounted price × rating count and does not represent actual Amazon sales revenue.

---

## Business Recommendations

1. **Prioritize high-engagement categories**  
   Electronics, Home & Kitchen, and Computers & Accessories represent major portions of the product portfolio and should receive focused category-level analysis.

2. **Monitor highly reviewed products**  
   Products with exceptionally high review volumes can be used as indicators of strong customer interest and should be monitored for pricing, ratings, and competitive positioning.

3. **Evaluate discount effectiveness**  
   With an average discount of approximately 47.69%, discount strategies should be evaluated alongside product ratings and customer engagement rather than relying on discount percentage alone.

4. **Optimize category-level pricing**  
   Categories showing large differences between actual and discounted prices should be reviewed to determine whether discount levels support sustainable pricing strategies.

5. **Focus on high-value categories**  
   Categories contributing strongly to estimated revenue can be prioritized for deeper product-level analysis and pricing optimization.

6. **Combine multiple performance indicators**  
   Product performance should be evaluated using a combination of ratings, review volume, pricing, discounts, and category-level estimated revenue rather than relying on a single KPI.

---

## Project Structure

```text
amazon-product-analytics-pipeline/
│
├── Data/
│   └── amazon.csv
│
├── SQL/
│   └── snowflake_queries.sql
│
├── Dashboard/
│   └── Amazon_Product_Analytics.pbix
│
├── Screenshots/
│   └── dashboard.png
│
└── README.md
```

---

## How to Reproduce the Project

1. Upload the Amazon product CSV dataset to an AWS S3 bucket.
2. Configure the required AWS IAM permissions.
3. Create a Snowflake Storage Integration for AWS S3 access.
4. Create a Snowflake External Stage referencing the S3 location.
5. Create the required Snowflake table.
6. Load the dataset from AWS S3 into Snowflake.
7. Perform data validation and SQL analysis.
8. Connect Snowflake to Power BI.
9. Create the required DAX measures and KPI calculations.
10. Build the dashboard visualizations and interactive slicers.
11. Validate Power BI outputs against the analytical dataset.

---

## Key Learnings

This project demonstrates practical experience with:

- Cloud-based data storage using AWS S3
- AWS IAM and Snowflake integration
- Snowflake Storage Integration
- Snowflake External Stages
- Cloud data warehousing
- SQL-based analytical querying
- Data preparation and validation
- KPI and analytical measure development
- Power BI dashboard design
- Interactive slicers and filtering
- Pricing and discount analysis
- Customer engagement analysis
- Business insight generation
- End-to-end analytics pipeline development

---

## Author

**Tushar Sharma**

Data Analyst | SQL | Python | Power BI | AWS | Snowflake

GitHub: `imtusharsharma-45`
