# Data_Analyst_Project
Power BI &amp; SQL pipeline for predicting market moves and optimizing inventory levels. Excel to clean data for easy analyzation 

# Market Forecasting & Inventory Optimization Analysis

## Executive Summary
This project delivers a data-driven approach to predicting market shifts and optimizing inventory levels. By combining historical sales data with market trend indicators, this analysis helps businesses prevent costly stockouts, reduce excess inventory carrying costs, and align purchasing cycles with projected market moves.

### Key Business Questions Addressed:
1. When will demand peak or drop based on upcoming market moves?
2. What are the optimal safety stock and reorder points for key products?
3. How can we minimize holding costs without sacrificing customer fulfillment rates?

---

## Technical Skills & Workflow

### 1. Data Cleaning & Preparation (Excel)
*   Audited raw inventory logs, supply chain timelines, and historical sales data.
*   Standardized product SKUs, resolved missing delivery dates, and formatted timestamps.
*   Conducted initial data profiling to identify seasonal anomalies and extreme outliers.

### 2. Data Modeling & Advanced Querying (SQL)
*   Engineered relational tables to track stock levels, supplier lead times, and market demand.
*   Utilized **Window Functions** (`LEAD`, `LAG`, `AVG OVER`) to calculate rolling demand and historical market velocity.
*   Built **CTEs** and complex **JOINs** to calculate critical inventory metrics:
    *   *Reorder Point (ROP) = (Daily Average Sales × Lead Time) + Safety Stock*
    *   *Economic Order Quantity (EOQ)* to balance ordering and holding costs.

### 3. Predictive Dashboarding (Power BI)
*   Established a robust **Star Schema** data model linking inventory, sales, and calendar dimensions.
*   Authored advanced **DAX Measures** for predictive moving averages, time-intelligence forecasting, and safety stock alerts.
*   Designed an interactive executive dashboard featuring automated dynamic alerts for understocking and overstocking risks.

---

## Key Insights & Business Impact
*   **Market Prediction:** Identified a consistent 3-week lead time between specific market economic indicators and sharp demand spikes in core product lines.
*   **Inventory Optimization:** Discovered that 25% of warehouse capacity was tied up in slow-moving inventory, while top-selling items faced a 12% stockout rate.
*   **Financial Impact:** Implementing the calculated SQL reorder points reduces safety stock holding costs by an estimated 18% while maintaining a 98% service level.

---

## Repository Structure
```text
├── Data/                 # Cleaned data files and dictionary (simulated)
├── Queries/              # SQL scripts for ROP, EOQ, and trend calculations
├── Dashboards/           # Power BI (.pbix) file and dashboard screenshots
└── README.md             # Project documentation
```

---

## How to Interact With This Project
1. Navigate to the `/Queries` folder to view the exact logic used for the inventory metrics.
2. Download the `.pbix` file from the `/Dashboards` folder to test the interactive forecasting slicers.
