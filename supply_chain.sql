create database supply_chain_management;

use supply_chain_management;


-- 1. Total Revenue Generated
SELECT SUM(Revenue_generated) AS Total_Revenue
FROM supply_chain;

-- 2. Average Price of Products
SELECT AVG(Price) AS Average_Price
FROM supply_chain;

-- 3. Total Number of Products Sold
SELECT SUM(Number_of_products_sold) AS Total_Products_Sold
FROM supply_chain;

-- 4. Average Stock Level
SELECT AVG(Stock_levels) AS Average_Stock_Level
FROM supply_chain;

-- 5. Total Shipping Costs
SELECT SUM(Shipping_costs) AS Total_Shipping_Costs
FROM supply_chain;

-- 6. Average Lead Time
SELECT AVG(Lead_time) AS Average_Lead_Time
FROM supply_chain;

-- 7. Total Defect Rates
SELECT SUM(Defect_rates) AS Total_Defect_Rates
FROM supply_chain;

-- 8. Average Manufacturing Costs
SELECT AVG(Manufacturing_costs) AS Average_Manufacturing_Costs
FROM supply_chain;

-- 9. Total Production Volumes
SELECT SUM(Production_volumes) AS Total_Production_Volumes
FROM supply_chain;

-- 10. Average Shipping Time
SELECT AVG(Shipping_times) AS Average_Shipping_Time
FROM supply_chain;

-- 11. Total Revenue by Product Type
SELECT Product_type, SUM(Revenue_generated) AS Total_Revenue
FROM supply_chain
GROUP BY Product_type;

-- 12. Average Revenue per Product Type
SELECT Product_type, AVG(Revenue_generated) AS Average_Revenue
FROM supply_chain
GROUP BY Product_type;

-- 13. Total Products Sold by SKU
SELECT SKU, SUM(Number_of_products_sold) AS Total_Products_Sold
FROM supply_chain
GROUP BY SKU;

-- 14. Average Defect Rate by Supplier
SELECT Supplier_name, AVG(Defect_rates) AS Average_Defect_Rate
FROM supply_chain
GROUP BY Supplier_name;

-- 15. Total Shipping Costs by Shipping Carrier
SELECT Shipping_carriers, SUM(Shipping_costs) AS Total_Shipping_Costs
FROM supply_chain
GROUP BY Shipping_carriers;

-- 16. Average Manufacturing Lead Time by Location
SELECT Location, AVG(Manufacturing_lead_time) AS Average_Manufacturing_Lead_Time
FROM supply_chain
GROUP BY Location;

-- 17. Total Revenue by Location
SELECT Location, SUM(Revenue_generated) AS Total_Revenue
FROM supply_chain
GROUP BY Location;

-- 18. Average Order Quantity by Product Type
SELECT Product_type, AVG(Order_quantities) AS Average_Order_Quantity
FROM supply_chain
GROUP BY Product_type;

-- 19. Total Revenue by Customer Demographics
SELECT Customer_demographics, SUM(Revenue_generated) AS Total_Revenue
FROM supply_chain
GROUP BY Customer_demographics;

-- 20. Average Shipping Cost by Shipping Carrier
SELECT Shipping_carriers, AVG(Shipping_costs) AS Average_Shipping_Cost
FROM supply_chain
GROUP BY Shipping_carriers;

-- 21. Total Revenue by SKU
SELECT SKU, SUM(Revenue_generated) AS Total_Revenue
FROM supply_chain
GROUP BY SKU;

-- 22. Average Price by Product Type
SELECT Product_type, AVG(Price) AS Average_Price
FROM supply_chain
GROUP BY Product_type;

-- 23. Total Defects by Supplier
SELECT Supplier_name, SUM(Defect_rates) AS Total_Defects
FROM supply_chain
GROUP BY Supplier_name;

-- 24. Average Shipping Time by Shipping Carrier
SELECT Shipping_carriers, AVG(Shipping_times) AS Average_Shipping_Time
FROM supply_chain
GROUP BY Shipping_carriers;

-- 25. Total Revenue by Route
SELECT Routes, SUM(Revenue_generated) AS Total_Revenue
FROM supply_chain
GROUP BY Routes;

-- 26. Average Manufacturing Costs by Supplier
SELECT Supplier_name, AVG(Manufacturing_costs) AS Average_Manufacturing_Costs
FROM supply_chain
GROUP BY Supplier_name;

-- 27. Total Shipping Costs by Route
SELECT Routes, SUM(Shipping_costs) AS Total_Shipping_Costs
FROM supply_chain
GROUP BY Routes;

-- 28. Average Production Volumes by SKU
SELECT SKU, AVG(Production_volumes) AS Average_Production_Volumes
FROM supply_chain
GROUP BY SKU;

