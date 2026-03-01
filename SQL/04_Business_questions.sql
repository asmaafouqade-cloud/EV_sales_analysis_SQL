
-- Which countries sell the most EVs?
SELECT country, ROUND(SUM(ev_sales_units)/1000000,1) AS total_sales_millions_usd FROM data_ev.data_ev
GROUP BY country 
ORDER BY total_sales_millions_usd DESC;

-- Which brands dominate the market?
SELECT ev_brand, AVG(market_adoption_rate) AS avg_adoption_rate FROM data_ev.data_ev 
GROUP BY ev_brand 
ORDER BY avg_adoption_rate DESC;

-- Do cheaper EVs sell more?

-- Show cheapest EVs
SELECT ev_brand, ROUND(AVG(avg_ev_price_usd)/1000,1) AS avg_price_k_usd FROM data_ev.data_ev
GROUP BY ev_brand
ORDER BY avg_price_k_usd;

-- Show best selling EVs
SELECT ev_brand,ROUND(SUM(ev_sales_units)/1000000,1) AS sales_millions FROM data_ev.data_ev
GROUP BY ev_brand
ORDER BY sales_millions DESC;

-- Which regions grow fastest?
SELECT region, AVG(market_adoption_rate) AS avg_adoption_rate FROM data_ev.data_ev
GROUP BY region
ORDER BY avg_adoption_rate DESC;
