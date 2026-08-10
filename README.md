# E-Commerce Sales & Demand Planning Dashboard

## Overview

An end-to-end **Data Analytics and Business Intelligence project** built using the Global Superstore dataset.

The project analyzes sales, profitability, customers, geography, shipping performance, and product demand, with the results presented through an interactive **Power BI dashboard**. It also includes sales forecasting and estimated demand-planning metrics to support future business and inventory-related decisions.

## Objectives

* Analyze sales and profitability trends
* Identify top-performing products and categories
* Evaluate customer and regional performance
* Analyze shipping and delivery performance
* Forecast future sales
* Identify products with relatively high historical demand
* Develop estimated demand-planning metrics

## Dataset

**Dataset:** Global Superstore

Key fields include:

* Order Date & Ship Date
* Order & Customer information
* Country, Region, and Market
* Category & Product
* Sales, Quantity, and Profit
* Discount and Shipping Cost
* Ship Mode

> **Note:** The dataset does not contain actual inventory levels, warehouse stock, or supplier lead times. Therefore, inventory-related metrics are presented as **estimated demand-planning metrics**, not actual stock or operational reorder recommendations.

## Tools & Technologies

* **Python:** Data cleaning, EDA, feature engineering, and forecasting
* **Pandas & NumPy:** Data manipulation
* **SQL / PostgreSQL:** Business analysis and aggregation
* **Power BI:** Interactive dashboards and visualization
* **DAX:** KPI and analytical measures
* **GitHub:** Documentation and version control

## Project Workflow

```text
Raw Dataset
    ↓
Python Data Cleaning
    ↓
Feature Engineering & EDA
    ↓
SQL Analysis
    ↓
Sales Forecasting
    ↓
Demand Planning Metrics
    ↓
Power BI Dashboard
    ↓
Business Insights
```

## Key Analysis

### Sales & Profitability

* Sales and profit trends over time
* Category and sub-category performance
* Top products
* Profit margin analysis

### Customer Analysis

* Customer segments
* Top customers
* Customer revenue contribution
* Average order value

### Geographic Analysis

* Country and regional performance
* Sales and profit by geography
* Top-performing markets

### Shipping Analysis

* Delivery duration
* Shipping mode performance
* Average delivery time

### Forecasting & Demand Planning

Historical sales were aggregated and used to estimate future sales demand.

The project also calculates estimated metrics such as:

* Total Quantity
* Average Daily Demand
* Average Delivery Time
* Estimated Safety Stock
* Estimated Reorder Point

Historical delivery time is used as a **lead-time proxy** for demonstration purposes.

## Power BI Dashboard

The dashboard contains five pages:

1. **Executive Sales Summary** — Overall sales, profit, orders, customers, and trends
2. **Customer Analysis** — Customer segments, top customers, and revenue contribution
3. **Geographical Analysis** — Country, region, and market performance
4. **Sales Forecast** — Historical sales, forecast trends, and future demand
5. **Demand & Inventory Planning** — Demand patterns and estimated planning metrics

## Key KPIs

* Total Sales
* Total Profit
* Total Orders
* Distinct Customers
* Average Order Value
* Profit Margin
* Total Quantity
* Average Delivery Time
* Forecast Sales
* Estimated Reorder Point

## Business Questions

* Which categories and products generate the most sales?
* Which customers and segments contribute the most revenue?
* Which countries and regions perform best?
* How efficiently are orders being delivered?
* What does future sales demand look like?
* Which products have consistently high historical demand?

## Project Structure

```text
Ecommerce-Sales-Dashboard/
│
├── data/
├── notebooks/
├── sql/
├── dashboard/
├── images/
└── README.md
```

## Project Outcome

This project demonstrates an end-to-end analytics workflow:

**Raw Data → Python → SQL → Forecasting → Power BI → Business Insights**

It showcases practical skills in **data cleaning, exploratory analysis, SQL, forecasting, dashboard development, DAX, and business intelligence**.

## Future Improvements

Potential extensions include:

* Actual inventory and stock-level data
* Supplier lead-time data
* Stockout analysis
* Inventory turnover
* ABC classification
* Product-level forecasting
* Automated data pipelines
* Real-time inventory monitoring
