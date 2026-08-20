# Advertising Performance Analytics  
### Digital Marketing BI Project (SQL • Excel • Power BI)

This project analyzes online advertising performance using **SQL**, **Excel**, and **Power BI** to understand how different campaigns and placements drive displays, clicks, CTR, cost, revenue, and profit-related outcomes.  

It demonstrates a complete analytics workflow:  
**data cleaning → SQL validation → Excel pivots → interactive Power BI dashboard → documented insights.**

---

## 🎯 Objectives

- Analyze advertising delivery volume by **placement**.  
- Compare **campaign performance** across key metrics.  
- Calculate **clicks** and **click-through rate (CTR)**.  
- Identify **high-volume** and **high-efficiency** placements.  
- Validate results across **SQL**, **Excel**, and **Power BI**.  
- Present the results through an **interactive Power BI dashboard**.

---

## 🧰 Tools & Technologies

- **SQLite / SQL** – data validation, aggregation, and KPI calculations  
- **Excel** – PivotTables for intermediate validation and ad-hoc analysis  
- **Power BI Desktop** – interactive dashboard and visual analytics  
- **Power Query** – data transformation and shaping  
- **DAX** – custom measures for CTR, trends, and comparisons  

---

## 📊 Dataset

**Source:** [Online Advertising Digital Marketing Data – Kaggle](https://www.kaggle.com/datasets/naniruddhan/online-advertising-digital-marketing-data)  
**Creator:** N. Aniruddhan  
**Downloaded:** 20 August 2026  

The dataset contains **15,408 advertising records** across six cleaned placement categories:

- `abc`  
- `def`  
- `ghi`  
- `jkl`  
- `mno`  
- `Unknown`  

The original placement field contained **413 records** labelled `#N/A`. These were retained and categorized as **`Unknown`** for analysis.

> **Note:** This is a publicly available, educational dataset. It is not a live production database and does not represent actual business operations or real customer activity. Findings apply only to this dataset.

---

## 🔑 Key Results

| Metric                      | Result          |
|----------------------------|-----------------|
| Total records              | 15,408          |
| Total displays             | 239,017,725     |
| Total clicks               | 2,492,837       |
| Overall CTR                | **1.04%**       |
| Unknown placement records  | 413             |

### Placement Findings

- `mno` had the **highest representation**, with **4,501 records**.  
- `mno` generated the **highest display volume**, with **143,161,775 displays**.  
- `mno` represented **29.21%** of placement records but generated **59.90%** of all displays.  
- `ghi` generated the **highest number of clicks**, with **1,247,049 clicks**.  
- `ghi` achieved the **highest CTR** at **2.09%**.  
- `Unknown` had the **lowest average displays per record** and the **lowest CTR** at **0.16%**.

### Campaign Findings

- **Campaign 1** generated the highest volume, with **143,311,319 displays** and **1,409,136 clicks**.  
- **Campaign 2** achieved the **highest CTR** at **1.94%**.  
- **Campaign 3** had the **highest number of records**, with **6,917**.  
- **Campaign 3** recorded the **lowest observed monthly CTR** at **0.37%** in April.

---

## 🧭 Project Workflow

### 1. Data Preparation

- Inspected and cleaned the raw CSV before analysis.  
- Removed redundant and completely blank columns where appropriate.  
- Standardized missing placement values as **`Unknown`** while retaining all affected records.  

### 2. SQL Analysis

SQL was used to:

- Validate the **row count** and basic data integrity.  
- Inspect source fields and distributions.  
- Summarize **placement performance** (displays, clicks, CTR).  
- Summarize **campaign performance**.  
- Analyze **monthly campaign and placement performance**.  
- Calculate overall **displays**, **clicks**, and **CTR**.  

*(SQL scripts are available in the `/sql` folder.)*

### 3. Excel Analysis

- Built **PivotTables** to summarize performance by:
  - Placement  
  - Campaign  
  - Month  
- Used Excel as an **intermediate validation layer** to cross-check SQL aggregates before building the Power BI model.

### 4. Power BI Dashboard

The Power BI report includes:

- **KPI cards** for:
  - Total displays  
  - Total clicks  
  - Overall CTR  
- **Visuals:**
  - Displays by placement (chart)  
  - Clicks by placement (chart)  
  - Placement summary table  
- **Detail-analysis page** for deeper exploration.  
- **Slicers** for:
  - Date  
  - Campaign  
  - Placement type  
  - Banner  
  - User engagement  

*(Power BI file and PDF export are in the `/powerbi` folder.)*

---

## 📈 Core Metrics & Formulas

- **CTR (Click-Through Rate)**  
  \[
  \text{CTR} = \frac{\text{Clicks}}{\text{Displays}}
  \]

- **Total Displays / Clicks**  
  Aggregated by placement, campaign, and month using SQL and DAX.

These metrics are implemented in:
- **SQL** for validation and aggregation.  
- **DAX** for interactive KPIs and filtered views in Power BI.

---

## 🔍 Insights & Interpretation

> Use this section to connect the numbers to business decisions. You can refine the wording based on how you want to position yourself (BI analyst, media analyst, etc.).

- **Placement `mno`** dominates delivery volume, accounting for nearly **60% of all displays** despite being only ~29% of records. This suggests it is a key inventory source for reach.  
- **Placement `ghi`** delivers the **highest CTR (2.09%)** and the most clicks, indicating higher engagement quality even if it doesn’t lead in raw display volume.  
- **`Unknown` placements** show very low CTR (**0.16%**) and low average displays, highlighting the importance of proper tracking and tagging for inventory.  
- **Campaign 1** drives the largest volume of displays and clicks, making it central to overall traffic.  
- **Campaign 2**’s higher CTR suggests more effective creative, targeting, or positioning relative to its volume.  
- **Campaign 3**’s very low monthly CTR (0.37% in April) points to potential issues in specific periods that warrant deeper investigation (creative fatigue, audience saturation, or placement mix).

These patterns can inform:
- **Budget reallocation** toward high-efficiency placements and campaigns.  
- **Creative and targeting tests** on lower-performing but high-volume segments.  
- **Tracking improvements** to reduce `Unknown` placements and improve measurement quality.

---

## 🚀 How to Use This Repo

1. **Clone or download** the repository.  
2. Load `online_advertising_performance_data.csv` from `/data` into your SQL database.  
3. Run the SQL scripts in `/sql` to:
   - Validate row counts and fields.  
   - Reproduce placement, campaign, and monthly summaries.  
4. Open the Excel file in `/excel` (if included) to see PivotTable-based summaries.  
5. Open the Power BI file in `/powerbi` to explore the interactive dashboard.  
6. Read the full report in `/documentation/advertising_analytics_report.pdf` for a detailed narrative.

Feel free to adapt the queries, measures, and visuals to your own use cases or client scenarios.

---

## 📄 Full Report

[Read the full analytics report](documentation/advertising_analytics_report.pdf)

---

## ⚠️ Disclaimer

This project uses a publicly available advertising dataset downloaded from Kaggle for **educational and portfolio purposes**.  

- It is **not** a live production database.  
- It does **not** represent actual business operations, real customer activity, or current advertising performance.  
- The dataset may be **synthetic, anonymized, simulated, or otherwise prepared** for learning and analysis.  
- Findings apply **only to the supplied dataset** and should not be generalized to a real organization without independent validation.  

The data was cleaned and transformed for analysis. In particular, **413 records** with unavailable placement information were categorized as **`Unknown`**.

---

## 📚 Source & License

**Dataset**

- Title: *Online Advertising Digital Marketing Data*  
- Creator: N. Aniruddhan  
- Platform: Kaggle  
- URL: <https://www.kaggle.com/datasets/naniruddhan/online-advertising-digital-marketing-data>  
- Date downloaded: 20 August 2026  

**License**

> Released under MIT License  
>  
> Copyright (c) 2013 Mark Otto  
> Copyright (c) 2017 Andrew Fong  
>  
> Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the “Software”), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:  
>  
> The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.  
>  
> THE SOFTWARE IS PROVIDED “AS IS”, WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.

---

## 👤 Author

**Rishabh Shindore**  
Digital Media & Marketing Analyst | Business Intelligence  
Pune, India  

- Email: [Add your email if you want it public]
