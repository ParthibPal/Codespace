# Retail Sales Analytics Dashboard

## Project Overview

This project analyzes retail sales data to identify revenue trends, top-performing categories, and business insights using Python, SQL, and Streamlit.

## Tech Stack

- Python
- Pandas
- NumPy
- SQLite
- Plotly
- Streamlit
- GitHub Codespaces

---

# Project Structure

```
retail-sales-analytics/
│
├── data/
│   ├── raw/
│   │   └── sales.csv
│   │
│   └── processed/
│       └── cleaned_sales.csv
│
├── notebooks/
│   └── eda.ipynb
│
├── src/
│   ├── data_cleaning.py
│   └── analysis.py
│
├── dashboard/
│   └── app.py
│
├── reports/
│
├── requirements.txt
│
├── README.md
│
└── .gitignore
```

---

# Setup Instructions

## 1. Clone Repository

```bash
git clone https://github.com/yourusername/retail-sales-analytics.git
```

```bash
cd retail-sales-analytics
```

---

## 2. Open in GitHub Codespaces

1. Open repository in GitHub.
2. Select **Code**.
3. Select **Codespaces**.
4. Create a new Codespace.

---

## 3. Verify Python Installation

```bash
python --version
```

Expected Output:

```bash
Python 3.x.x
```

---

## 4. Create Virtual Environment

```bash
python -m venv venv
```

Activate Environment:

Linux/Mac/Codespaces

```bash
source venv/bin/activate
```

Windows

```bash
venv\Scripts\activate
```

---

## 5. Install Required Packages

```bash
pip install -r requirements.txt
```

If requirements.txt does not exist:

```bash
pip install pandas numpy matplotlib seaborn plotly streamlit openpyxl jupyter
```

Generate requirements file:

```bash
pip freeze > requirements.txt
```

---

# Dataset Setup

Download a retail sales dataset.

Example:

Superstore Sales Dataset

Place dataset inside:

```text
data/raw/sales.csv
```

---

# Data Cleaning

File:

```text
src/data_cleaning.py
```

Run:

```bash
python src/data_cleaning.py
```

Output:

```text
data/processed/cleaned_sales.csv
```

Purpose:

- Remove missing values
- Format dates
- Prepare data for analysis

---

# Exploratory Data Analysis

Open Notebook:

```bash
jupyter notebook
```

Navigate to:

```text
notebooks/eda.ipynb
```

Analyze:

- Total Revenue
- Monthly Sales
- Category Performance
- Customer Segments
- Regional Performance

---

# SQL Analysis

File:

```text
src/analysis.py
```

Run:

```bash
python src/analysis.py
```

Purpose:

- Load data into SQLite database
- Run SQL queries
- Generate business KPIs

Example Query:

```sql
SELECT Category,
SUM(Sales) AS Revenue
FROM sales
GROUP BY Category;
```

---

# Launch Dashboard

Navigate to project root folder.

Run:

```bash
streamlit run dashboard/app.py
```

Codespaces automatically generates a browser URL.

Open generated URL.

Dashboard Features:

- Total Revenue KPI
- Category Sales Analysis
- Monthly Sales Trend
- Top Products
- Interactive Filters

---

# Business Questions Answered

1. What is the total revenue?
2. Which category generates the highest sales?
3. Which products perform best?
4. What are the monthly sales trends?
5. Which regions contribute most revenue?

---

# Expected Deliverables

After successful execution, the project should contain:

✅ Cleaned Dataset

```text
data/processed/cleaned_sales.csv
```

✅ SQL Analysis

```text
sales.db
```

✅ Jupyter Analysis Notebook

```text
notebooks/eda.ipynb
```

✅ Streamlit Dashboard

```text
dashboard/app.py
```

✅ Documentation

```text
README.md
```

---

# Running Complete Workflow

Step 1

```bash
git clone <repo-url>
```

Step 2

```bash
cd retail-sales-analytics
```

Step 3

```bash
python -m venv venv
```

Step 4

```bash
source venv/bin/activate
```

Step 5

```bash
pip install -r requirements.txt
```

Step 6

```bash
python src/data_cleaning.py
```

Step 7

```bash
python src/analysis.py
```

Step 8

```bash
streamlit run dashboard/app.py
```

Step 9

Open generated Streamlit URL.

Project is now fully operational.

---

# Skills Demonstrated

- Data Cleaning
- Data Validation
- Exploratory Data Analysis
- SQL Querying
- KPI Development
- Data Visualization
- Dashboard Development
- Git & GitHub
- Documentation

---

# Future Enhancements

- PostgreSQL Integration
- Power BI Dashboard
- Automated ETL Pipeline
- Customer Segmentation
- Sales Forecasting
- SAC Integration