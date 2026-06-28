#UTERINE FIBROIDS SQL ANALYSIS.

#Create Database.
CREATE DATABASE UterineFibroids;

#Select Database.
USE UterineFibroids;

#Create Table.
CREATE TABLE Fibroids(
Patient_ID VARCHAR(20),
Age_Group VARCHAR(20),
Parity VARCHAR(20),
Education_Level VARCHAR(50),
Primary_Presentation VARCHAR(50),
Uterine_Size VARCHAR(20),
Fibroid_Location VARCHAR(30),
Surgery_Performed VARCHAR(100),
Postoperative_Complication VARCHAR(50)
);

SHOW TABLES;

DESCRIBE Fibroids;

SHOW DATABASES;

SELECT * FROM Fibroids;

 #Query 1 — Total Patients.
SELECT COUNT(*) AS Total_Patients
FROM Fibroids;

# Query 2 — Age Distribution.
SELECT
Age_Group,
COUNT(*) AS Patients
FROM Fibroids
GROUP BY Age_Group
ORDER BY Patients DESC;

# Query 3 — Symptom Distribution.
SELECT
Primary_Presentation,
COUNT(*) AS Cases
FROM Fibroids
GROUP BY Primary_Presentation
ORDER BY Cases DESC;

# Query 4 — Fibroid Location.
SELECT
Fibroid_Location,
COUNT(*) AS Cases
FROM Fibroids
GROUP BY Fibroid_Location
ORDER BY Cases DESC;

# Query 5 — Surgery Distribution.
SELECT
Surgery_Performed,
COUNT(*) AS Cases
FROM Fibroids
GROUP BY Surgery_Performed
ORDER BY Cases DESC;

# Query 6 — Complication Analysis.
SELECT
Postoperative_Complication,
COUNT(*) AS Cases
FROM Fibroids
WHERE Postoperative_Complication IS NOT NULL
GROUP BY Postoperative_Complication;

# Query 7 — Complication Rate.
SELECT
ROUND(
(COUNT(Postoperative_Complication)*100.0)
/COUNT(*),2
) AS Complication_Rate
FROM Fibroids;

# Query 8 — Surgery vs Complications.
SELECT
Surgery_Performed,
Postoperative_Complication,
COUNT(*) AS Cases
FROM Fibroids
GROUP BY
Surgery_Performed,
Postoperative_Complication
ORDER BY Cases DESC;

# Query 9 - Complication rate by surgery type (Risk comparison)
SELECT
Surgery_Performed,
COUNT(*) AS Total_Cases,
SUM(CASE 
WHEN Postoperative_Complication IS NOT NULL 
AND Postoperative_Complication <> 'None'
THEN 1 ELSE 0 
END) AS Complication_Cases,
ROUND(
(SUM(CASE 
WHEN Postoperative_Complication IS NOT NULL 
AND Postoperative_Complication <> 'None'
THEN 1 ELSE 0 END) * 100.0) / COUNT(*),2) 
AS Complication_Rate_Percentage
FROM Fibroids
GROUP BY Surgery_Performed
ORDER BY Complication_Rate_Percentage DESC;

# Query 10 - Age group vs complication risk (High-risk population analysis)
SELECT 
Age_Group, 
COUNT(*) AS Total_Patients, 
SUM(CASE WHEN Postoperative_Complication IS NOT NULL 
AND Postoperative_Complication <> 'None' 
THEN 1 ELSE 0 END) AS Complication_Cases, 
ROUND((SUM(CASE WHEN Postoperative_Complication IS NOT NULL 
AND Postoperative_Complication <> 'None' THEN 1 ELSE 0 END) * 100.0) / COUNT(*), 2) 
AS Complication_Rate_Percentage 
FROM Fibroids 
GROUP BY Age_Group 
ORDER BY Complication_Rate_Percentage DESC;





SELECT
Age_Group,
COUNT(*) AS Total_Patients,
SUM(CASE WHEN Postoperative_Complication IS NOT NULL 
AND Postoperative_Complication <> 'None'
THEN 1 ELSE 0 END) AS Complication_Cases,
ROUND((SUM(CASE 
WHEN Postoperative_Complication IS NOT NULL 
AND Postoperative_Complication <> 'None'
THEN 1 ELSE 0 
END) * 100.0) / COUNT(*), 2) 
#AS Complication_Rate_Percentage
FROM Fibroids
GROUP BY Age_Group
ORDER BY Complication_Rate_Percentage DESC;



