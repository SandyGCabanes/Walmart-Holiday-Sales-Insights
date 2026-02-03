-- using lowercase to avoid having to use quotes for duckdb
-- use materialize for export later



select
    cast("index" as integer) as fact_id,
    cast("Store_ID" as integer) as store_id,
    cast("Dept" as integer) as dept,
    cast("Date" as date) as date,
    cast("Weekly_Sales" as double) as weekly_sales
from read_csv_auto('sample_data/grocery_sales.csv')