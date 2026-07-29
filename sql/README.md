# Bright TV Audience Analytics

## Project Overview
Bright TV Audience Analytics is a SQL-based data analysis project that explores audience behaviour, subscriber profiles, and viewing patterns for Bright TV customers. The project uses Databricks SQL to clean, transform, and analyse raw user profile and viewership data.

## Objectives
- Explore raw subscriber and viewership data.
- Clean and standardize inconsistent values.
- Engineer useful analytical features such as age groups, time-of-day buckets, and screen-time categories.
- Build a final joined dataset for reporting and analysis.
- Perform exploratory data analysis and KPI analysis.
- Generate business insights from audience behaviour.

## Repository Structure
```text
Bright-TV-Audience-Analytics/
├── sql/
│   ├── 01_Data_Exploration.sql
│   ├── 02_Project_Planning.sql
│   ├── 03_Data_Processing.sql
│   ├── 04_Feature_Engineering.sql
│   ├── 05_Final_Dataset.sql
│   ├── 06_EDA.sql
│   ├── 07_KPI_Analysis.sql
│   └── 08_Business_Insights.sql
├── 1.Project Description and Raw Data
├── 2. Project Planning
├── 3. Data Processing
├── 4. Project Presentation
├── 178221413864_Bright_TV_-Dataset_(2).xlsx
├── 1782214136910_BrightTV_Case_Study.pdf
└── README.md
```

## Data Sources
The project uses two main datasets:
- `workspace.default.bright_tv_userprofiles`
- `workspace.default.bright_tv_viewership`

These datasets contain subscriber demographic information and viewing session data.

## SQL Workflow
1. **Data Exploration** - inspect raw data structure and quality.
2. **Project Planning** - define analysis direction and workflow.
3. **Data Processing** - clean user profile data.
4. **Feature Engineering** - create behavioural and time-based features from viewership data.
5. **Final Dataset** - join cleaned user and viewership data into one analytical table.
6. **EDA** - analyse patterns across regions, age groups, and genders.
7. **KPI Analysis** - measure total subscribers, total sessions, popular channels, and peak viewing periods.
8. **Business Insights** - summarize key findings for decision-making.

## Key Transformations
- Standardized province values into a `Region` field.
- Grouped ages into categories such as Infants, Kids, Teenager, Youth, Adult, Elder, and Pensioner.
- Created flags for email and social media presence.
- Normalized race and gender values.
- Categorized viewing sessions by:
  - day classification,
  - month,
  - time of day,
  - screen-time bucket,
  - channel standardization.

## Output
The final analytical dataset is stored as:
`workspace.default.FinalDataset`

## Tools Used
- Databricks SQL
- SQL

## Author
Alice Musindo

## Notes
- The final dataset must be created before running EDA and KPI scripts.
- The repo is structured for sequential execution from file 01 through 08.
- Some file names in the repository are non-standard because they were part of the original project submission structure.

## License
This project is for educational and portfolio purposes.
