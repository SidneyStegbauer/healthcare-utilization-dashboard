## Healthcare Utilization & Cost Analysis

## Project Overview

This project analyzes hospital utilization and billing data using SQL and Tableau to identify patterns in admissions, disease prevalence, departmental billing, and utilization over time.

The project demonstrates an end-to-end analytics workflow, including querying relational healthcare data with SQL, joining multiple tables, calculating key utilization and financial metrics, and developing an interactive Tableau dashboard to communicate findings.

## Tools Used

- SQL (SQLite)
- DB Browser for SQLite
- Tableau Public
- GitHub

## SQL Analysis

SQL was used to explore and analyze hospital admission and billing data.

Key analyses included:

- Total admissions by admission type
- Admissions by department
- Average hospital length of stay
- Average length of stay by department
- Top diseases by number of admissions
- Overall average and total billing
- Average and total billing by department
- Admissions and billing by admission type

SQL techniques demonstrated include:

- SELECT statements
- Aggregate functions (`COUNT`, `AVG`, `SUM`)
- `GROUP BY`
- `ORDER BY`
- `LIMIT`
- `ROUND`
- Date calculations
- Table joins
- Multi-table joins

## Tableau Dashboard

An interactive Tableau dashboard was developed to visualize key hospital utilization and financial metrics.
![Hospital Analytics Dashboard](Dashboard%201.png)

The dashboard includes:

- **Top 10 Admissions by Disease**
- **Total Billing by Department**
- **Monthly Admissions Trend (2020–2025)**
- **Admissions by Type**

## Key Findings

- Stroke and sepsis were among the most frequently recorded diseases in the dataset.
- Elective admissions accounted for a larger share of admissions than emergency admissions.
- Hospital admission volume remained relatively stable from 2020 through 2025, with month-to-month variation.
- Surgery generated the highest total billing among the departments included in the billing analysis.

## Repository Contents

- `healthcare_analysis.sql` — SQL queries used for healthcare utilization and cost analysis
- `README.md` — Project documentation
- - `Dashboard 1.png` — Preview image of the Tableau dashboard

## Tableau Visualization

Interactive Tableau Public dashboard:

**[View the Healthcare Utilization Dashboard on Tableau Public](https://public.tableau.com/views/HospitalAnalyticsDashboard_17869304139480/Dashboard1?:language=en-US&:sid=&:redirect=auth&:display_count=n&:origin=viz_share_link)**

## Skills Demonstrated

SQL • Data Analysis • Healthcare Analytics • Data Visualization • Tableau • Relational Data • Data Aggregation • Data Storytelling
