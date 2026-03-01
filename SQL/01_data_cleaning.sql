-- DATA INSPECTION

SELECT * FROM data_ev.data_ev;

-- Check missing values
SELECT * FROM data_ev.data_ev
WHERE record_id is NULL;

-- Find duplicates
SELECT record_id,COUNT(*) AS duplicates FROM data_ev.data_ev
GROUP BY record_id
HAVING duplicates >1;

-- Check categories

SELECT DISTINCT country FROM data_ev.data_ev;
SELECT DISTINCT Year FROM data_ev.data_ev;
SELECT DISTINCT ev_brand FROM data_ev.data_ev;
SELECT DISTINCT vehicle_type FROM data_ev.data_ev;