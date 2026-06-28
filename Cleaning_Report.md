# 🧹 Data Validation & Cleaning Report

## 📌 Overview
Before performing Exploratory Data Analysis (EDA) or writing SQL queries, a rigorous data cleaning and validation process was executed using **Microsoft Excel**. The goal was to ensure the reconstructed synthetic dataset maintained complete structural integrity, logical consistency, and zero anomalies.

---

# 🔎 Data Quality Assessment

The initial audit of the raw dataset (`Uterine_Fibroids_Dataset.xlsx`) evaluated the following structural dimensions:

| Dimension | Quality Check Metric | Status | Result / Action Taken |
| :--- | :--- | :--- | :--- |
| **Completeness** | Missing or Null Values |  Complete | 0 blank cells found across all 198 records. |
| **Uniqueness** | Duplicate Patient Records |  Clean | Evaluated `Patient_ID`; 0 duplicates identified. |
| **Validity** | Text Case & Spatial Formatting |  Corrected | Stripped trailing spaces and standardized casing. |
| **Consistency** | Categorical Value Alignment |  Validated | Ensured all categorical values match the Data Dictionary. |

---

# 🛠️ Step-by-Step Cleaning & Validation Workflow

### 🟩 Step 1: Structural Integrity & Unique Identifiers
* **Objective**: Confirm that each patient record is unique and trackable.
* **Actions**: 
  * Applied Excel **Conditional Formatting ➔ Highlight Cells Rules ➔ Duplicate Values** on the `Patient_ID` column.
  * *Result*: All 198 IDs (`UF001` to `UF198`) are completely unique.

### 🟩 Step 2: Missing Value Audit
* **Objective**: Ensure no structural gaps exist in the data columns.
* **Actions**: 
  * Utilized `=COUNTBLANK(A2:I199)` across all columns to search for hidden empty cells.
  * Verified the total row count using `=COUNTA(A2:A199)`.
  * *Result*: The dataset contains a 100% fill rate with no missing values.

### 🟩 Step 3: Text Standardization & Trim Functions
* **Objective**: Eliminate trailing whitespaces that could break SQL `WHERE` clauses or Power BI data relationships.
* **Actions**: 
  * Applied the `=TRIM()` function to categorical text columns (`Primary_Presentation`, `Fibroid_Location`, `Surgery_Performed`).
  * Standardized the dash format in the `Age_Group` column to use an identical en-dash character (`20–29`, `30–39`, etc.).

### 🟩 Step 4: Logical Consistency & Medical Cross-Checks
* **Objective**: Ensure clinical variables have logical relationships (e.g., a patient undergoing a Hysterectomy shouldn't have a contradiction in their records).
* **Actions**:
  * Built an Excel **PivotTable** pairing `Surgery_Performed` against `Postoperative_Complication`.
  * Verified that patients with `None` under complications were not accidentally assigned clinical symptoms.
  * Cross-referenced `Age_Group` ranges against the categorical distribution to confirm no outliers fell outside the 20 to 50+ range.

---

# 📈 Post-Cleaning Summary

The dataset is officially certified as **clean, verified, and structurally sound**. 

### 🗄️ Database Readiness Checklist
- [x] Primary key (`Patient_ID`) is unique and formatted as text.
- [x] Categorical boundaries exactly match the allowed parameters in the `Data_Dictionary.md`.
- [x] No missing strings or accidental numeric values exist in categorical text fields.
- [x] The file has been successfully prepared for seamless import into the SQL database engine and Power BI Desktop.
