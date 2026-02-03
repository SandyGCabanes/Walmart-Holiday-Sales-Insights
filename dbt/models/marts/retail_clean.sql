-- models/marts/retail_clean.sql
-- using impute macro, adding month for aggregation

with base as (
    select
        fact_id,
        store_id,
        dept,
        date,
        weekly_sales,
        is_holiday,
        temperature,
        fuel_price,
        cpi,
        unemployment,
        markdown1,
        markdown2,
        markdown3,
        markdown4,
        size,
        type
    from {{ ref('int_retail') }}
),

imputed as (
    select
        fact_id,
        store_id,
        dept,
        date,
        is_holiday,
        temperature,
        fuel_price,
        {{ impute('weekly_sales') }} as weekly_sales, 
        {{ impute('cpi') }} as cpi, 
        {{ impute('unemployment') }} as unemployment,
        markdown1,
        markdown2,
        markdown3,
        markdown4,
        size,
        type
    from base
),

with_month as (
    select
        fact_id,
        store_id,
        dept,
        date,
        is_holiday,
        temperature,
        fuel_price,
        {{ impute('weekly_sales') }} as weekly_sales, 
        {{ impute('cpi') }} as cpi, 
        {{ impute('unemployment') }} as unemployment,
        markdown1,
        markdown2,
        markdown3,
        markdown4,
        size,
        type,
        extract(month from date) as month
    from imputed
)


select *
from with_month