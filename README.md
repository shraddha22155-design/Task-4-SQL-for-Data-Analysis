📊 E-commerce SQL Data Analysis

📌 Project Overview
This project is part of a **Data Analyst Internship Task**.  
The goal is to analyze an E-commerce dataset using **SQL** to extract insights such as top-selling products, customer profitability, and revenue trends.

---

📂 Dataset
The dataset contains **51,290 rows × 16 columns** with the following fields:
- `Order_Date` → Date of order
- `Customer_Id` → Unique customer ID
- `Gender` → Gender of the customer
- `Device_Type` → Platform used (Web/Mobile)
- `Product_Category` → Category of product purchased
- `Product` → Specific product
- `Sales` → Sales value of the order
- `Quantity` → Units sold
- `Profit` → Profit generated
- `Shipping_Cost` → Cost of shipping
- `Order_Priority` → Priority of order
- `Payment_method` → Mode of payment

📌 SQL Concepts Applied
- **SELECT, WHERE, ORDER BY, GROUP BY**
- **Aggregate Functions (SUM, AVG, COUNT)**
- **JOINS (Inner, Left)**
- **Subqueries**
- **Views**
- **Indexes for Optimization**

---

📜 SQL Queries
All queries are available in [`queries.sql`](queries.sql).  
Example queries include:
- Top 10 products by sales
- Top 5 customers by profit
- Monthly revenue analysis
- Customers spending more than average (using subqueries)
- Creating a view for high-value customers
