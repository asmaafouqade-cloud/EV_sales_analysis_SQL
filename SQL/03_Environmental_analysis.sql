
-- Do incentives increase adoption?
SELECT govt_incentives, AVG(market_adoption_rate) AS adoption_rate FROM data_ev.data_ev
GROUP BY govt_incentives; -- Government incentives correlate with higher adoption

-- Which vehicles reduce the most CO₂?
SELECT vehicle_type, ROUND(AVG(co2_reduction_mt),2) AS avg_carbon_reduction_mt FROM data_ev.data_ev
GROUP BY vehicle_type
ORDER BY avg_carbon_reduction_mt DESC; -- SUVs reduce the most CO2 emissions and Buses reduce them the least 
