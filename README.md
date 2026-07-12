 Amazon Product Analytics Pipeline

Project Overview

This project demonstrates an end-to-end data pipeline using AWS S3, Snowflake, SQL, and Power BI.

The Amazon Product dataset was uploaded to AWS S3, loaded into Snowflake using Storage Integration and External Stage, analyzed with SQL, and visualized in Power BI through an interactive dashboard.

---

Architecture

AWS S3
↓
Snowflake Storage Integration
↓
Snowflake External Stage
↓
Snowflake Table
↓
SQL Analysis
↓
Power BI Dashboard

---

Tech Stack

- AWS S3
- Snowflake
- SQL
- Power BI

---

Dataset Information

Dataset contains Amazon product information including:

- Product Name
- Category
- Rating
- Rating Count
- Discount Percentage
- Actual Price
- Discounted Price

Total Products: 1351

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