-- 29. Total Revenue by Transportation Mode
SELECT Transportation_modes, SUM(Revenue_generated) AS Total_Revenue
FROM supply_chain
GROUP BY Transportation_modes;

-- 30. Average Lead Time by Supplier
SELECT Supplier_name, AVG(Lead_time) AS Average_Lead_Time
FROM supply_chain
GROUP BY Supplier_name;

-- 31. Total Costs by SKU
SELECT SKU, SUM(Costs) AS Total_Costs
FROM supply_chain
GROUP BY SKU;

-- 32. Average Order Quantity by Shipping Carrier
SELECT Shipping_carriers, AVG(Order_quantities) AS Average_Order_Quantity
FROM supply_chain
GROUP BY Shipping_carriers;

-- 33. Total Revenue by Manufacturing Costs
SELECT Manufacturing_costs, SUM(Revenue_generated) AS Total_Revenue
FROM supply_chain
GROUP BY Manufacturing_costs;

-- 34. Average Stock Levels by Product Type
SELECT Product_type, AVG(Stock_levels) AS Average_Stock_Levels
FROM supply_chain
GROUP BY Product_type;

-- 35. Total Number of Products Sold by Location
SELECT Location, SUM(Number_of_products_sold) AS Total_Products_Sold
FROM supply_chain
GROUP BY Location;

-- 36. Average Defect Rates by Route
SELECT Routes, AVG(Defect_rates) AS Average_Defect_Rates
FROM supply_chain
GROUP BY Routes;

-- 37. Total Revenue by Price Range
SELECT CASE
           WHEN Price < 20 THEN 'Below 20'
           WHEN Price BETWEEN 20 AND 50 THEN '20-50'
           WHEN Price BETWEEN 50 AND 100 THEN '50-100'
           ELSE 'Above 100'
       END AS Price_Range,
       SUM(Revenue_generated) AS Total_Revenue
FROM supply_chain
GROUP BY Price_Range;

-- 38. Average Lead Time by Transportation Mode
SELECT Transportation_modes, AVG(Lead_time) AS Average_Lead_Time
FROM supply_chain
GROUP BY Transportation_modes;

-- 39. Total Shipping Costs by Transportation Mode
SELECT Transportation_modes, SUM(Shipping_costs) AS Total_Shipping_Costs
FROM supply_chain
GROUP BY Transportation_modes;

-- 40. Average Manufacturing Costs by Location
SELECT Location, AVG(Manufacturing_costs) AS Average_Manufacturing_Costs
FROM supply_chain
GROUP BY Location;

-- 41. Total Revenue by Defect Rates
SELECT Defect_rates, SUM(Revenue_generated) AS Total_Revenue
FROM supply_chain
GROUP BY Defect_rates;

-- 42. Average Production Volumes by Supplier
SELECT Supplier_name, AVG(Production_volumes) AS Average_Production_Volumes
FROM supply_chain
GROUP BY Supplier_name;

-- 43. Total Revenue by Customer Demographics
SELECT Customer_demographics, SUM(Revenue_generated) AS Total_Revenue
FROM supply_chain
GROUP BY Customer_demographics;

-- 44. Average Lead Time by Product Type
SELECT Product_type, AVG(Lead_time) AS Average_Lead_Time
FROM supply_chain
GROUP BY Product_type;

-- 45. Total Shipping Costs by Product Type
SELECT Product_type, SUM(Shipping_costs) AS Total_Shipping_Costs
FROM supply_chain
GROUP BY Product_type;

-- 46. Average Revenue per Product Type
SELECT Product_type, AVG(Revenue_generated) AS Average_Revenue
FROM supply_chain
GROUP BY Product_type;

-- 47. Total Revenue by Manufacturing Lead Time
SELECT Manufacturing_lead_time, SUM(Revenue_generated) AS Total_Revenue
FROM supply_chain
GROUP BY Manufacturing_lead_time;

-- 48. Average Costs by Shipping Carrier
SELECT Shipping_carriers, AVG(Costs) AS Average_Costs
FROM supply_chain
GROUP BY Shipping_carriers;

-- 49. Total Products Sold by Product Type
SELECT Product_type, SUM(Number_of_products_sold) AS Total_Products_Sold
FROM supply_chain
GROUP BY Product_type;

-- 50. Average Shipping Time by Route
SELECT Routes, AVG(Shipping_times) AS Average_Shipping_Time
FROM supply_chain
GROUP BY Routes;

-- 51. Total Revenue by SKU and Product Type
SELECT SKU, Product_type, SUM(Revenue_generated) AS Total_Revenue
FROM supply_chain
GROUP BY SKU, Product_type;

-- 52. Average Inspection Results by Supplier
SELECT Supplier_name, AVG(Inspection_results) AS Average_Inspection_Results
FROM supply_chain
GROUP BY Supplier_name;

