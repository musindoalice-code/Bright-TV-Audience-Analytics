# 📺 Bright TV Audience Analytics
### SQL • Business Intelligence • Data Analytics Portfolio Project

This project analyses Bright TV subscriber demographics and television viewing
behaviour to generate data-driven business insights and executive recommendations.

![Databricks SQL](https://img.shields.io/badge/Databricks-SQL-red?logo=databricks&logoColor=white)
![SQL](https://img.shields.io/badge/SQL-Analytics-blue?logo=postgresql&logoColor=white)
![Power BI](https://img.shields.io/badge/Power_BI-Dashboard-F2C811?logo=powerbi&logoColor=black)
![GitHub](https://img.shields.io/badge/GitHub-Portfolio-181717?logo=github&logoColor=white)
![Excel](https://img.shields.io/badge/Excel-Analysis-217346?logo=microsoft-excel&logoColor=white)

## 🚀 Live Interactive Dashboards

This project includes **five dashboards**, each built with a different tool to
demonstrate breadth across the BI toolchain.

| Tool | Link / File | Notes |
|------|-------------|-------|
| 🟢 Lovable (interactive web app) | **[Launch the Live Dashboard](https://audience-lens-tv.lovable.app/)** | Fully interactive — recommended starting point |
| 🔵 Google Data Studio | [Open the Data Studio report](https://datastudio.google.com/s/gtNHaZ92jIg) · [PDF export](4.%20Project%20Presentation/Bright_Tv_Viewership-Data%20Studio%20Dashboard.pdf) | Share link |
| 🟣 Databricks SQL Dashboards | [Viewing Behaviour dashboard](https://dbc-1f555e68-384c.cloud.databricks.com/dashboardsv3/01f196836e2b1daeadac2b6a1fe7dc46/published?o=7474652278053184) · [Second dashboard](https://dbc-1f555e68-384c.cloud.databricks.com/dashboardsv3/01f1a08c59e316f0a3262f16b5ed1cbd/published?o=7474652278053184) | Published links |
| 🟡 Power BI | *`[ADD YOUR PUBLISHED POWER BI LINK HERE]`* — or upload the `.pbix` file to `4. Project Presentation/` | See note below |
| 🟠 Excel | *`[ADD YOUR EXCEL DASHBOARD FILE TO 4. Project Presentation/ AND LINK IT HERE]`* | PivotTable-based dashboard |

> **Try it live:** Click the Lovable link above to interact with the full audience
> analytics dashboard — subscriber demographics, channel performance, viewing
> duration, peak times, provincial patterns, and executive KPIs.

**⚠️ Quick check before submitting:** The Data Studio and Databricks links above
now look like proper share/published links rather than edit links, which is the
right move — but it's still worth opening each one in a private/incognito
browser window (logged out of your own account) to confirm a grader without
access to your Google or Databricks account can actually view them. If either
one prompts for login, you'll need to adjust the sharing settings further.

**⚠️ Action needed:** I still don't have a live URL for your Power BI dashboard or
the file path for your Excel dashboard, so those two rows above are placeholders —
replace the bracketed text with your actual Power BI publish-to-web link and the
filename of your Excel dashboard once it's uploaded to
`4. Project Presentation/`. Leaving bracketed placeholder text in the live
README would look unfinished to a grader, so make sure to fill these in before
submitting.

## 📌 Project Information

| Category | Details |
|----------|----------|
| **Project Type** | Business Intelligence & SQL Analytics |
| **Industry** | Media & Entertainment |
| **Tools Used** | Databricks SQL, SQL, Excel, Power BI, Google Data Studio, Lovable, GitHub |
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
- **Multi-Tool Dashboarding:** Delivered the same analysis across four different
  BI tools (Lovable, Power BI, Google Data Studio, Excel) to demonstrate
  cross-platform reporting skills.

## 📑 Table of Contents

- [Live Interactive Dashboards](#-live-interactive-dashboards)
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
- [Supplementary SQL Practice](#-supplementary-sql-practice)
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

The final deliverables include SQL scripts, business insights, four dashboards,
and executive recommendations demonstrating how data can support informed
business decisions.

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
- Develop interactive dashboard-ready datasets across multiple BI tools.
- Generate business recommendations supported by data.

## 🛠️ Technology Stack

| Tool | Purpose |
|------|---------|
| Databricks SQL | Data exploration, transformation and analysis |
| SQL | Querying, feature engineering and KPI development |
| Microsoft Excel | Data validation, exploratory analysis, and dashboarding |
| Power BI | Interactive dashboard development |
| Google Data Studio | Interactive dashboard development |
| Lovable | Interactive web-based dashboard |
| GitHub | Version control and project portfolio |

## 📂 Dataset Overview

The project uses subscriber and viewing data described in full in
[`1. Project Description and Raw Data/data_dictionary.md`](1.%20Project%20Description%20and%20Raw%20Data/data_dictionary.md).
Source files:

- [`BrightTV_Case_Study.pdf`](1.%20Project%20Description%20and%20Raw%20Data/1782214136910_BrightTV_Case_Study.pdf) — business case study / brief
- [`Bright_TV_-Dataset (2).xlsx`](<1. Project Description and Raw Data/1782214138464_Bright_TV_-Dataset (2).xlsx>) — raw subscriber demographics dataset
- [`raw_viewing_behaviour.csv`](1.%20Project%20Description%20and%20Raw%20Data/raw_viewing_behaviour.csv) — raw viewing sessions (Q1 2016)

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

Full detail: [`2. Project Planning/BRIGHT_TV_PROJECT_PLAN (1).xlsx`](<2. Project Planning/BRIGHT_TV_PROJECT_PLAN (1).xlsx>)
and [`2. Project Planning/business_questions.md`](2.%20Project%20Planning/business_questions.md).

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
| `Duration 2` stored as a time value; screen-time bucket originally mis-classified 1–4 minute sessions as "No Usage" | Bucket boundary corrected so any real viewing time counts as at least "Low" usage |

## ⚙️ Feature Engineering

New features were built as part of `3. Data Processing/03_Data_Cleaning.sql` and
`05_Final_Dataset.sql`:

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
[`2. Project Planning/business_questions.md`](2.%20Project%20Planning/business_questions.md)
and [`4. Project Presentation/BRIGHT_TV_PRESENTATION.pptx`](<4. Project Presentation/BRIGHT_TV_PRESENTATION.pptx>).
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
[`4. Project Presentation/business_recommendations.md`](4.%20Project%20Presentation/business_recommendations.md).
Highlights: prioritise the 3–6pm ad slot, weight programming decisions by
watch-time rather than session count, launch a re-engagement campaign for the ~23%
of subscribers with zero recorded viewing, and fix profile completion at sign-up
before running demographic-targeted campaigns.

## 📚 Supplementary SQL Practice

Additional exercises and notes completed alongside this project are in
[`5. SQL Excercise/`](<5. SQL Excercise/>), covering SQL fundamentals, aggregate
functions & grouping, date functions, NULL functions, and CASE statements.

> **Note on file previews:** GitHub's built-in PDF preview is low-resolution and
> can render some pages blurry or fail to show every page — this is a platform
> limitation, not a problem with the files themselves. Click **"Download"** or
> **"View raw"** on any PDF in this folder to see it at full quality.

## 📁 Repository Structure

```text
Bright-TV-Audience-Analytics/
├── README.md
├── images/
├── sql/
├── 1. Project Description and Raw Data/
│   ├── 1782214136910_BrightTV_Case_Study.pdf
│   ├── 1782214138464_Bright_TV_-Dataset (2).xlsx
│   ├── data_dictionary.md
│   └── raw_viewing_behaviour.csv
├── 2. Project Planning/
│   ├── BRIGHT_TV_PROJECT_PLAN (1).xlsx
│   ├── Planner/
│   └── business_questions.md
├── 3. Data Processing/
│   ├── 01_Data_Exploration.sql
│   ├── 02_Data_Quality_Checks.sql
│   ├── 03_Data_Cleaning.sql
│   ├── 05_Final_Dataset.sql
│   ├── 06_Exploratory_Data_Analysis.sql
│   ├── 07_KPI_Analysis.sql
│   ├── 08_Business_Insights.sql
│   └── queries/
├── 4. Project Presentation/
│   ├── BRIGHT_TV_PRESENTATION.pptx
│   ├── Bright_Tv_Viewership-Data Studio Dashboard.pdf
│   ├── Presentations/
│   └── business_recommendations.md
└── 5. SQL Excercise/
    ├── Data Analytics Notes.pdf
    ├── Excercise/
    ├── SQL Aggregate Functions & Grouping.pdf
    ├── SQL Date Functions & Date Math.pdf
    ├── SQL Exercise_5_NULL_Functions.pdf
    ├── SQL Fundamentals.pdf
    ├── SQL Null Functions.pdf
    ├── SQL case statements.pdf
    └── SQL_Date_Functions_Exercise.pdf
```

## 🎯 Skills Demonstrated

**Technical:** SQL, Databricks SQL, Data Cleaning, Data Transformation, Feature
Engineering, Data Validation, Exploratory Data Analysis, Business Intelligence,
KPI Development, GitHub, Microsoft Excel, Power BI, Google Data Studio.

**Analytical:** Problem Solving, Critical Thinking, Data Storytelling, Business
Analysis, Customer Segmentation, Executive Reporting.

## 🚀 Future Improvements

- Predictive churn modelling using the engagement segments defined here
- Automated SQL reporting
- Extending the analysis beyond Q1 2016 once more data is available
- Publishing the Power BI dashboard to the web for a live, linkable version

## 👤 About Me

Hi, I'm **Alice Musindo**, a Data Analyst with a strong interest in Business
Intelligence, SQL, and data-driven decision-making. This project demonstrates my
ability to clean, transform, analyse, and communicate data to solve real-world
business problems.

Thank you for visiting my repository.
