with gs as (
    select
        fact_id,
        store_id,
        dept,
        date,
        weekly_sales
    from "retail"."main"."stg_grocery_sales"
),

ed as (
    select
        fact_id,
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
    from "retail"."main"."stg_extra_data"
)

select
    gs.fact_id,
    gs.store_id,
    gs.dept,
    gs.date,
    gs.weekly_sales,
    ed.is_holiday,
    ed.temperature,
    ed.fuel_price,
    ed.cpi,
    ed.unemployment,
    ed.markdown1,
    ed.markdown2,
    ed.markdown3,
    ed.markdown4,
    ed.size,
    ed.type
from gs
left join ed on gs.fact_id = ed.fact_id