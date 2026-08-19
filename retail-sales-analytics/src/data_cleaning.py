import pandas as pd

df = pd.read_csv("data/raw/sales.csv")

df.dropna(inplace=True)

df.to_csv(
    "data/processed/cleaned_sales.csv",
    index=False
)

print("Cleaning Complete")
