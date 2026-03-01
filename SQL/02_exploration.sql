
-- Total EV sales
SELECT ROUND(SUM(ev_sales_units)/1000000,2) AS Total_EV_sales_millions FROM data_ev.data_ev;

-- Sales by country --
SELECT country, ROUND(SUM(ev_sales_units)/1000000,2) AS EV_sales_millions FROM data_ev.data_ev
GROUP BY country 
ORDER BY EV_sales_millions DESC;

-- Sales by brand --
SELECT ev_brand, SUM(ev_sales_units)/1000000 AS EV_sales_millions FROM data_ev.data_ev
GROUP BY ev_brand
ORDER BY EV_sales_millions DESC;

-- Sales by vehicle type --
SELECT vehicle_type, ROUND(SUM(ev_sales_units)/1000000, 2) AS EV_sales_millions FROM data_ev.data_ev 
GROUP BY vehicle_type 
ORDER BY EV_sales_millions DESC;