-- 53. Total Revenue by Inspection Results
SELECT Inspection_results, SUM(Revenue_generated) AS Total_Revenue
FROM supply_chain
GROUP BY Inspection_results;

-- 54. Average Defect Rates by Location
SELECT Location, AVG(Defect_rates) AS Average_Defect_Rates
FROM supply_chain
GROUP BY Location;

-- 55. Total Revenue by Production Volumes
SELECT Production_volumes, SUM(Revenue_generated) AS Total_Revenue
FROM supply_chain
GROUP BY Production_volumes;

-- 56. Average Revenue per Route
SELECT Routes, AVG(Revenue_generated) AS Average_Revenue
FROM supply_chain
GROUP BY Routes;

-- 57. Total Revenue by Order Quantity
SELECT Order_quantities, SUM(Revenue_generated) AS Total_Revenue
FROM supply_chain
GROUP BY Order_quantities;

-- 58. Average Stock Levels by Location
SELECT Location, AVG(Stock_levels) AS Average_Stock_Levels
FROM supply_chain
GROUP BY Location;

-- 59. Total Revenue by Transportation Mode and Route
SELECT Transportation_modes, Routes, SUM(Revenue_generated) AS Total_Revenue
FROM supply_chain
GROUP BY Transportation_modes, Routes;

-- 60. Average Revenue per SKU
SELECT SKU, AVG(Revenue_generated) AS Average_Revenue
FROM supply_chain
GROUP BY SKU;

-- 61. Total Revenue by Price
SELECT Price, SUM(Revenue_generated) AS Total_Revenue
FROM supply_chain
GROUP BY Price;

-- 62. Average Defect Rates by Product Type
SELECT Product_type, AVG(Defect_rates) AS Average_Defect_Rates
FROM supply_chain
GROUP BY Product_type;

-- 63. Total Shipping Costs by Location
SELECT Location, SUM(Shipping_costs) AS Total_Shipping_Costs
FROM supply_chain
GROUP BY Location;

-- 64. Average Manufacturing Costs by Route
SELECT Routes, AVG(Manufacturing_costs) AS Average_Manufacturing_Costs
FROM supply_chain
GROUP BY Routes;

-- 65. Total Revenue by Shipping Carrier and Product Type
SELECT Shipping_carriers, Product_type, SUM(Revenue_generated) AS Total_Revenue
FROM supply_chain
GROUP BY Shipping_carriers, Product_type;

-- 66. Average Order Quantity by Product Type
SELECT Product_type, AVG(Order_quantities) AS Average_Order_Quantity
FROM supply_chain
GROUP BY Product_type;

-- 67. Total Revenue by Shipping Carrier
SELECT Shipping_carriers, SUM(Revenue_generated) AS Total_Revenue
FROM supply_chain
GROUP BY Shipping_carriers;

-- 68. Average Revenue per Shipping Carrier
SELECT Shipping_carriers, AVG(Revenue_generated) AS Average_Revenue
FROM supply_chain
GROUP BY Shipping_carriers;

-- 69. Total Defects by Route
SELECT Routes, SUM(Defect_rates) AS Total_Defects
FROM supply_chain
GROUP BY Routes;

-- 70. Average Revenue per Route
SELECT Routes, AVG(Revenue_generated) AS Average_Revenue
FROM supply_chain
GROUP BY Routes;

-- 71. Total Revenue by Production Volumes and SKU
SELECT Production_volumes, SKU, SUM(Revenue_generated) AS Total_Revenue
FROM supply_chain
GROUP BY Production_volumes, SKU;

-- 72. Average Stock Levels by SKU
SELECT SKU, AVG(Stock_levels) AS Average_Stock_Levels
FROM supply_chain
GROUP BY SKU;

-- 73. Total Shipping Costs by SKU
SELECT SKU, SUM(Shipping_costs) AS Total_Shipping_Costs
FROM supply_chain
GROUP BY SKU;

-- 74. Average Manufacturing Lead Time by Product Type
SELECT Product_type, AVG(Manufacturing_lead_time) AS Average_Manufacturing_Lead_Time
FROM supply_chain
GROUP BY Product_type;

-- 75. Total Revenue by Shipping Costs
SELECT Shipping_costs, SUM(Revenue_generated) AS Total_Revenue
FROM supply_chain
GROUP BY Shipping_costs;

-- 76. Average Revenue by Transportation Mode
SELECT Transportation_modes, AVG(Revenue_generated) AS Average_Revenue
FROM supply_chain
GROUP BY Transportation_modes;

-- 77. Total Revenue by Inspection Results and Defect Rates
SELECT Inspection_results, Defect_rates, SUM(Revenue_generated) AS Total_Revenue
FROM supply_chain
GROUP BY Inspection_results, Defect_rates;

