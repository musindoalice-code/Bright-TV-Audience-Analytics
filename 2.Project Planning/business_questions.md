# Project Workflow

```
Business Problem
      |
      v
Data Collection            -> raw_subscriber_demographics.csv, raw_viewing_behaviour.csv
      |
      v
Data Exploration            -> 01_Data_Exploration.sql
      |
      v
Data Quality Assessment     -> 02_Data_Quality_Checks.sql
      |
      v
Data Cleaning                -> 03_Data_Cleaning.sql
      |
      v
Feature Engineering          -> 04_Feature_Engineering.sql
      |
      v
Final Dataset Assembly       -> 05_Final_Dataset.sql (creates FinalDataset)
      |
      v
Exploratory Data Analysis    -> 06_Exploratory_Data_Analysis.sql
      |
      v
Business KPI Development      -> 07_KPI_Analysis.sql
      |
      v
Business Insights             -> 08_Business_Insights.sql
      |
      v
Dashboard Design & Recommendations -> 4. Project Presentation/
```

## Stage ownership (maps to repository folders)

| Stage | Folder |
|---|---|
| Business problem, raw data, data dictionary | `1.Project Description and Raw Data/` |
| Business questions, workflow plan | `2.Project Planning/` |
| Data exploration, quality checks, cleaning, feature engineering, final dataset, EDA, KPIs, business insights | `3. Data_Processing/` |
| Executive summary, dashboard, recommendations | `4. Project Presentation/` |

