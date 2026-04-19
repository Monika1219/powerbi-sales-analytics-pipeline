# Project 1 — Sales Analytics Pipeline (SQL to Power BI)

## 1. Overview
This project demonstrates a complete end‑to‑end Business Intelligence development workflow using the AdventureWorksDW dataset. It covers SQL data preparation, dimensional modelling, DAX measure creation, report development, and Power BI Service deployment. The objective is to replicate real BI Developer responsibilities by building a clean data layer, modelling a star schema, developing analytical measures, and delivering an interactive report.

### Key skills demonstrated:

- SQL data modelling
- View creation and data preparation
- Power BI data modelling
- Time‑intelligence DAX
- Data visualisation
- Power BI Service deployment

## 2. Dataset
Source: AdventureWorksDW (Microsoft sample data warehouse)

Tables used:

- FactInternetSales
- DimCustomer
- DimProduct
- DimProductSubcategory
- DimProductCategory
- DimDate
- DimSalesTerritory

This dataset supports star schema modelling and time‑based analytics.

## 3. SQL Data Preparation
All data preparation was completed in SQL Server Management Studio (SSMS).

### Clean Fact View
A SQL view (`vw_InternetSales_Ready`) was created to join the fact and dimension tables, producing a clean, analysis‑ready dataset.

#### Included fields:

- Order date
- Customer details
- Product and category hierarchy
- Sales territory
- Sales metrics (quantity, price, cost, sales amount)

#### Data preparation tasks:

- Joined product → subcategory → category
- Ensured consistent category naming
- Combined customer and geography information
- Validated data types (dates, numeric fields)

File: `/sql/vw_InternetSales_Ready.sql`

## 4. Power BI Data Model
### Imported SQL View
Only the cleaned SQL view was loaded. No additional Power Query transformations were required.

### Date Table
A dedicated date table was created using DAX and marked as the official date table.

### Star Schema
- FactInternetSales (fact)
- DateTable (dimension)
- Customer, Product, Category, Territory (dimensions from SQL view)

### Modelling Tasks
- Established one‑to‑many relationships
- Hid technical columns (keys, IDs, foreign keys)
- Ensured a clean, readable model layout

File: `/model/DataModelDiagram.png`

## 5. DAX Measures
Core analytical measures include:

- Total Sales
- Order Count
- Average Order Value
- Total Profit
- Total Sales Previous Year
- Year‑over‑Year Percentage Change

These measures support trend analysis, customer insights, product performance, and profitability reporting.

File: `/dax/Measures.dax`

## 6. Power BI Report
The report includes the following analytical pages:

### Sales Trend
- Total Sales
- Total Sales Previous Year
- Year‑over‑Year Change

### Customer Insights
- Top customers by sales
- Order frequency

### Regional Performance
- Sales by region
- Territory insights

### Product Insights
- Sales by product category
- Profitability by category

### Slicers
- Year
- Region
- Product Category

Folder: `/screenshots/`

## 7. Power BI Service Deployment
Deployment tasks completed:

- Published report to workspace: Power BI Developer Portfolio
- Configured daily scheduled refresh
- Created a Power BI App with structured sections
- Built a dashboard with pinned KPIs and trend visuals

Folder: `/service/`

## 8. Repository Structure
```
/ sql
   vw_InternetSales_Ready.sql

/ model
   DataModelDiagram.png

/ dax
   Measures.dax

/ screenshots
   *.png

/ service
   *.png

README.md
```

## 9. Summary
This project demonstrates the full lifecycle of a BI Developer workflow:

- SQL data preparation and view creation
- Dimensional modelling and star schema design
- Time‑intelligence DAX development
- Professional Power BI report design
- Power BI Service deployment and refresh configuration
- Clear documentation and version control

This is the first project in a four‑project portfolio designed to showcase end‑to‑end BI capability.
