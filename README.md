![Walmart](https://github.com/SandyGCabanes/Walmart-Holiday-Sales-Insights/blob/main/assets/Walmart-Logo-New.png)
# Walmart Holiday Sales Insights 
### dbt, python
## Overview  
This analysis evaluates how holiday timing, department mix, store characteristics, weather, and macroeconomic conditions influence weekly sales. The objective is to surface patterns that can guide seasonal planning, merchandising decisions, and operational readiness.

---

## Holiday Timing Insights  - November Has Strongest Lift
Holiday weeks in the dataset correspond to Super Bowl (February), Labor Day (September), Thanksgiving (November), and Christmas (December).

**Observed patterns:**  
- November shows the strongest lift, driven by pre‑Christmas shopping and Black Friday activity.  
- The week immediately preceding Christmas softens, indicating that most holiday purchasing is completed earlier.  
- Sales normalize quickly after the season, reinforcing the need for rapid post‑holiday recalibration.

**Implication:** Seasonal preparation should begin in October, with labor and inventory concentrated in the pre‑Christmas build. The Christmas week itself does not require elevated staffing.

![Holiday Sales by Month](https://github.com/SandyGCabanes/Walmart-Holiday-Sales-Insights/blob/main/assets/holiday_nonholiday_bymonth.png)

---

## What Departments Drive Holiday Lift
Department 72 (Electronics) shows the largest holiday lift by a wide margin, followed by Media & Gaming (Dept 5) and Toys (Dept 7). These align with typical gifting categories.

**Implication:** Electronics should receive priority in seasonal planning, including feature space, inventory depth, and promotional visibility. Secondary gifting categories should receive proportionate support.

![Departments Driving Holiday Lifts](https://github.com/SandyGCabanes/Walmart-Holiday-Sales-Insights/blob/main/assets/holiday_nonholiday_bydept.png)

---

## What Stores Drive Holiday Lift  
Store 10 significantly outperforms all other locations during holiday periods, both in absolute lift and lift relative to its non‑holiday baseline.

**Implication:** Store 10’s holiday playbook—whether assortment, execution, or local marketing—should be reviewed and selectively replicated in comparable stores.

![Stores Driving Holiday Lifts](https://github.com/SandyGCabanes/Walmart-Holiday-Sales-Insights/blob/main/assets/holiday_lifts_by_store.png)

---

## Weather‑Driven Patterns Observed From the Data
**Comfortable temperatures lift traffic and conversion.**  

**Implication:** Increase promotional activation and category visibility during temperate periods to maximize volume.

**Extreme heat or cold suppresses trips.**  

**Implication:** Shift to weather‑responsive merchandising that prioritizes the items customers reach for first under each condition (hydration in heat, warming foods in cold). Reinforce digital channels to reduce friction for customers who prefer not to travel.

![Weather Impact on Sales](https://github.com/SandyGCabanes/Walmart-Holiday-Sales-Insights/blob/main/assets/temp_impact_weekly_sales.png)



---

## Macroeconomic Effects on Sales
High unemployment materially dampens sales. CPI shows a moderate negative effect at mid‑to‑high levels.

**Implication:** During macro‑pressure periods, tighten assortments, emphasize value tiers, and use targeted promotions rather than broad discounting. Marketing should focus on essentials and retention to protect traffic without eroding margin.

![Unemployment Impact on Sales](https://github.com/SandyGCabanes/Walmart-Holiday-Sales-Insights/blob/main/assets/avg_sales_by_unemployment.png)
![CPI Impact on Sales](https://github.com/SandyGCabanes/Walmart-Holiday-Sales-Insights/blob/main/assets/avg_sales_by_cpi.png)

---

## Do Store Size and Type Have Different Holiday Lifts  
Both store types show holiday lift, but statistical testing indicates no meaningful difference between them.

**Implication:** Holiday strategy does not need to be differentiated by store type; focus should remain on individual store performance patterns rather than format‑level adjustments.

![Holiday Lifts by Store Type](https://github.com/SandyGCabanes/Walmart-Holiday-Sales-Insights/blob/main/assets/holiday_lifts_by_store_type.png)
---
Recap of Findings:

**Holiday timing**  
- November is the real peak because shoppers start early and Black Friday pulls demand forward.  
- The week right before Christmas dips since most people finish buying earlier.  
- Sales drop back to normal immediately after, so stores need to reset fast.

**Category mix**  
- Electronics leads holiday lift by a wide margin, followed by Media/Gaming and Toys.  
- These are classic gifting categories, so they deserve the most space and attention during the season.

**Store‑level patterns**  
- One store consistently outperforms during holiday weeks, both in absolute lift and relative to its baseline.  
- That kind of outlier usually points to strong local execution or a favorable trade area worth studying.

**Weather effects**  
- Comfortable temperatures help traffic and conversion.  
- Extreme heat or cold pushes shoppers toward essentials and reduces casual trips.  
- Operators can adjust labor and endcaps around these shifts.

**Macroeconomic signals**  
- Higher unemployment pulls discretionary spending down.  
- Rising prices push customers toward value tiers or delayed purchases.  
- Retailers can respond by tightening assortments and focusing promotions where they matter.

**Store format**  
- Both formats lift during holidays, and the difference between them is not meaningful.  
- The real variation happens at the store level, not the format level.

---

## Description of Work Done:
- Created a data pipeline using dbt-duckdb for sql transformations.  Joined csv extract from Postgres to parquet data.
- [Click here for the dbt codes](https://github.com/SandyGCabanes/Walmart-Holiday-Sales-Insights/tree/main/dbt)
- Cleaned csv used for python analysis in jupyter notebook.
- [Click here for the python code for the insights and the exploratory data analysis](https://github.com/SandyGCabanes/Walmart-Holiday-Sales-Insights/tree/main/python)
  
---
## Resources:
- [Click here for the Postgres and parquet data sets](https://app.datacamp.com/learn/projects/1833)
- The final dataset has 231483 rows, 17 columns
- numeric_cols: ['fact_id', 'store_id', 'dept', 'is_holiday', 'temperature', 'fuel_price', 'weekly_sales', 'cpi', 'unemployment', 'markdown1', 'markdown2', 'markdown3', 'markdown4', 'size', 'type', 'month']
- date_cols: ['date']
- Min date: 2010-02-05 00:00:00, Max date: 2012-10-26 00:00:00

