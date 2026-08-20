Advertising Performance Analytics

Overview

This project analyzes advertising performance using SQL, Excel, and Power BI.

The analysis examines campaign and placement performance using displays, clicks, CTR, cost, revenue, and profit-related fields. The project demonstrates a complete analytics workflow from data cleaning and SQL validation to interactive dashboard development.

Objectives

- Analyze advertising delivery volume by placement.
- Compare campaign performance.
- Calculate clicks and click-through rate.
- Identify high-volume and high-efficiency placements.
- Validate results across SQL, Excel, and Power BI.
- Present the results through an interactive Power BI dashboard.

Tools Used

- SQLite / SQL
- Excel PivotTables
- Power BI Desktop
- Power Query
- DAX

Dataset

The dataset contains 15,408 advertising records across six cleaned placement categories:

- abc
- def
- ghi
- jkl
- mno
- Unknown

The source placement field contained 413 values labelled `#N/A`. These records were retained and categorized as `Unknown` for analysis.

Key Results

| Metric | Result |
|---|---:|
| Total records | 15,408 |
| Total displays | 239,017,725 |
| Total clicks | 2,492,837 |
| Overall CTR | 1.04% |
| Unknown placement records | 413 |

Placement findings

- `mno` had the highest representation, with 4,501 records.
- `mno` generated the highest display volume, with 143,161,775 displays.
- `mno` represented 29.21% of placement records but generated 59.90% of all displays.
- `ghi` generated the highest number of clicks, with 1,247,049 clicks.
- `ghi` achieved the highest CTR at 2.09%.
- `Unknown` had the lowest average displays per record and the lowest CTR at 0.16%.

Campaign findings

- Campaign 1 generated the highest volume, with 143,311,319 displays and 1,409,136 clicks.
- Campaign 2 achieved the highest CTR at 1.94%.
- Campaign 3 had the highest number of records, with 6,917.
- Campaign 3 recorded the lowest observed monthly CTR at 0.37% in April.

Project Workflow

1. Data preparation

The data was inspected and cleaned before analysis. Redundant fields and completely blank columns were removed where appropriate. Missing placement values were categorized as `Unknown`, while all affected records were retained.

2. SQL analysis

SQL was used to:

- Validate the row count.
- Inspect the source fields.
- Summarize placement performance.
- Summarize campaign performance.
- Analyze monthly campaign and placement performance.
- Calculate overall displays, clicks, and CTR.

3. Excel analysis

Excel PivotTables were used to summarize performance by placement, campaign, and month. These results were used as an intermediate validation layer.

4. Power BI dashboard

The Power BI report contains:

- KPI cards for total displays, total clicks, and overall CTR.
- Displays by placement chart.
- Clicks by placement chart.
- Placement summary table.
- Detail-analysis page.
- Slicers for date, campaign, placement type, banner, and user engagement.

Repository Contents

- `data/` — source and supporting data files.
- `sql/` — SQL analysis and validation queries.
- `powerbi/` — Power BI report and PDF export.
- `screenshots/` — project evidence and dashboard screenshots.
- `documentation/` — detailed project report.

## Full Report

[Read the full analytics report](documentation/advertising_analytics_report.pdf)


Disclaimer

This project uses a publicly available advertising dataset downloaded from Kaggle for educational and portfolio purposes. It is not a live production database and does not represent actual business operations, real customer activity, or current advertising performance.

The dataset may be synthetic, anonymised, simulated, or otherwise prepared for learning and analysis. The findings apply only to the supplied dataset and should not be generalized to a real organization without independent validation.

The data was cleaned and transformed for analysis. In particular, 413 records with unavailable placement information were categorized as `Unknown`.

Source

- Dataset title: Online Advertising Digital Marketing Data
- Dataset creator: N. aniruddhan
- Source platform: Kaggle
- Kaggle URL: https://www.kaggle.com/datasets/naniruddhan/online-advertising-digital-marketing-data/data
- Date downloaded: 20 August 2026
- License: # Released under MIT License

Copyright (c) 2013 Mark Otto.

Copyright (c) 2017 Andrew Fong.

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.

Author

Rishabh Shindore
