![Bright TV Audience Analytics](bright-tv-banner.png)

# 📺 Bright TV Audience Analytics
### SQL • Business Intelligence • Data Analytics Portfolio Project

![Databricks SQL](https://img.shields.io/badge/Databricks-SQL-red?logo=databricks&logoColor=white)
![SQL](https://img.shields.io/badge/SQL-Analytics-blue?logo=postgresql&logoColor=white)
![Power BI](https://img.shields.io/badge/Power_BI-Dashboard-F2C811?logo=powerbi&logoColor=black)
![GitHub](https://img.shields.io/badge/GitHub-Portfolio-181717?logo=github&logoColor=white)
![Excel](https://img.shields.io/badge/Excel-Analysis-217346?logo=microsoft-excel&logoColor=white)

---

## 📺 30-Second Read

> **5,375 subscribers. 9,983 cleaned viewing sessions. One SQL analysis, delivered five different ways.**
> This project turns Bright TV's subscriber and viewing data into a clear picture of who's watching, when, and where — built so a lecturer, recruiter, or executive can open it in whichever tool they already trust.

I took raw subscriber demographics and Q1 2016 viewing logs through a full analytics pipeline in Databricks SQL — cleaning, feature engineering, KPI development — then delivered the same story through Lovable, Power BI, Google Data Studio, Excel, and Databricks dashboards.

> ⚠️ **Note on this section:** your original README's Table of Contents references dedicated **Executive KPIs** and **Business Recommendations** sections further down, but that content wasn't included in what you pasted here. I've restructured everything you did share, but I'd rather ask than invent your actual audience findings — paste those two sections in and I'll pull the real numbers and recommendations up into the summary below, where they'll have the most impact.

---

## 📌 Executive Summary

| Category | Details |
|---|---|
| Project Type | Business Intelligence & SQL Analytics |
| Industry | Media & Entertainment |
| Dataset Size | 5,375 subscribers · 9,983 cleaned viewing sessions (Q1 2016) |
| Tools Delivered | Databricks SQL, SQL, Excel, Power BI, Google Data Studio, Lovable, GitHub |
| Analyst | Alice Musindo |
| Status | Complete |

Bright TV wants to understand how subscribers engage with content and how that behaviour differs across demographics, in order to make better calls on programming, advertising, and retention. This project turns the raw subscriber and viewing data into a decision-ready analysis, delivered across five BI platforms so it reaches whichever stakeholder is reviewing it.

---

## 🌟 Project Highlights

- **Data integrity, not vanity metrics.** Removed 17 duplicate viewing records, standardised inconsistent nulls, and flagged 920 incomplete sign-up profiles instead of miscounting them as a real audience segment.
- **Reusable, not one-off, SQL.** Built CTEs and window functions into business-facing KPIs (e.g. Average View Duration, engagement segments) that hold up beyond this single report.
- **One analysis, five audiences.** The same conclusions are delivered through Lovable (interactive web app), Power BI, Google Data Studio, Excel, and Databricks — so the format never gets in the way of the finding.

---

## 🚀 Live Interactive Dashboards

| Tool | Link / File | Notes |
|------|-------------|-------|
| 🟢 Lovable (interactive web app) | **[Launch the Live Dashboard](https://audience-lens-tv.lovable.app/)** | Fully interactive — recommended starting point |
| 🔵 Google Data Studio | [Open the Data Studio report](https://datastudio.google.com/s/gtNHaZ92jIg) · [PDF export](4.%20Project%20Presentation/Bright_Tv_Viewership-Data%20Studio%20Dashboard.pdf) | Share link |
| 🟣 Databricks SQL Dashboards | [Viewing Behaviour dashboard](https://dbc-1f555e68-384c.cloud.databricks.com/dashboardsv3/01f196836e2b1daeadac2b6a1fe7dc46/published?o=7474652278053184) · [Second dashboard](https://dbc-1f555e68-384c.cloud.databricks.com/dashboardsv3/01f1a08c59e316f0a3262f16b5ed1cbd/published?o=7474652278053184) | Published links |
| 🟡 Power BI | *`[ADD YOUR PUBLISHED POWER BI LINK HERE]`* — or upload the `.pbix` file to `4. Project Presentation/` | See note below |
| 🟠 Excel | *`[ADD YOUR EXCEL DASHBOARD FILE TO 4. Project Presentation/ AND LINK IT HERE]`* | PivotTable-based dashboard |

> **Try it live:** Start with the Lovable dashboard above for the full interactive experience. It brings together subscriber demographics, channel performance, viewing duration, peak viewing times, provincial patterns, and executive KPIs in one place.

**⚠️ Quick check before submitting:** The Data Studio and Databricks links above are set up as share or published links rather than edit links. Before submitting, it is still a good idea to open each link in a private/incognito browser window while logged out of your own account. This will help confirm that a lecturer, recruiter, or grader can access the dashboards without needing your account details.

**⚠️ Action needed:** The Power BI and Excel rows are currently placeholders. Before submitting the final version of this README, replace the bracketed text with your published Power BI link and the correct filename or link for your Excel dashboard once it has been uploaded to `4. Project Presentation/`. This will ensure the repository looks complete and portfolio-ready.

---

## 📑 Table of Contents

- [30-Second Read](#-30-second-read)
- [Executive Summary](#-executive-summary)
- [Project Highlights](#-project-highlights)
- [Live Interactive Dashboards](#-live-interactive-dashboards)
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

---

## 🎯 Business Problem

Bright TV faces challenges around subscriber churn and low engagement during certain broadcasting periods. Management needs a clearer view of how different subscriber groups interact with television content so that they can make better decisions around programming, advertising, and customer engagement.

The challenge was to turn the available data into useful business intelligence that could answer questions such as:

- Who are Bright TV's main viewers?
- Which television channels attract the largest audiences?
- When are viewers most likely to watch television?
- Which provinces show the highest levels of engagement?
- Which customer segments could benefit from targeted marketing campaigns?
- How can Bright TV improve customer retention and viewer engagement?

This project uses SQL and Business Intelligence techniques to explore these questions and turn the findings into practical recommendations.

---

## 🎯 Project Objectives

The main objectives of this project were to:

- Identify key factors influencing subscriber viewership and drop-offs.
- Segment audience demographics to support targeted advertising campaigns.
- Carry out a comprehensive data quality assessment.
- Identify and resolve missing or inconsistent values.
- Prepare clean datasets for analysis.
- Create new business-focused features.
- Analyse subscriber demographics and television viewing behaviour.
- Calculate executive-level KPIs.
- Prepare interactive, dashboard-ready datasets across multiple BI tools.
- Generate business recommendations supported by the data.

---

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

---

## 📂 Dataset Overview

This project uses subscriber demographic data together with television viewing data. A full description of the dataset and its fields is available in [`1. Project Description and Raw Data/data_dictionary.md`](1.%20Project%20Description%20and%20Raw%20Data/data_dictionary.md).

The main source files used were:

- [`BrightTV_Case_Study.pdf`](1.%20Project%20Description%20and%20Raw%20Data/1782214136910_BrightTV_Case_Study.pdf) — the business case study and project brief
- [`Bright_TV_-Dataset (2).xlsx`](<1. Project Description and Raw Data/1782214138464_Bright_TV_-Dataset (2).xlsx>) — the raw subscriber demographics dataset
- [`raw_viewing_behaviour.csv`](1.%20Project%20Description%20and%20Raw%20Data/raw_viewing_behaviour.csv) — raw television viewing sessions from Q1 2016

---

## 🗂️ Data Model

The analysis connects subscriber demographic information to viewing behaviour using the subscriber ID.

```text
┌──────────────────────────────┐
│   subscriber_demographics     │
├──────────────────────────────┤
│ UserID (Primary Key)          │
│ Region                        │
│ age / age_groups              │
│ Race                          │
│ Gender                        │
│ email_flag / sm_flag          │
└──────────────┬────────────────┘
               │
               │ UserID = sub_id
               ▼
┌──────────────────────────────┐
│      viewing_behaviour        │
├──────────────────────────────┤
│ sub_id (Foreign Key)          │
│ watch_date, month_id          │
│ Tv_channel                    │
│ time_of_day / hour_of_day     │
│ duration                      │
│ day_classification            │
└──────────────────────────────┘
```


