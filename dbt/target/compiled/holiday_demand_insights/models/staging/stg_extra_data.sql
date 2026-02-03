-- using lowercase to avoid having to use quotes for duckdb
-- use materialize as table for export later



select
    cast("index" as integer) as fact_id,
    cast("IsHoliday" as integer) as is_holiday,
    cast("Temperature" as double) as temperature,
    cast("Fuel_Price" as double) as fuel_price,
    cast("CPI" as double) as cpi,
    cast("Unemployment" as double) as unemployment,
    cast("MarkDown1" as double) as markdown1,
    cast("MarkDown2" as double) as markdown2,
    cast("MarkDown3" as double) as markdown3,
    cast("MarkDown4" as double) as markdown4,
    cast("Size" as integer) as size,
    cast("Type" as varchar) as type
from read_parquet('sample_data/extra_data.parquet')