-- 08_weather_schema.sql
-- Purpose:
-- Optional SQL schema for storing weather analytics data.
-- Included for portfolio completeness (not required for Power BI execution).

CREATE DATABASE IF NOT EXISTS weather_analytics;
USE weather_analytics;

-- Current weather table
CREATE TABLE current_weather (
    city VARCHAR(50),
    temperature DECIMAL(5,2),
    condition VARCHAR(50),
    humidity INT,
    wind_speed DECIMAL(5,2),
    visibility INT,
    pressure INT,
    uv_index INT,
    pm10 INT,
    pm25 INT,
    o3 INT,
    so2 INT,
    co INT,
    no2 INT,
    aqi INT,
    aqi_status VARCHAR(20),
    last_updated DATETIME
);

-- Daily forecast table
CREATE TABLE forecast_day (
    city VARCHAR(50),
    forecast_date DATE,
    day_name VARCHAR(20),
    temperature DECIMAL(5,2),
    rain_chance INT
);

-- Hourly forecast table
CREATE TABLE forecast_hour (
    city VARCHAR(50),
    forecast_time DATETIME,
    temperature DECIMAL(5,2),
    condition VARCHAR(50)
);

-- City master table
CREATE TABLE city_master (
    city VARCHAR(50),
    sunrise TIME,
    sunset TIME,
    theme VARCHAR(20)
);