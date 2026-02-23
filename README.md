# 📊 Superstore Data Analytics & Business Intelligence Project

## 📌 Project Overview

This project presents a complete end-to-end Data Analytics and Business Intelligence workflow using the Superstore dataset.

The objective was to analyze sales performance, profitability, customer behavior, and regional trends using:

- Microsoft Excel (Data Cleaning & Pivot Analysis)
- MySQL (SQL Data Extraction & Aggregation)
- Power BI (Interactive Dashboard Development)

The project demonstrates practical skills in data cleaning, transformation, querying, visualization, and business insight generation.

---

## 🛠 Tools & Technologies Used

- Microsoft Excel  
- MySQL (SQL Workbench 8.0)  
- Power BI Desktop  
- GitHub  

---

## 📂 Project Structure

Superstore-BI-Project
│
├── Superstore.csv
├── Excel_Analysis.xlsx
├── SQL_Queries.sql
├── PowerBI_Dashboard.pbix
├── Business_Insight_Report.docx
└── README.md


---

## 🔍 Project Workflow

### 1️⃣ Data Cleaning & Preparation (Excel)

- Removed duplicates  
- Checked and handled missing values  
- Created Pivot Tables:
  - Monthly Sales
  - Sales by Region
  - Sales by Category
  - Top Customers
  - Top Products  

This ensured clean, structured data before database processing.

---

### 2️⃣ SQL Data Extraction (MySQL)

The dataset was imported into MySQL using:

```sql
LOAD DATA LOCAL INFILE 'Superstore.csv'
INTO TABLE superstore
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;
```
Key SQL operations included:

1. Total Sales & Profit calculations

2. Sales by Region

3. Sales by Category

4. Monthly Sales Trend

5. Top 10 Customers

6. Top 5 Products

Example Query:
```
SELECT Region,
       SUM(Sales) AS Total_Sales
FROM superstore
GROUP BY Region
ORDER BY Total_Sales DESC;
```

SQL was used to validate business metrics and extract analytical insights efficiently.

3️⃣ Power BI Dashboard Development

An interactive dashboard was created including:

KPI Cards

Total Sales

Total Profit

Total Orders

Profit Margin

Visualizations

Sales by Region (Bar Chart)

Profit by Region (Conditional Formatting)

Monthly Sales Trend (Line Chart)

Category Distribution (Pie Chart)

Top Customers Table

Filters / Slicers

Region Filter

Category Filter

Date Range Filter

The dashboard supports dynamic filtering and interactive performance analysis.

📈 Key Business Insights

Total Sales: ~2.3M

Total Profit: ~286K

Profit Margin: ~12%

West region generates highest revenue and profit

South region underperforms comparatively

Technology category drives largest revenue share

Strong seasonal peaks observed in Q4

🎯 Strategic Recommendations

Improve profitability in underperforming regions (especially South).

Increase investment in Technology category products.

Capitalize on seasonal Q4 demand with targeted campaigns.

Strengthen customer retention while diversifying revenue sources.

Optimize cost structure to improve overall profit margin.

🚀 Skills Demonstrated

✔ Data Cleaning
✔ SQL Querying
✔ Aggregation & Grouping
✔ Business Intelligence Reporting
✔ Dashboard Design
✔ Data Storytelling
✔ Analytical Thinking

📌 Conclusion

This project demonstrates the ability to transform raw transactional data into actionable business insights using Excel, SQL, and Power BI. It reflects a complete end-to-end analytics workflow aligned with real-world business intelligence practices.


---

If you want, I can now:

- Add professional GitHub badges (Power BI, SQL, Excel icons)  
- Convert this into a recruiter-focused portfolio README  
- Write a LinkedIn project description  
- Help you prepare for viva questions  

You’ve built a very solid BI project 👏🚀
