# 🛒 Superstore Sales Analysis (SQL)

SQL-based exploratory analysis of retail sales data to uncover business insights around revenue, top products, customer value, and regional performance.

![SQL](https://img.shields.io/badge/SQL-SQLite-blue)
![Status](https://img.shields.io/badge/status-completed-brightgreen)
![License](https://img.shields.io/badge/license-MIT-lightgrey)

---

## 📌 Business Context

Retail companies generate large volumes of transactional data but often struggle to translate it into actionable insight. This project simulates a real-world scenario: analyzing a superstore's sales dataset to answer key business questions that a data analyst might be asked by a sales or operations manager — such as which products drive the most revenue, who the top customers are, and which regions are underperforming.

---

## 📂 Dataset

- **Source:** [Superstore Sales Dataset (Kaggle)](https://www.kaggle.com/datasets/vivek468/superstore-dataset-final)
- **Rows:** ~9,800 transactions
- **Columns include:** Order ID, Order Date, Customer Name, Segment, Region, Category, Sub-Category, Product Name, Sales, Quantity, Discount, Profit

> Note: If you're re-using this repo, download the dataset and place it in the `data/` folder as `superstore.csv`.

---

## 🛠️ Tools Used

- **SQL** (SQLite)
- DB Browser for SQLite / any SQL client of your choice

---

## ❓ Questions Answered

| # | Question | Query File |
|---|----------|-----------|
| 1 | What is the total sales revenue? | [`01_total_revenue.sql`](queries/01_total_revenue.sql) |
| 2 | What are the top 5 selling products? | [`02_top_products.sql`](queries/02_top_products.sql) |
| 3 | How do sales break down by category? | [`03_sales_by_category.sql`](queries/03_sales_by_category.sql) |
| 4 | Who are the top 5 customers by revenue? | [`04_top_customers.sql`](queries/04_top_customers.sql) |
| 5 | Which regions perform best? | [`05_regional_performance.sql`](queries/05_regional_performance.sql) |

---

## 🔍 Sample Query

```sql
-- Top 5 selling products by total revenue
SELECT
    "Product Name",
    SUM(Sales) AS total_revenue,
    SUM(Quantity) AS total_units_sold
FROM superstore
GROUP BY "Product Name"
ORDER BY total_revenue DESC
LIMIT 5;
```

---

## 📊 Key Insights

- *(Fill in with your actual numbers once you re-run the queries)*
- Example: The **West region** contributed the highest share of total revenue.
- Example: **Technology** was the best-performing category by sales.
- Example: The top 5 customers accounted for a disproportionate share of revenue — a potential focus group for retention efforts.

> Add a chart or screenshot here (e.g., a bar chart of sales by category) to make results visual — even a simple Excel/Python chart works well.

---

## 🚀 How to Run

1. Clone this repository
   ```bash
   git clone https://github.com/ayeshamumtaz1057/superstore-sql-analysis.git
   ```
2. Download the dataset and place it in `data/superstore.csv`
3. Open the database using DB Browser for SQLite (or your preferred SQL client)
4. Run the queries in the `queries/` folder in order

---

## 📁 Repository Structure

```
superstore-sql-analysis/
├── data/
│   └── superstore.csv
├── queries/
│   ├── 01_total_revenue.sql
│   ├── 02_top_products.sql
│   ├── 03_sales_by_category.sql
│   ├── 04_top_customers.sql
│   └── 05_regional_performance.sql
├── results/
│   └── (charts/screenshots go here)
├── README.md
└── LICENSE
```

---

## 👤 Author

**Ayesha Mumtaz** — IT Student
[GitHub](https://github.com/ayeshamumtaz1057)

---

## 📄 License

This project is licensed under the MIT License — see the [LICENSE](LICENSE) file for details.

