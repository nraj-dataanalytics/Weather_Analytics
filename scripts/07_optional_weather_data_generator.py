# 07_optional_weather_data_generator.py
# Purpose:
# This script optionally generates or preprocesses weather data
# before loading into Power BI. It is NOT required to run the dashboard,
# but included for portfolio completeness.

import pandas as pd

# Load raw Excel files
current = pd.read_excel("Current.xlsx")
forecast_day = pd.read_excel("Forcast_Day.xlsx")
forecast_hour = pd.read_excel("Forcast_Hour.xlsx")
master = pd.read_excel("MasterReport.xlsx")

# Basic standardization
for df in [current, forecast_day, forecast_hour, master]:
    df.columns = df.columns.str.strip().str.replace(" ", "_")

# Save cleaned versions
current.to_csv("current_clean.csv", index=False)
forecast_day.to_csv("forecast_day_clean.csv", index=False)
forecast_hour.to_csv("forecast_hour_clean.csv", index=False)
master.to_csv("master_clean.csv", index=False)

print("Weather datasets cleaned and exported successfully.")