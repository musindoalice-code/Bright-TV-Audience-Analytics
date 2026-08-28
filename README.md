# 📺 Bright TV Audience Analytics
### SQL • Business Intelligence • Data Analytics Portfolio Project

This project explores Bright TV subscriber demographics and television viewing behaviour to uncover meaningful patterns and turn the data into practical business insights and executive recommendations.

![Databricks SQL](https://img.shields.io/badge/Databricks-SQL-red?logo=databricks&logoColor=white)
![SQL](https://img.shields.io/badge/SQL-Analytics-blue?logo=postgresql&logoColor=white)
![Power BI](https://img.shields.io/badge/Power_BI-Dashboard-F2C811?logo=powerbi&logoColor=black)
![GitHub](https://img.shields.io/badge/GitHub-Portfolio-181717?logo=github&logoColor=white)
![Excel](https://img.shields.io/badge/Excel-Analysis-217346?logo=microsoft-excel&logoColor=white)

---

## 🚀 Live Interactive Dashboards

One of the goals of this project was to show the same analysis across different Business Intelligence tools. The project therefore includes **five dashboards**, each created using a different platform to demonstrate my ability to work across the BI toolchain.

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

## 📌 Project Information

| Category | Details |
|----------|----------|
| **Project Type** | Business Intelligence & SQL Analytics |
| **Industry** | Media & Entertainment |
| **Tools Used** | Databricks SQL, SQL, Excel, Power BI, Google Data Studio, Lovable, GitHub |
| **Dataset Size** | 5,375 subscribers · 9,983 cleaned viewing sessions (Q1 2016) |
| **Analyst** | Alice Musindo |
| **Status** | Complete |

---

## 📌 Executive Summary

Bright TV wants to better understand how its subscribers engage with television content and how viewing behaviour differs across customer demographics. The aim of this project was to turn raw subscriber and viewing data into insights that can support better programming, audience engagement, advertising, and strategic decisions.

Using Databricks SQL, I followed the full analytics process—from exploring and checking the data, through cleaning and feature engineering, to analysing viewing patterns, developing KPIs, and creating dashboards.

The final project brings together SQL analysis, business intelligence dashboards, and executive recommendations to show how data can be used to support more informed business decisions.

---

## 🌟 Project Highlights

- **Data Integrity:** Cleaned and validated subscriber data by removing 17 duplicate viewing records, standardising inconsistent null values, and flagging 920 incomplete sign-up profiles instead of incorrectly treating them as a real audience segment.
- **Advanced SQL:** Built reusable SQL queries and analytical features using CTEs and window functions.
- **KPI Development:** Developed business-focused metrics, including Average View Duration and subscriber engagement segments.
- **Reporting Ready:** Prepared optimised and pre-aggregated datasets that could be used smoothly across different dashboard tools.
- **Multi-Tool Dashboarding:** Delivered the analysis across Lovable, Power BI, Google Data Studio, Excel, and Databricks dashboards to demonstrate cross-platform reporting skills.

---

## 📑 Table of Contents

- [Live Interactive Dashboards](#-live-interactive-dashboards)
- [Project Information](#-project-information)
- [Executive Summary](#-executive-summary)
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
