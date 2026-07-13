<p align="center">
  <img src="images/banner.png" alt="Bright TV Audience Analytics Banner" width="100%">
</p>

# 📺 Bright TV Audience Analytics

### SQL • Business Intelligence • Data Analytics Portfolio Project

This project analyses Bright TV subscriber demographics and television viewing behaviour to generate data-driven business insights and executive recommendations.

![Databricks SQL](https://img.shields.io/badge/Databricks-SQL-red?logo=databricks&logoColor=white)
![SQL](https://img.shields.io/badge/SQL-Analytics-blue?logo=postgresql&logoColor=white)
![Power BI](https://img.shields.io/badge/Power_BI-Dashboard-F2C811?logo=powerbi&logoColor=black)
![GitHub](https://img.shields.io/badge/GitHub-Portfolio-181717?logo=github&logoColor=white)
![Excel](https://img.shields.io/badge/Excel-Analysis-217346?logo=microsoft-excel&logoColor=white)

## 📌 Project Information

| Category | Details |
|----------|----------|
| Project Type | Business Intelligence & SQL Analytics |
| Industry | Media & Entertainment |
| Tools Used | Databricks SQL, SQL, Excel, Power BI, GitHub |
| Dataset Size | Add your actual number of records |
| Analyst | Alice Musindo |
| Status | In Progress |

## End-to-End Business Intelligence & SQL Analytics Project

## 📌 Executive Summary

# 🌟 Project Highlights
✅ Cleaned and validated subscriber data

✅ Standardised inconsistent values

✅ Built reusable SQL queries

✅ Created analytical features for reporting

✅ Joined multiple datasets using SQL

✅ Developed business-focused KPIs

✅ Prepared dashboard-ready datasets

✅ Generated actionable business recommendations

# 📑 Table of Contents

- [📌 Project Information](#-project-information)
- [📌 Executive Summary](#-executive-summary)
- [🌟 Project Highlights](#-project-highlights)
- [🎯 Business Problem](#-business-problem)
- [🎯 Project Objectives](#-project-objectives)
- [🛠️ Technology Stack](#️-technology-stack)
- [📂 Dataset Overview](#-dataset-overview)
- [📖 Data Dictionary](#-data-dictionary)
- [🗂️ Data Model](#️-data-model)
- [🔄 Project Workflow](#-project-workflow)
- [🧹 Data Cleaning & Preparation](#-data-cleaning--preparation)
- [⚙️ Feature Engineering](#️-feature-engineering)
- [📊 Exploratory Data Analysis](#-exploratory-data-analysis-eda)
- [💻 SQL Skills Demonstrated](#-sql-skills-demonstrated)
- [📌 Business Questions Answered](#-business-questions-answered)
- [📊 Executive KPIs](#-executive-kpis)
- [📈 Dashboard Preview](#-dashboard-preview)
- [💡 Business Recommendations](#-business-recommendations)
- [📁 Repository Structure](#-repository-structure)
- [🎯 Skills Demonstrated](#-skills-demonstrated)
- [🚀 Future Improvements](#-future-improvements)
- [👤 About Me](#-about-me)
- [📬 Contact](#-contact)
  
Bright TV aims to better understand audience viewing behaviour and customer demographics to improve programming decisions, audience engagement, and strategic planning.

This project analyses television viewing records alongside subscriber demographic information using Databricks SQL. The project follows a complete analytics lifecycle, including data exploration, quality assessment, cleaning, feature engineering, exploratory analysis, KPI development, and business recommendations.

The final deliverables include SQL scripts, business insights, interactive dashboard designs, and executive recommendations that demonstrate how data can support informed business decisions.

# 🎯 Business Problem

Bright TV collects large volumes of customer profile and television viewership data. However, raw operational data alone does not provide meaningful insights for executives.

The challenge is to transform this data into actionable intelligence that answers critical business questions, including:

- Who are Bright TV's primary viewers?
- Which television channels attract the largest audiences?
- When do viewers watch television the most?
- Which provinces have the highest engagement?
- Which customer segments should receive targeted marketing campaigns?
- How can Bright TV improve customer retention and viewer engagement?

This project addresses these questions through SQL analysis and business intelligence techniques.
---
# 🎯 Project Objectives

The objectives of this project are to:

- Perform comprehensive data quality assessment.
- Identify and resolve missing and inconsistent values.
- Prepare clean analytical datasets.
- Engineer new business-focused features.
- Analyse audience demographics.
- Analyse television viewing behaviour.
- Calculate executive KPIs.
- Develop interactive dashboard-ready datasets.
- Generate business recommendations supported by data.

 # 🛠️ Technology Stack

| Tool | Purpose |
|------|---------|
| Databricks SQL | Data exploration, transformation and analysis |
| SQL | Querying, feature engineering and KPI development |
| Microsoft Excel | Data validation and exploratory analysis |
| Power BI | Interactive dashboard development |
| GitHub | Version control and project portfolio |
| Canva | Project documentation and visual design |

# 📂 Dataset Overview

# 📖 Data Dictionary

## User Profiles Dataset

| Column | Description |
|----------|-------------|
| UserID | Unique identifier assigned to each subscriber |
| Age | Subscriber's age in years |
| Gender | Subscriber's gender |
| Race | Subscriber's race classification |
| Province | Subscriber's province of residence |
| Email | Email address availability |
| Social Media Handle | Subscriber's social media account |

---
## Viewership Dataset

| Column | Description |
|----------|-------------|
| UserID | Subscriber identifier used for joining datasets |
| RecordDate | Date and time the viewing session occurred |
| Channel | Television channel viewed |
| Duration | Length of the viewing session |
| Viewing Time | Time of day the viewing occurred |
The project consists of two datasets.

# 🗂️ Data Model

The project combines subscriber demographic information with television viewing activity using the **UserID** field.

```text
┌──────────────────────────────┐
│      User Profiles           │
├──────────────────────────────┤
│ UserID (Primary Key)         │
│ Age                          │
│ Gender                       │
│ Race                         │
│ Province                     │
│ Email                        │
│ Social Media Handle          │
└──────────────┬───────────────┘
               │
               │ UserID
               ▼
┌──────────────────────────────┐
│      Viewership              │
├──────────────────────────────┤
│ UserID (Foreign Key)         │
│ RecordDate                   │
│ Channel                      │
│ Duration                     │
│ Viewing Time                 │
└──────────────────────────────┘
```
# 📊 Exploratory Data Analysis (EDA)

Before developing KPIs, exploratory analysis was conducted to understand the characteristics of the data.

The analysis focused on:

- Subscriber demographics
- Viewing trends
- Channel popularity
- Regional distribution
- Peak viewing periods
- Customer engagement
- Screen time distribution
- Weekend vs Weekday behaviour

The findings from the exploratory analysis formed the foundation for the business insights and dashboard development.

### User Profiles

Contains subscriber demographic information including:

- User ID
- Gender
- Race
- Province
- Age
- Email
- Social Media Handle

### Viewership

Contains subscriber viewing activity including:

- Viewing Date
- TV Channel
- Viewing Duration
- Viewing Time

  
# 🔄 Project Workflow

This project followed a structured end-to-end analytics process.

```text
Business Problem
        │
        ▼
Data Collection
        │
        ▼
Data Quality Assessment
        │
        ▼
Data Cleaning
        │
        ▼
Feature Engineering
        │
        ▼
Exploratory Data Analysis (SQL)
        │
        ▼
Business KPI Development
        │
        ▼
Dashboard Design
        │
        ▼
Business Insights
        │
        ▼
Executive Recommendations
```

This workflow demonstrates a complete data analytics lifecycle, transforming raw data into actionable business insights.

# 🧹 Data Cleaning & Preparation

Before performing any analysis, the datasets were assessed to ensure data quality, consistency and reliability.

The following data quality checks were completed using Databricks SQL.

### ✔ Duplicate Detection

Verified that each subscriber (UserID) appeared only once in the customer profile dataset.

### ✔ Missing Values

Checked for missing values across critical fields including:

- UserID
- Age
- Gender
- Race
- Province
- Email
- Social Media Handle

### ✔ Standardisation

Several inconsistent values were standardised.

Examples include:

| Original Value | Standardised Value |
|---------------|--------------------|
| Sawsee | SawSee |
| Supersport Live Events | Live Events |
| other | None |
| blank values | Uncategorized |

### ✔ Data Validation

Validated:

- Minimum and maximum ages
- Null User IDs
- Duplicate subscribers
- Invalid province values
- Blank gender values

These quality checks ensured that the analytical dataset accurately represented Bright TV's subscriber base before business analysis commenced.

# ⚙ Feature Engineering

Several analytical features were created from the original datasets to improve reporting and dashboard development.

New variables include:

| Feature | Business Purpose |
|----------|------------------|
| Age Groups | Audience segmentation |
| Region | Province standardisation |
| Time of Day | Peak viewing analysis |
| Day Classification | Weekend vs Weekday comparison |
| Screen Time Bucket | Viewer engagement analysis |
| Month ID | Monthly trend reporting |
| Watch Date | Daily analysis |
| TV Channel | Channel standardisation |

These engineered features transformed raw operational data into meaningful business metrics for analysis.

# 💻 SQL Skills Demonstrated

Throughout this project, I applied practical SQL techniques to prepare, transform and analyse business data.

### Data Exploration

- SELECT
- DISTINCT
- LIMIT

### Data Quality

- COUNT()
- GROUP BY
- HAVING
- NULL checks
- Duplicate detection

###  Data Cleaning & Preparation

- CASE WHEN
- COALESCE()
- Data standardisation
- Missing value handling

### Feature Engineering

- DATE_FORMAT()
- HOUR()
- CAST()
- Derived columns
- Time categorisation
- Age segmentation

### Data Analysis

- Aggregate Functions
- GROUP BY
- Business KPIs
- Customer segmentation
- Channel analysis
- Audience analysis

This project demonstrates practical SQL skills used by Data Analysts to prepare data for reporting and business intelligence.

# 📌❓Business Questions Answered

This analysis answers several important business questions:

### Audience Analysis

- How many subscribers does Bright TV have?
- Which province has the highest number of subscribers?
- Which age group watches the most television?
- What is the gender distribution of subscribers?
- Which race groups are represented?

### Viewing Behaviour

- Which channels are watched most frequently?
- What time of day has the highest audience?
- Which days generate the highest viewing activity?
- What percentage of viewing occurs during weekends?
- Which viewers are classified as heavy users?

### Business Intelligence

- Which audience should Bright TV target?
- Which provinces require increased marketing?
- Which channels deserve further investment?


# 📊 Executive KPIs

The following KPIs were developed to support executive decision-making.

| KPI | Description |
|------|-------------|
| Total Subscribers | Number of registered subscribers |
| Total Viewing Sessions | Total television viewing sessions |
| Average Watch Duration | Average viewing duration |
| Most Watched Channel | Highest performing TV channel |
| Top Province | Province with the highest audience |
| Largest Age Group | Largest subscriber segment |
| Peak Viewing Hour | Busiest viewing period |
| Weekend Viewership | Weekend vs Weekday analysis |

# 📈 Dashboard screenshots will be added...

### Executive Dashboard

> *(Dashboard screenshot will be inserted below once completed.)*

<p align="center">
<img src="images/dashboard.png" width="900">
</p>

# 📁 Repository Structure

```text
Bright-TV-Audience-Analytics
│
├── README.md
├── dashboard/
├── data/
├── documentation/
├── images/
├── sql/
├── 1.Project Description and Raw Data/
├── 2.Project Planning/
├── 3.Data Processing/
└── 4.Project Presentation/
```

# 🎯 Skills Demonstrated

### Technical Skills

- SQL
- Databricks SQL
- Data Cleaning
- Data Transformation
- Feature Engineering
- Data Validation
- Exploratory Data Analysis (EDA)
- Business Intelligence
- Dashboard Design
- KPI Development
- GitHub
- Microsoft Excel

### Analytical Skills

- Problem Solving
- Critical Thinking
- Data Storytelling
- Business Analysis
- Customer Segmentation
- Data Visualisation
- Executive Reporting
```

# 🚀 Future Improvements

Future enhancements for this project include:

- Interactive Power BI dashboard
- Predictive audience analytics
- Machine learning for viewer retention
- Automated SQL reporting
- Real-time dashboard integration
- Cloud data pipeline automation

# 💡 Business Recommendations

Based on the analysis, the following recommendations are proposed:

- Focus marketing campaigns on the highest-performing audience segments.
- Promote high-performing TV channels during peak viewing periods.
- Increase engagement in lower-performing provinces through regional campaigns.
- Develop targeted content for underrepresented age groups.
- Monitor viewing trends regularly to support programming decisions.
- Build executive dashboards to enable continuous performance monitoring.


 # 👤 About Me

Hi, I'm **Alice Musindo**, an aspiring Data Analyst with a strong interest in Business Intelligence, SQL, and data-driven decision-making.

This project demonstrates my ability to clean, transform, analyse and communicate data to solve real-world business problems.

I am continuously developing my skills in SQL, Power BI, Excel, Databricks and data storytelling while building a portfolio of practical analytics projects.

Thank you for visiting my repository.

# 📬 Contact

If you'd like to connect or discuss this project:

- **GitHub:** https://github.com/musindoalice-code
- **Email:** *(musindo.alice@gmail.com)*
---

