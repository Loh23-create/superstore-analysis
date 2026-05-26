# 🛒 Superstore Sales Analysis

A full end-to-end data analytics project using the 
Sample Superstore dataset analyzed across 4 tools.

## 🛠️ Tools Used
- **SQL** — Data extraction and querying
- **Python** — Exploratory data analysis and ML
- **Excel** — Interactive dashboard with PivotTables
- **Power BI** — Professional 2-page report

## 📊 Dataset
- 9,994 orders across US regions (2014–2017)
- 21 columns including Sales, Profit, Discount, 
  Category, Region, Segment

## 🔍 Key Findings
1. **Tables and Bookcases lose money** — negative 
   profit at any discount level
2. **Discounts above 20% flip profit negative** 
   across all categories
3. **Technology has the highest margin at ~17%** 
   while Furniture drags overall profit down
4. **West region is most profitable** — Central 
   underperforms despite high sales volume
5. **Sales grow every year** — Q4 seasonal spikes 
   visible across all years

## 📁 Project Structure
- `sol/` — 4 SQL scripts covering sales, products,
   customers and shipping analysis
- `python/` — Jupyter notebook with 8 charts and 
   ML profit prediction model
- `excel/` — Dashboard with PivotTables and slicers
- `powerbi/` — 2 page interactive report with DAX

## 🚀 How to Run

### SQL
```bash
sqlite3 superstore.db < sql/01_setup.sql
sqlite3 superstore.db < sql/02_sales_analysis.sql
```

### Python
```bash
pip install pandas matplotlib seaborn scikit-learn jupyter
jupyter notebook python/superstore_eda.ipynb
```

## 📸 Dashboard Screenshots

### Power BI — Executive Summary
![Page 1](powerbi/screenshots/page1_executive.png)

### Power BI — Product Analysis
![Page 2](powerbi/screenshots/page2_products.png)

### Excel Dashboard
![Excel](excel/screenshots/excel_dashboard.png)

## 👤 Author
Lorine Chepkoech 
📧 chepkoechlorin@gmail.com  
🔗 https://www.linkedin.com/in/lorine-chepkoech-a0b8601a5