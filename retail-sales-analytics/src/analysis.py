import sqlite3
import pandas as pd

df = pd.read_csv(
    "data/processed/cleaned_sales.csv"
)

conn = sqlite3.connect("sales.db")

df.to_sql(
    "sales",
    conn,
    if_exists="replace",
    index=False
)

query = """
SELECT Category,
SUM(Sales) AS Revenue
FROM sales
GROUP BY Category
"""

result = pd.read_sql(query, conn)

print(result)