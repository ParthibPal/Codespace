import streamlit as st
import pandas as pd

df = pd.read_csv(
    "data/processed/cleaned_sales.csv"
)

st.title("Retail Sales Dashboard")

st.metric(
    "Total Revenue",
    f"${df['Sales'].sum():,.0f}"
)

st.bar_chart(
    df.groupby("Category")["Sales"].sum()
)