-- 78. Average Defect Rates by Product Type and Location
SELECT Product_type, Location, AVG(Defect_rates) AS Average_Defect_Rates
FROM supply_chain
GROUP BY Product_type, Location;

-- 79. Total Revenue by Production Volumes and Route
SELECT Production_volumes, Routes, SUM(Revenue_generated) AS Total_Revenue
FROM supply_chain
GROUP BY Production_volumes, Routes;

-- 80. Average Manufacturing Costs by Customer Demographics
SELECT Customer_demographics, AVG(Manufacturing_costs) AS Average_Manufacturing_Costs
FROM supply_chain
GROUP BY Customer_demographics;

-- 81. Total Revenue by Shipping Carrier and Location
SELECT Shipping_carriers, Location, SUM(Revenue_generated) AS Total_Revenue
FROM supply_chain
GROUP BY Shipping_carriers, Location;

-- 82. Average Revenue by SKU and Product Type
SELECT SKU, Product_type, AVG(Revenue_generated) AS Average_Revenue
FROM supply_chain
GROUP BY SKU, Product_type;

-- 83. Total Costs by Shipping Carrier
SELECT Shipping_carriers, SUM(Costs) AS Total_Costs
FROM supply_chain
GROUP BY Shipping_carriers;

-- 84. Average Costs by SKU
SELECT SKU, AVG(Costs) AS Average_Costs
FROM supply_chain
GROUP BY SKU;

-- 85. Total Revenue by Customer Demographics and Product Type
SELECT Customer_demographics, Product_type, SUM(Revenue_generated) AS Total_Revenue
FROM supply_chain
GROUP BY Customer_demographics, Product_type;

-- 86. Average Stock Levels by Shipping Carrier
SELECT Shipping_carriers, AVG(Stock_levels) AS Average_Stock_Levels
FROM supply_chain
GROUP BY Shipping_carriers;

-- 87. Total Revenue by Location and Supplier
SELECT Location, Supplier_name, SUM(Revenue_generated) AS Total_Revenue
FROM supply_chain
GROUP BY Location, Supplier_name;

-- 88. Average Revenue by Supplier and Route
SELECT Supplier_name, Routes, AVG(Revenue_generated) AS Average_Revenue
FROM supply_chain
GROUP BY Supplier_name, Routes;

-- 89. Total Revenue by Customer Demographics and Shipping Carrier
SELECT Customer_demographics, Shipping_carriers, SUM(Revenue_generated) AS Total_Revenue
FROM supply_chain
GROUP BY Customer_demographics, Shipping_carriers;

-- 90. Average Costs by Transportation Mode
SELECT Transportation_modes, AVG(Costs) AS Average_Costs
FROM supply_chain
GROUP BY Transportation_modes;

-- 91. Total Revenue by Manufacturing Lead Time and Product Type
SELECT Manufacturing_lead_time, Product_type, SUM(Revenue_generated) AS Total_Revenue
FROM supply_chain
GROUP BY Manufacturing_lead_time, Product_type;

-- 92. Average Production Volumes by Route
SELECT Routes, AVG(Production_volumes) AS Average_Production_Volumes
FROM supply_chain
GROUP BY Routes;

-- 93. Total Defect Rates by SKU
SELECT SKU, SUM(Defect_rates) AS Total_Defect_Rates
FROM supply_chain
GROUP BY SKU;

-- 94. Average Revenue by Manufacturing Lead Time
SELECT Manufacturing_lead_time, AVG(Revenue_generated) AS Average_Revenue
FROM supply_chain
GROUP BY Manufacturing_lead_time;

-- 95. Total Revenue by Defect Rates and Inspection Results
SELECT Defect_rates, Inspection_results, SUM(Revenue_generated) AS Total_Revenue
FROM supply_chain
GROUP BY Defect_rates, Inspection_results;

-- 96. Average Costs by Product Type
SELECT Product_type, AVG(Costs) AS Average_Costs
FROM supply_chain
GROUP BY Product_type;

-- 97. Total Revenue by Shipping Costs and Product Type
SELECT Shipping_costs, Product_type, SUM(Revenue_generated) AS Total_Revenue
FROM supply_chain
GROUP BY Shipping_costs, Product_type;

-- 98. Average Revenue by Order Quantities
SELECT Order_quantities, AVG(Revenue_generated) AS Average_Revenue
FROM supply_chain
GROUP BY Order_quantities;

-- 99. Total Costs by Defect Rates
SELECT Defect_rates, SUM(Costs) AS Total_Costs
FROM supply_chain
GROUP BY Defect_rates;

-- 100. Average Revenue by Product Type and SKU
SELECT Product_type, SKU, AVG(Revenue_generated) AS Average_Revenue
FROM supply_chain
GROUP BY Product_type, SKU;





