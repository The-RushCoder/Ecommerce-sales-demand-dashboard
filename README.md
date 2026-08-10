# 📊 E-Commerce Sales & Demand Planning Dashboard

An end-to-end **Data Analytics and Business Intelligence project** built using the Global Superstore dataset. The project analyzes sales, profitability, customers, geography, shipping performance, and product demand, and presents the findings through an interactive Power BI dashboard.

The project also includes **sales forecasting** and **estimated demand/inventory-planning metrics** to demonstrate how historical transaction data can support future business and stock-planning decisions.

---

## 🎯 Problem Statement

An e-commerce business needs a centralized analytics solution to answer questions such as:

* How are sales and profit performing over time?
* Which categories and products generate the most revenue?
* Which customer segments contribute the most sales?
* Which countries and regions perform best?
* How efficiently are orders being delivered?
* What does future sales demand look like?
* Which products have relatively high demand and may require closer inventory monitoring?

The goal of this project is to transform raw transaction data into **actionable business insights** using Python, SQL, and Power BI.

---

## 📂 Dataset

**Dataset:** Global Superstore

The dataset contains transactional information including:

* Order Date
* Ship Date
* Order ID
* Customer ID
* Customer Name
* Country
* Region
* State
* Market
* Segment
* Category
* Sub-Category
* Product Name
* Sales
* Quantity
* Profit
* Discount
* Shipping Cost
* Ship Mode

> **Note:** The original dataset does not contain actual inventory quantities, warehouse stock, or supplier lead-time fields. Therefore, inventory-related metrics in this project are presented as **estimated demand-planning metrics**, not actual stock levels.

---

## 🛠️ Tools & Technologies

| Tool     | Purpose                                               |
| -------- | ----------------------------------------------------- |
| Python   | Data cleaning, EDA, feature engineering & forecasting |
| Pandas   | Data manipulation and analysis                        |
| SQL      | Aggregation, filtering and business analysis          |
| Power BI | Interactive dashboard and visualization               |
| DAX      | KPI and dynamic business measures                     |
| Excel    | Supporting analysis and validation                    |
| GitHub   | Project documentation and version control             |

---

## 🏗️ Project Architecture

```text
Global Superstore Dataset
          │
          ▼
   Data Cleaning
      (Python)
          │
          ▼
 Exploratory Data Analysis
          │
          ▼
    SQL Analysis
          │
          ▼
 Sales Forecasting
          │
          ▼
 Demand & Inventory
     Planning Metrics
          │
          ▼
    Power BI Dashboard
```

---

# 🔄 Methodology

## 1. Data Ingestion & Cleaning

The raw Global Superstore dataset was loaded into Python using Pandas.

Major cleaning steps included:

* Inspecting dataset structure
* Checking missing values
* Identifying duplicate records
* Converting date columns into datetime format
* Validating numerical columns
* Creating time-based features
* Calculating delivery duration
* Exporting the cleaned dataset

### Feature Engineering

Additional fields were created from `Order Date`:

* Year
* Month
* Quarter
* Weekday

Delivery performance was analyzed using:

```text
Delivery Days = Ship Date - Order Date
```

The cleaned dataset was exported for further SQL and Power BI analysis.

---

# 📈 Exploratory Data Analysis

Python and Pandas were used to investigate the major business metrics.

### Key Metrics

* Total Sales
* Total Profit
* Total Quantity
* Total Orders
* Distinct Customers
* Average Order Value
* Profit Margin
* Average Delivery Time

### Sales Analysis

Sales were analyzed by:

* Year
* Month
* Category
* Sub-Category
* Product
* Customer
* Country
* Region
* Segment

### Example Business Questions

```text
Which category generates the most revenue?

Which products are the top sellers?

Which customer segment contributes the most sales?

Which countries generate the highest revenue?

How does sales performance change over time?

Which regions generate the highest profit?
```

---

# 🗄️ SQL Analysis

The cleaned dataset was analyzed using SQL to simulate a business analytics environment.

Example analyses included:

### Top Products

```sql
SELECT
    Product_Name,
    SUM(Sales) AS Total_Sales
FROM superstore
GROUP BY Product_Name
ORDER BY Total_Sales DESC;
```

### Category Performance

```sql
SELECT
    Category,
    SUM(Sales) AS Total_Sales,
    SUM(Profit) AS Total_Profit
FROM superstore
GROUP BY Category
ORDER BY Total_Sales DESC;
```

