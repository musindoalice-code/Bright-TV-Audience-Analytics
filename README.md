# 📺 Bright TV Audience Analytics
### SQL • Business Intelligence • Data Analytics Portfolio Project

This project analyses Bright TV subscriber demographics and television viewing
behaviour to generate data-driven business insights and executive recommendations.

![Databricks SQL](https://img.shields.io/badge/Databricks-SQL-red?logo=databricks&logoColor=white)
![SQL](https://img.shields.io/badge/SQL-Analytics-blue?logo=postgresql&logoColor=white)
![Power BI](https://img.shields.io/badge/Power_BI-Dashboard-F2C811?logo=powerbi&logoColor=black)
![GitHub](https://img.shields.io/badge/GitHub-Portfolio-181717?logo=github&logoColor=white)
![Excel](https://img.shields.io/badge/Excel-Analysis-217346?logo=microsoft-excel&logoColor=white)

## 📌 Project Information

| Category | Details |
|----------|----------|
| **Project Type** | Business Intelligence & SQL Analytics |
| **Industry** | Media & Entertainment |
| **Tools Used** | Databricks SQL, SQL, Excel, Power BI, GitHub |
| **Dataset Size** | 5,375 subscribers · 9,983 cleaned viewing sessions (Q1 2016) |
| **Analyst** | Alice Musindo |
| **Status** | Complete |

## 📌 Executive Summary

## 🌟 Project Highlights

- **Data Integrity:** Cleaned and validated subscriber data — removed 17 duplicate
  viewing records, standardised inconsistent nulls, and flagged 920 incomplete
  sign-up profiles instead of treating them as a real audience segment.
- **Advanced SQL:** Built reusable SQL queries and analytical features using CTEs and
  window functions.
- **KPI Development:** Developed business-focused metrics (e.g. Average View
  Duration, subscriber engagement segments).
- **Reporting Ready:** Prepared optimised, pre-aggregated datasets for seamless
  dashboard importing.

## 📑 Table of Contents

- [Project Information](#-project-information)
- [Project Highlights](#-project-highlights)
- [Business Problem](#-business-problem)
- [Project Objectives](#-project-objectives)
- [Technology Stack](#️-technology-stack)
- [Dataset Overview](#-dataset-overview)
- [Data Model](#️-data-model)
- [Project Workflow](#-project-workflow)
- [Data Cleaning & Preparation](#-data-cleaning--preparation)
- [Feature Engineering](#-feature-engineering)
- [SQL Skills Demonstrated](#-sql-skills-demonstrated)
- [Business Questions Answered](#-business-questions-answered)
- [Executive KPIs](#-executive-kpis)
- [Business Recommendations](#-business-recommendations)
- [Repository Structure](#-repository-structure)
- [Skills Demonstrated](#-skills-demonstrated)
- [Future Improvements](#-future-improvements)
- [About Me](#-about-me)

Bright TV aims to better understand audience viewing behaviour and customer
demographics to improve programming decisions, audience engagement, and strategic
planning.

This project analyses television viewing records alongside subscriber demographic
information using Databricks SQL. It follows a complete analytics lifecycle:
data exploration, quality assessment, cleaning, feature engineering, exploratory
analysis, KPI development, and business recommendations.

The final deliverables include SQL scripts, business insights, and executive
recommendations demonstrating how data can support informed business decisions.

## 🎯 Business Problem

Bright TV experiences high subscriber churn and low engagement on specific
broadcasting slots. Management lacks centralised visibility into how different
subscriber demographics interact with existing TV content, limiting their ability
to optimise ad revenue and program scheduling.

The challenge is to transform this data into actionable intelligence that answers
critical business questions, including:

- Who are Bright TV's primary viewers?
- Which television channels attract the largest audiences?
- When do viewers watch television the most?
- Which provinces have the highest engagement?
- Which customer segments should receive targeted marketing campaigns?
- How can Bright TV improve customer retention and viewer engagement?

This project addresses these questions through SQL analysis and business
intelligence techniques.

## 🎯 Project Objectives

- Identify key factors driving subscriber viewership and drop-offs.
- Segment audience demographics to optimise targeted advertising campaigns.
- Perform comprehensive data quality assessment.
- Identify and resolve missing and inconsistent values.
- Prepare clean analytical datasets.
- Engineer new business-focused features.
- Analyse audience demographics and television viewing behaviour.
- Calculate executive KPIs.
- Develop interactive dashboard-ready datasets.
- Generate business recommendations supported by data.

## 🛠️ Technology Stack

| Tool | Purpose |
|------|---------|
| Databricks SQL | Data exploration, transformation and analysis |
| SQL | Querying, feature engineering and KPI development |
| Microsoft Excel | Data validation and exploratory analysis |
| Power BI | Interactive dashboard development |
| GitHub | Version control and project portfolio |

## 📂 Dataset Overview

The project uses two raw tables — `subscriber_demographics` (5,375 rows) and
`viewing_behaviour` (10,000 rows, Q1 2016) — described in full in
[`1. Project Description and Raw Data/data_dictionary.md`](<1. Project Description and Raw Data/data_dictionary.md>).

## 🗂️ Data Model

```text
┌──────────────────────────────┐
│   subscriber_demographics     │
├──────────────────────────────┤
│ UserID (Primary Key)          │
│ Region                        │
│ age / age_groups               │
│ Race                           │
│ Gender                         │
│ email_flag / sm_flag           │
└──────────────┬────────────────┘
               │
               │ UserID = sub_id
               ▼
┌──────────────────────────────┐
│      viewing_behaviour        │
├──────────────────────────────┤
│ sub_id (Foreign Key)           │
│ watch_date, month_id           │
│ Tv_channel                     │
│ time_of_day / hour_of_day       │
│ duration                       │
│ day_classification              │
└──────────────────────────────┘
```

## 🔄 Project Workflow

```text
Business Problem → Data Collection → Data Quality Assessment → Data Cleaning
→ Feature Engineering → Exploratory Data Analysis (SQL) → Business KPI Development
→ Dashboard Design → Business Insights → Executive Recommendations
```

Full detail: [`2. Project Planning/project_workflow.md`](<2. Project Planning/project_workflow.md>)

## 🧹 Data Cleaning & Preparation

Data quality checks were run in Databricks SQL before any analysis
(`3. Data Processing/01_data_quality_checks.sql`). Key findings and how they were
resolved (`02_data_cleaning.sql`):

| Issue Found | Resolution |
|---|---|
| 17 fully duplicated viewing records | Removed via `SELECT DISTINCT` |
| Race missing on 25.2% of subscribers | Standardised to `Uncategorized` |
| Gender missing on 17.1% of subscribers | Standardised to `Uncategorized` |
| `Region = 'Uncategorized'` for 920 subscribers | Kept visible, flagged with `region_is_unknown`, excluded from "top province" rankings |
| 920 subscribers recorded at `age = 0` | Flagged with `is_incomplete_profile`; excluded from age-based demographic analysis rather than reported as a real "Infants" segment |
| `duration` stored as `HH:MM:SS` text | Converted to `duration_seconds` / `duration_minutes` for aggregation |

## ⚙️ Feature Engineering

New features built in `3. Data Processing/03_feature_engineering.sql`:

| Feature | Business Purpose |
|----------|------------------|
| `duration_minutes` | Numeric, aggregatable version of session length |
| `is_weekend` | Numeric weekend flag for direct SUM/AVG use |
| `is_heavy_viewer` | Session-level heavy-usage flag (>60 min) |
| `engagement_score` | Simple per-session engagement metric for dashboarding |
| `daypart_group` | AM/PM grouping for a simpler executive dashboard slicer |
| `subscriber_segment` | Subscriber-level tier: Inactive / Light / Regular / Power Viewer, based on total minutes watched |

## 💻 SQL Skills Demonstrated

- **Data Exploration:** SELECT, DISTINCT, LIMIT
- **Data Quality:** COUNT(), GROUP BY, HAVING, NULL checks, duplicate detection
- **Data Cleaning:** CASE WHEN, COALESCE(), standardisation, missing value handling
- **Feature Engineering:** CAST(), SPLIT(), derived columns, time and age
  categorisation
- **Data Analysis:** Aggregate functions, CTEs, window functions (RANK, AVG OVER),
  business KPIs, customer segmentation

## 📌❓ Business Questions Answered

Full list with figures in
[`4. Project Presentation/executive_summary.md`](<4. Project Presentation/executive_summary.md>).
Covers audience analysis (subscriber counts, province, age group, gender, race),
viewing behaviour (channel popularity, peak times, weekday/weekend split, heavy
users), and business intelligence (target segments, under-engaged provinces,
channel investment by daypart).

## 📊 Executive KPIs

| KPI | Value |
|------|---|
| Total Subscribers | 5,375 |
| Total Viewing Sessions | 9,983 (cleaned) |
| Average Watch Duration | 10.0 min (active sessions) |
| Most Watched Channel (by minutes) | ICC Cricket World Cup 2011 |
| Top Province | Gauteng |
| Largest Age Group | Youth (20–35) |
| Peak Viewing Hour | 15:00 |
| Weekend Viewership | 30.5% of sessions |

## 💡 Business Recommendations

Full detail in
[`4. Project Presentation/business_recommendations.md`](<4. Project Presentation/business_recommendations.md>).
Highlights: prioritise the 3–6pm ad slot, weight programming decisions by
watch-time rather than session count, launch a re-engagement campaign for the ~23%
of subscribers with zero recorded viewing, and fix profile completion at sign-up
before running demographic-targeted campaigns.

## 📁 Repository Structure

```text
Bright-TV-Audience-Analytics/
├── README.md
├── images/
├── 1. Project Description and Raw Data/
│   ├── raw_subscriber_demographics.csv
│   ├── raw_viewing_behaviour.csv
│   └── data_dictionary.md
├── 2. Project Planning/
│   ├── business_questions.md
│   └── project_workflow.md
├── 3. Data Processing/
│   ├── 01_data_quality_checks.sql
│   ├── 02_data_cleaning.sql
│   ├── 03_feature_engineering.sql
│   └── 04_eda_and_kpis.sql
└── 4. Project Presentation/
    ├── executive_summary.md
    └── business_recommendations.md
```

## 🎯 Skills Demonstrated

**Technical:** SQL, Databricks SQL, Data Cleaning, Data Transformation, Feature
Engineering, Data Validation, Exploratory Data Analysis, Business Intelligence,
KPI Development, GitHub, Microsoft Excel.

**Analytical:** Problem Solving, Critical Thinking, Data Storytelling, Business
Analysis, Customer Segmentation, Executive Reporting.

## 🚀 Future Improvements

- Interactive Power BI dashboard built on `subscriber_engagement_summary`
- Predictive churn modelling using the engagement segments defined here
- Automated SQL reporting
- Extending the analysis beyond Q1 2016 once more data is available

## 👤 About Me

Hi, I'm **Alice Musindo**, a Data Analyst with a strong interest in Business
Intelligence, SQL, and data-driven decision-making. This project demonstrates my
ability to clean, transform, analyse, and communicate data to solve real-world
business problems.

Thank you for visiting my repository.
