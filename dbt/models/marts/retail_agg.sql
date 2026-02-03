-- models/marts/retail_agg.sql
WITH src AS (
    SELECT
        month,
        weekly_sales
    FROM {{ ref('retail_clean') }}
)

    SELECT
        month,
        round(avg(weekly_sales), 2) as avg_sales
    FROM src
    GROUP BY month
    ORDER BY month