### Top Customers

```sql
SELECT
    Customer_Name,
    SUM(Sales) AS Total_Sales
FROM superstore
GROUP BY Customer_Name
ORDER BY Total_Sales DESC;
```

### Monthly Sales

```sql
SELECT
    YEAR(Order_Date) AS Year,
    MONTH(Order_Date) AS Month,
    SUM(Sales) AS Total_Sales
FROM superstore
GROUP BY
    YEAR(Order_Date),
    MONTH(Order_Date)
ORDER BY
    Year,
    Month;
```

---

# 🔮 Sales Forecasting

Historical sales data was aggregated at the monthly level and used to estimate future demand.

### Forecasting Process

```text
Historical Transactions
          ↓
Monthly Sales Aggregation
          ↓
Time-Series Preparation
          ↓
Forecast Model
          ↓
Future Sales Prediction
          ↓
Actual vs Forecast Evaluation
```

The project can use a time-series model such as:

* ARIMA
* Prophet
* Moving Average

The model is evaluated using metrics such as:

* MAPE
* RMSE

### Forecast Output

The Power BI dashboard presents:

* Historical Sales
* Forecast Sales
* Forecast Growth
* Forecast Accuracy
* Confidence Interval where available

---

# 📦 Demand & Inventory Planning

The Global Superstore dataset does not contain actual inventory stock levels.

Therefore, this project uses historical product demand and delivery information to create **estimated demand-planning metrics**.

### Demand Metrics

```text
Total Quantity
Average Daily Demand
Average Delivery Time
Estimated Safety Stock
Estimated Reorder Point
```

### Average Daily Demand

```text
Average Daily Demand
=
Total Quantity / Number of Active Sales Days
```

### Estimated Safety Stock

A simplified planning assumption was used:

```text
Safety Stock
=
Average Daily Demand × Safety Buffer
```

### Estimated Reorder Point

```text
Reorder Point
=
Average Daily Demand × Lead Time
+
Safety Stock
```

Where historical delivery time is used as a **lead-time proxy**.

> These calculations are intended for portfolio demonstration and demand planning. They should not be interpreted as actual warehouse inventory or operational reorder recommendations without real stock, supplier lead-time, and inventory-position data.

---

# 📊 Power BI Dashboard

The project contains five dashboard pages.

---

## Page 1 — Executive Sales Summary

### KPI Cards

* Total Sales
* Total Profit
* Total Orders
* Distinct Customers
* Average Order Value

### Visualizations

* Monthly Sales Trend
* Monthly Profit Trend
* Sales by Category
* Top 10 Products
* Interactive filters

### Business Purpose

Provides management with a high-level view of overall business performance.

---

## Page 2 — Customer Analysis

### KPIs

* Total Customers
* Total Orders
* Average Order Value
* Average Customer Revenue

### Visualizations

* Sales by Customer Segment
* Customer Distribution
* Top 10 Customers

### Business Purpose

Identifies the most valuable customer segments and customers.

---

## Page 3 — Geographical Analysis

### KPIs

* Total Sales
* Total Profit
* Customers
* Orders

### Visualizations

* Sales by Country
* Sales by Region
* Top 10 States
* Country Performance Matrix
* Profit Margin Analysis

### Business Purpose

Identifies geographic markets with strong sales and profitability.

---

## Page 4 — Sales Forecast

### KPIs

* Last Actual Sales
* Forecast Sales
* Forecast Growth
* Forecast Accuracy

### Visualizations

* Actual vs Forecast Sales
* Forecast Trend
* Confidence Interval
* Forecast by Category

### Business Purpose

Helps estimate future demand and supports sales and planning decisions.

---

## Page 5 — Demand & Inventory Planning

### KPIs

* Total Quantity
* Average Daily Demand
* Average Delivery Time
* Estimated Reorder Point

### Visualizations

* Top 10 Products by Demand
* Category Demand
* Demand Risk Analysis
* Product Demand Table

### Business Purpose

Highlights products with relatively high historical demand and provides estimated planning metrics for inventory decision support.

---

# 📐 Key DAX Measures

### Total Sales

```DAX
Total Sales =
SUM('Superstore'[Sales])
```

### Total Profit

```DAX
Total Profit =
SUM('Superstore'[Profit])
```

