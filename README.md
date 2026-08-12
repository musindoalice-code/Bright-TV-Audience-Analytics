# 📺 Bright TV Audience Analytics
### SQL • Business Intelligence • Data Analytics Portfolio Project

This project analyses Bright TV subscriber demographics and television viewing
behaviour to generate data-driven business insights and executive recommendations.

![Databricks SQL](https://img.shields.io/badge/Databricks-SQL-red?logo=databricks&logoColor=white)
![SQL](https://img.shields.io/badge/SQL-Analytics-blue?logo=postgresql&logoColor=white)
![Power BI](https://img.shields.io/badge/Power_BI-Dashboard-F2C811?logo=powerbi&logoColor=black)
![GitHub](https://img.shields.io/badge/GitHub-Portfolio-181717?logo=github&logoColor=white)
![Excel](https://img.shields.io/badge/Excel-Analysis-217346?logo=microsoft-excel&logoColor=white)

## 🚀 Live Interactive Dashboard

Explore the **Bright TV Audience Analytics Dashboard** to interact with the analysis, explore audience behaviour, and discover key viewing insights.

### 📊 [Launch the Live Dashboard](https://audience-lens-tv.lovable.app/)

**Dashboard:** https://audience-lens-tv.lovable.app/

The dashboard provides an interactive view of:

* 👥 Subscriber demographics
* 📺 Channel performance
* ⏱️ Viewing duration and engagement
* 🕒 Peak viewing times
* 📍 Provincial audience patterns
* 📅 Viewing behaviour by day and time
* 🎯 Audience segments
* 📈 Executive KPIs and business insights

> **Try the dashboard:** Click the link above to explore the Bright TV audience analytics interactively.

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
(`3. Data Processing/02_Data_Quality_Checks.sql`). Key findings and how they were
resolved (`03_Data_Cleaning.sql`):

| Issue Found | Resolution |
|---|---|
| Raw viewership table carries the subscriber ID across two separate columns (`UserID0`, `userid4`) | Resolved with `COALESCE(UserID0, userid4)` |
| Duplicate viewing records (same subscriber, timestamp, channel, duration logged twice) | Removed via `ROW_NUMBER()` dedup |
| Race missing / recorded as `'other'` on ~25% of subscribers | Standardised to `'None'` |
| Gender missing on ~17% of subscribers | Standardised to `'None'` |
| `Province` recorded as blank text or `'None'` for 920 subscribers | Standardised to `'Uncategorized'`; excluded from "top province" rankings since it isn't a real province |
| 920 subscribers recorded at `age = 0` | Flagged with `is_incomplete_profile`; excluded from age-based demographic analysis rather than reported as a real "Infants" segment |
| `email_flag` / `sm_flag` logic bug — original `OR`-based condition evaluated to 1 for every row regardless of the actual data | Rewritten to correctly check for a genuinely missing value |
| Raw channel names inconsistent (`SawSee`/`Sawsee`, four labels for the same Live Events channel) | Standardised in `03_Data_Cleaning.sql` |
| `Duration 2` stored as a time value; screen-time bucket originally mis-classified 1–4 minute sessions as "No Usage" | Bucket boundary corrected so any real viewing time counts as at least "Low Usage" |

## ⚙️ Feature Engineering

New features built in `3. Data Processing/04_Feature_Engineering.sql`:

| Feature | Business Purpose |
|----------|------------------|
| `age_groups` | Audience segmentation (Infants/Kids/Teenager/Youth/Adult/Elder/Pensioner) |
| `is_incomplete_profile` | Separates likely-incomplete sign-ups from real demographic data |
| `day_classification` | Weekend vs weekday comparison |
| `time_of_day` / `hour_of_day` | Peak viewing analysis |
| `screen_time_bucket` | Viewer engagement analysis |
| `month_id` / `month_name` | Monthly trend reporting |

## 💻 SQL Skills Demonstrated

- **Data Exploration:** SELECT, DISTINCT, LIMIT
- **Data Quality:** COUNT(), GROUP BY, HAVING, NULL checks, duplicate detection,
  referential integrity checks
- **Data Cleaning:** CASE WHEN, COALESCE(), TRIM(), standardisation, ROW_NUMBER()
  deduplication, view creation
- **Feature Engineering:** DATE_FORMAT(), HOUR(), CAST(), derived columns, time and
  age categorisation
- **Data Analysis:** Aggregate functions, CTEs, window functions (RANK, AVG/COUNT
  OVER), business KPIs, customer segmentation

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
│   ├── 01_Data_Exploration.sql
│   ├── 02_Data_Quality_Checks.sql
│   ├── 03_Data_Cleaning.sql
│   ├── 04_Feature_Engineering.sql
│   ├── 05_Final_Dataset.sql
│   ├── 06_Exploratory_Data_Analysis.sql
│   ├── 07_KPI_Analysis.sql
│   └── 08_Business_Insights.sql
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
