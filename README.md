# 📊 Sales Data Analysis using MySQL Database using Python

> A complete end-to-end sales analytics project demonstrating how SQL and Python can be integrated to extract business insights from a relational database and visualize key performance metrics.

![Python](https://img.shields.io/badge/Python-3.x-blue)
![MySQL](https://img.shields.io/badge/MySQL-8.x-orange)
![Pandas](https://img.shields.io/badge/Pandas-Data%20Analysis-green)
![Matplotlib](https://img.shields.io/badge/Matplotlib-Visualization-red)
![License](https://img.shields.io/badge/License-MIT-brightgreen)

---

# Table of Contents

- Project Overview
- Business Problem Statement
- Objectives
- Dataset
- Technology Stack
- Project Architecture
- Database Schema
- SQL Analysis
- Data Visualizations
- Business Findings
- Recommendations
- Project Structure
- Installation & Setup
- How to Run
- Sample Output
- Skills Demonstrated
- Future Enhancements
- Author

---

# Project Overview

Businesses generate thousands of sales transactions every day. Raw transactional data alone does not provide meaningful insights for decision-making.

This project demonstrates how to:

- Store sales data in MySQL
- Query business information using SQL
- Connect MySQL with Python
- Analyze data using Pandas
- Generate business reports
- Visualize sales performance using Matplotlib

The project simulates a small-scale Sales Analytics Dashboard commonly used in retail and e-commerce organizations.

---

# Business Problem Statement

A retail company wants to understand its sales performance using historical sales data.

Management needs answers to questions such as:

- Which product generates the highest revenue?
- Which product sells the highest quantity?
- What is the overall revenue?
- How many sales transactions occurred for each product?
- What is the average selling price of each product?
- How is revenue distributed across products?

Currently, the company only stores raw sales records without analytical reporting.

The objective is to build a lightweight reporting solution using SQL and Python.

---

# Objectives

- Build a relational database using MySQL
- Retrieve business insights using SQL queries
- Connect Python with MySQL
- Analyze results using Pandas
- Create professional charts using Matplotlib
- Save charts as PNG images
- Demonstrate an end-to-end analytics workflow

---

# Dataset

A sample sales dataset was created for demonstration purposes.

Each record contains:

| Column | Description |
|---------|-------------|
| id | Unique Sales ID |
| product | Product Name |
| quantity | Number of Units Sold |
| price | Selling Price |

Sample Data

| Product | Quantity | Price |
|----------|----------|---------|
| Laptop | 2 | 60000 |
| Mouse | 5 | 500 |
| Keyboard | 3 | 1200 |
| Monitor | 4 | 15000 |

---

# Technology Stack

| Technology | Purpose |
|------------|---------|
| Python | Programming Language |
| MySQL | Relational Database |
| SQL | Data Retrieval |
| Pandas | Data Analysis |
| Matplotlib | Data Visualization |
| Jupyter Notebook | Development Environment |

---

# Project Architecture

```
                Sales Data
                     │
                     ▼
              MySQL Database
                     │
                     ▼
            SQL Aggregation Queries
                     │
                     ▼
              Python Connector
                     │
                     ▼
                 Pandas DataFrame
                     │
          ┌──────────┴──────────┐
          ▼                     ▼
     Business Reports      Visualizations
```

---

# Database Schema

```
Sales
------------------------------
id          INT (Primary Key)

product     VARCHAR(50)

quantity    INT

price       DECIMAL(10,2)
```

---

# SQL Analysis Performed

The project executes multiple SQL queries including:

### 1. Display Complete Sales Data

```sql
SELECT * FROM sales;
```

---

### 2. Revenue by Product

```sql
SELECT
product,
SUM(quantity) AS Total_Quantity,
SUM(quantity*price) AS Revenue
FROM sales
GROUP BY product;
```

---

### 3. Overall Revenue

```sql
SELECT
SUM(quantity*price) AS Total_Revenue
FROM sales;
```

---

### 4. Highest Revenue Product

```sql
SELECT
product,
SUM(quantity*price) AS Revenue
FROM sales
GROUP BY product
ORDER BY Revenue DESC
LIMIT 1;
```

---

### 5. Highest Selling Product

```sql
SELECT
product,
SUM(quantity) AS Quantity
FROM sales
GROUP BY product
ORDER BY Quantity DESC
LIMIT 1;
```

---

### 6. Average Price

```sql
SELECT
product,
AVG(price)
FROM sales
GROUP BY product;
```

---

### 7. Number of Sales Transactions

```sql
SELECT
product,
COUNT(*)
FROM sales
GROUP BY product;
```

---

# Data Visualizations

The following charts are generated and automatically saved.

- Revenue by Product (Bar Chart)
- Quantity Sold by Product (Bar Chart)
- Revenue Distribution (Pie Chart)
- Average Product Price (Line Chart)
- Sales Transactions Count (Horizontal Bar Chart)

Charts are exported in PNG format for reporting purposes.

---

# Business Findings

Based on the analysis:

### Laptop

- Generated the highest revenue.
- Major contributor to total sales value.

### Mouse

- Highest quantity sold.
- Indicates strong customer demand.

### Monitor

- Good revenue despite fewer transactions.
- High-value product.

### Keyboard

- Moderate sales with consistent demand.

### Overall

- Revenue is concentrated in high-value products.
- Low-cost products drive sales volume.

---

# Recommendations

### Increase Inventory

Maintain higher inventory levels for high-demand products such as Mouse.

---

### Focus Marketing

Promote Laptop and Monitor since they generate the highest revenue.

---

### Bundle Products

Bundle accessories such as:

- Laptop + Mouse
- Laptop + Keyboard

to increase average order value.

---

### Monitor Sales Trends

Regularly analyze product performance to identify changing customer preferences.

---

### Dashboard Automation

Automate SQL execution and chart generation using scheduled Python scripts.

---

# Project Structure

```
Sales_Project/

│

├── Sales_Summary.ipynb

├── README.md

├── charts/

│   ├── Revenue_by_Product.png

│   ├── Quantity_Sold.png

│   ├── Revenue_Distribution.png

│   ├── Average_Price.png

│   └── Sales_Count.png

│

└── SQL Scripts
```

---

# Installation & Setup

## Clone Repository

```bash
git clone https://github.com/yourusername/Sales_Project.git
```

---

## Install Dependencies

```bash
pip install pandas
pip install matplotlib
pip install mysql-connector-python
```

---

## Configure MySQL

Create database:

```sql
CREATE DATABASE sales_db;
```

Create the sales table.

Insert the sample records.

---

# Run the Project

Open Jupyter Notebook.

Execute the notebook cells sequentially.

The notebook will:

- Connect to MySQL
- Execute SQL queries
- Display reports
- Generate charts
- Save PNG images

---

# Sample Outputs

The notebook generates:

- Sales Summary Table
- Overall Revenue
- Product Ranking
- Quantity Summary
- Revenue Charts
- Pie Chart
- Line Chart
- Horizontal Bar Chart

---

# Skills Demonstrated

This project demonstrates practical skills in:

- SQL
- MySQL
- Python Programming
- Database Connectivity
- Data Cleaning
- Data Aggregation
- Business Analytics
- Pandas
- Matplotlib
- Data Visualization
- Reporting
- Jupyter Notebook
- Problem Solving

---

# Future Enhancements

Potential improvements include:

- Interactive Power BI Dashboard
- Streamlit Web Application
- Sales Forecasting using Machine Learning
- Monthly Sales Trend Analysis
- Customer Segmentation
- Product Category Analysis
- Time-Series Reporting
- Automated Email Reports
- REST API Integration
- Export Reports to Excel and PDF

---

# Learning Outcomes

After completing this project, you will understand:

- Relational database fundamentals
- SQL aggregation techniques
- Python–MySQL integration
- Data analysis using Pandas
- Business reporting
- Data visualization
- End-to-end analytics workflow

---

# Author

**Shakeer Shaik**

Data Analyst | Data Engineer | Python | SQL | Power BI | Microsoft Fabric

If you found this project useful, consider giving it a ⭐ on GitHub.