### Total Orders

```DAX
Total Orders =
DISTINCTCOUNT('Superstore'[Order ID])
```

### Distinct Customers

```DAX
Distinct Customers =
DISTINCTCOUNT('Superstore'[Customer ID])
```

### Average Order Value

```DAX
Average Order Value =
DIVIDE(
    [Total Sales],
    [Total Orders],
    0
)
```

### Profit Margin

```DAX
Profit Margin =
DIVIDE(
    [Total Profit],
    [Total Sales],
    0
)
```

### Average Delivery Time

```DAX
Average Delivery Time =
AVERAGE('Superstore'[Delivery Days])
```

---

# 💡 Key Business Insights

The analysis is designed to identify insights such as:

* Which product categories contribute the most revenue?
* Which products are responsible for the highest sales volume?
* Which customer segment generates the largest share of revenue?
* Which countries and regions are strongest performers?
* Which products have high historical demand?
* How does sales performance change across months and years?
* What is the expected direction of future sales?
* Which products may require closer demand monitoring?

> Final numerical insights should be added after completing the analysis so that every statement is supported by the actual dataset.

Example:

```text
Technology generated the highest sales among the three major categories.

The top-performing products contributed a significant share of overall revenue.

Sales showed noticeable seasonal variation across different months.

Several products demonstrated consistently high historical demand,
making them important candidates for demand monitoring.
```

---

# 📁 Project Structure

```text
Ecommerce-Sales-Dashboard/
│
├── data/
│   ├── Global_Superstore.csv
│   └── cleaned_superstore.csv
│
├── notebooks/
│   ├── data_cleaning.ipynb
│   ├── analysis.ipynb
│   └── forecasting.ipynb
│
├── sql/
│   └── analysis.sql
│
├── dashboard/
│   └── Ecommerce Dashboard.pbix
│
├── images/
│   ├── executive_summary.png
│   ├── customer_analysis.png
│   ├── geographical_analysis.png
│   ├── sales_forecast.png
│   └── demand_inventory.png
│
└── README.md
```

---

# 🚀 How to Reproduce the Project

### Step 1 — Clone the repository

```bash
git clone <your-github-repository-url>
```

### Step 2 — Install Python dependencies

```bash
pip install pandas numpy matplotlib seaborn scikit-learn statsmodels
```

If Prophet is used:

```bash
pip install prophet
```

### Step 3 — Run the notebooks

Run the notebooks in this order:

```text
1. data_cleaning.ipynb
2. analysis.ipynb
3. forecasting.ipynb
```

### Step 4 — Review SQL Analysis

Run the queries from:

```text
sql/analysis.sql
```

### Step 5 — Open Power BI

Open:

```text
dashboard/Ecommerce Dashboard.pbix
```

Refresh the dataset and interact with the dashboard filters.

---

# 📌 Business Impact

This project demonstrates how data analytics can support:

* Sales performance monitoring
* Product prioritization
* Customer segmentation
* Geographic performance analysis
* Demand forecasting
* Delivery performance monitoring
* Inventory planning
* Data-driven business decisions

The project focuses on demonstrating the **analytics methodology and decision-making process** rather than claiming real operational inventory savings from simulated inventory metrics.

---

# 🔮 Future Work

The project can be extended by adding:

* Actual inventory transaction data
* Warehouse-level stock information
* Supplier lead times
* Purchase orders
* Stockout history
* Inventory turnover
* Economic Order Quantity (EOQ)
* ABC inventory classification
* Product-level forecasting
* Automated Power BI refresh
* SQL database pipeline
* Cloud deployment
* Real-time inventory monitoring

---

# 🎓 Skills Demonstrated

```text
Python
Pandas
SQL
Power BI
DAX
Data Cleaning
Exploratory Data Analysis
Data Visualization
Time-Series Forecasting
KPI Development
Business Intelligence
Demand Planning
Dashboard Design
Business Storytelling
```

---

# 👨‍💻 Project Summary

**E-Commerce Sales & Demand Planning Dashboard**

An end-to-end analytics project that transforms Global Superstore transaction data into an interactive Power BI solution covering sales performance, profitability, customer behavior, geographic analysis, forecasting, and demand-planning metrics.

The project demonstrates the complete workflow from **raw data → cleaning → EDA → SQL analysis → forecasting → KPI development → Power BI dashboard → business insights**.