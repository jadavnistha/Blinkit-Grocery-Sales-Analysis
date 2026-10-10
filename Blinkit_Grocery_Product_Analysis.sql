
use nistha;

-- 1 Import Data from table Grocery Sales using the provided CSV File.
select * from grocery_sales;

-- 2 Write an SQL query to show all Item_Identifier

SELECT Item_Identifier FROM grocery_sales;

-- 3 Write an SQL query to show count of total Item_Identifier.
SELECT COUNT(Item_Identifier) FROM grocery_sales;

-- 4 Write an SQL query to show maximum Item Weight.
SELECT MAX(Item_Weight) FROM grocery_sales;

-- 5 Write an SQL query to show minimum Item Weight.
SELECT MIN(Item_Weight) FROM grocery_sales;

-- 6 Write an SQL query to show average Item_Weight.
SELECT AVG(Item_Weight) FROM grocery_sales;

-- 7 Write an SQL query to show count of Item_Fat_Content WHERE Item_Fat_Content is Low Fat.
SELECT COUNT(*) FROM grocery_sales
WHERE Item_Fat_Content = 'Low Fat';

-- 8 Write an SQL query to show count of Item_Fat_Content WHERE Item_Fat_Content is Regular.
SELECT COUNT(*) FROM grocery_sales
WHERE Item_Fat_Content = 'Regular';

-- 9 Write an SQL query to show maximum Item_MRP
SELECT MAX(Item_MRP) FROM grocery_sales;

-- 10 Write an SQL query to show minimum Item_MRP
SELECT MIN(Item_MRP) FROM grocery_sales;

-- 11 Write an SQL query to show Item_Identifier , Item_Fat_Content ,Item_Type, Item_MRP whose Item_MRP is greater than 200.
SELECT Item_Identifier, Item_Fat_Content, Item_Type, Item_MRP
FROM grocery_sales
WHERE Item_MRP > 200;

-- 12 Write an SQL query to show maximum Item_MRP WHERE Item_Fat_Content is Low Fat
SELECT MAX(Item_MRP) FROM grocery_sales
WHERE Item_Fat_Content = 'Low Fat';

-- 13 Write an SQL query to show minimum Item_MRP whose Item_Fat_Content is Low Fat
SELECT MIN(Item_MRP) FROM grocery_sales
WHERE Item_Fat_Content = 'Low Fat';

-- 14 Write an SQL query to show ALL DATA WHERE item MRP is BETWEEN 50 to 100
SELECT * FROM grocery_sales
WHERE Item_MRP BETWEEN 50 AND 100;

-- 15 Write an SQL query to show ALL UNIQUE value of Item_Fat_Content
SELECT DISTINCT Item_Fat_Content FROM grocery_sales;

-- 16 Write an SQL query to show ALL UNIQUE value of Item_Type
SELECT DISTINCT Item_Type FROM grocery_sales;

-- 17 Write an SQL query to show ALL DATA in descending ORDER by Item MRP
SELECT * FROM grocery_sales
ORDER BY Item_MRP DESC;

-- 18 Write an SQL query to show ALL DATA in ascending ORDER by Item_Outlet_Sales
SELECT * FROM grocery_sales
ORDER BY Item_Outlet_Sales ASC;

-- 19 Write an SQL query to show ALL DATA in ascending by Item_Type
SELECT * FROM grocery_sales
ORDER BY Item_Type ASC;

-- 20 Write an SQL query to show DATA of item_type dairy & Meat
SELECT * FROM grocery_sales
WHERE Item_Type IN ('Dairy', 'Meat');

-- 21 Write an SQL query to show ALL UNIQUE value of Outlet_Size
SELECT DISTINCT Outlet_Size FROM grocery_sales;

-- 22 Write an SQL query to show ALL UNIQUE value of Outlet_Location_Type
SELECT DISTINCT Outlet_Location_Type FROM grocery_sales;

-- 23 Write an SQL query to show ALL UNIQUE value of Outlet_Type
SELECT DISTINCT Outlet_Type FROM grocery_sales;

-- 24 Write an SQL query to show count of number of items by Item_Type and order it in descending order
SELECT Item_Type, COUNT(*) AS total_items
FROM grocery_sales
GROUP BY Item_Type
ORDER BY total_items DESC;

-- 25 Write an SQL query to show count of number of items by Outlet_Size and ordered it in ascending order
SELECT Outlet_Size, COUNT(*) AS total_items
FROM grocery_sales
GROUP BY Outlet_Size
ORDER BY total_items ASC;

-- 26 Write an SQL query to show count of number of items by Outlet_Type and ordered it in descending order.
SELECT Outlet_Type, COUNT(*) AS total_items
FROM grocery_sales
GROUP BY Outlet_Type
ORDER BY total_items DESC;

-- 27 Write an SQL query to show count of items by Outlet_Location_Type and order it indescending order
SELECT Outlet_Location_Type, COUNT(*) AS total_items
FROM grocery_sales
GROUP BY Outlet_Location_Type
ORDER BY total_items DESC;

-- 28 Write an SQL query to show maximum MRP by Item_Type
SELECT Item_Type, MAX(Item_MRP)
FROM grocery_sales
GROUP BY Item_Type;

-- 29 Write an SQL query to show minimum MRP by Item_Type
SELECT Item_Type, MIN(Item_MRP)
FROM grocery_sales
GROUP BY Item_Type;

-- 30 Write an SQL query to show minimum MRP by Outlet_Establishment_Year and order it in descending order.
SELECT Outlet_Establishment_Year, MIN(Item_MRP)
FROM grocery_sales
GROUP BY Outlet_Establishment_Year
ORDER BY Outlet_Establishment_Year DESC;

-- 31 Write an SQL query to show maximum MRP by Outlet_Establishment_Year and order it in descending order.
SELECT Outlet_Establishment_Year, MAX(Item_MRP)
FROM grocery_sales
GROUP BY Outlet_Establishment_Year
ORDER BY Outlet_Establishment_Year DESC;

-- 32 Write an SQL query to show average MRP by Outlet_Size and order it in descending order.
SELECT Outlet_Size, AVG(Item_MRP)
FROM grocery_sales
GROUP BY Outlet_Size
ORDER BY AVG(Item_MRP) DESC;

-- 33 Write an SQL query to Average MRP by Outlet_Type and ordered in ascending order.
SELECT Outlet_Type, AVG(Item_MRP)
FROM grocery_sales
GROUP BY Outlet_Type
ORDER BY AVG(Item_MRP) ASC;

-- 34 Write an SQL query to show maximum MRP by Outlet_Type
SELECT Outlet_Type, MAX(Item_MRP)
FROM grocery_sales
GROUP BY Outlet_Type;


-- 35 Write an SQL query to show maximum Item_Weight by Item_Type
SELECT Item_Type, MAX(Item_Weight)
FROM grocery_sales
GROUP BY Item_Type;

-- 36  Write an SQL query to show maximum Item_Weight by Outlet_Establishment_Year
SELECT Outlet_Establishment_Year, MAX(Item_Weight)
FROM grocery_sales
GROUP BY Outlet_Establishment_Year;

-- 37 Write an SQL query to show minimum Item_Weight by Outlet_Type
SELECT Outlet_Type, MIN(Item_Weight)
FROM grocery_sales
GROUP BY Outlet_Type;

-- 38 Write an SQL query to show average Item_Weight by Outlet_Location_Type and arrange it by descending order
SELECT Outlet_Location_Type, AVG(Item_Weight)
FROM grocery_sales
GROUP BY Outlet_Location_Type
ORDER BY AVG(Item_Weight) DESC;


-- 39 Write an SQL query to show maximum Item_Outlet_Sales by Item_Type
SELECT Item_Type, MAX(Item_Outlet_Sales)
FROM grocery_sales
GROUP BY Item_Type;

-- 40 Write an SQL query to show minimum Item_Outlet_Sales by Item_Type

SELECT Item_Type, MIN(Item_Outlet_Sales)
FROM grocery_sales
GROUP BY Item_Type;

-- 41Write an SQL query to show minimum Item_Outlet_Sales by Outlet_Establishment_Year
SELECT Outlet_Establishment_Year, MIN(Item_Outlet_Sales)
FROM grocery_sales
GROUP BY Outlet_Establishment_Year;

-- 42 Write an SQL query to show maximum Item_Outlet_Sales by Outlet_Establishment_Year and order it by descending order
SELECT Outlet_Establishment_Year, MAX(Item_Outlet_Sales)
FROM grocery_sales
GROUP BY Outlet_Establishment_Year
ORDER BY Outlet_Establishment_Year DESC;

-- 43 Write an SQL query to show average Item_Outlet_Sales by Outlet_Size and order it it descending order
SELECT Outlet_Size, AVG(Item_Outlet_Sales)
FROM grocery_sales
GROUP BY Outlet_Size
ORDER BY AVG(Item_Outlet_Sales) DESC;

-- 44 Write an SQL query to show average Item_Outlet_Sales by Outlet_Type
SELECT Outlet_Type, AVG(Item_Outlet_Sales)
FROM grocery_sales
GROUP BY Outlet_Type;

-- 45 Write an SQL query to show maximum Item_Outlet_Sales by Outlet_Type
SELECT Outlet_Type, MAX(Item_Outlet_Sales)
FROM grocery_sales
GROUP BY Outlet_Type;

-- 46 Write an SQL query to show total Item_Outlet_Sales by Item_Type
SELECT Item_Type, SUM(Item_Outlet_Sales)
FROM grocery_sales
GROUP BY Item_Type;

-- 47 Write an SQL query to show total Item_Outlet_Sales by Item_Fat_Content
SELECT Item_Fat_Content, SUM(Item_Outlet_Sales)
FROM grocery_sales
GROUP BY Item_Fat_Content;

-- 48 Write an SQL query to show maximum Item_Visibility by Item_Type
SELECT Item_Type, MAX(Item_Visibility)
FROM grocery_sales
GROUP BY Item_Type;

-- 49 Write an SQL query to show Minimum Item_Visibility by Item_Type
SELECT Item_Type, MIN(Item_Visibility)
FROM grocery_sales
GROUP BY Item_Type;


-- 50 Write an SQL query to show total Item_Outlet_Sales by Item_Type but only WHERE Outlet_Location_Type is Tier 1
SELECT Item_Type, SUM(Item_Outlet_Sales)
FROM grocery_sales
WHERE Outlet_Location_Type = 'Tier 1'
GROUP BY Item_Type;

-- 51 Write an SQL query to show total Item_Outlet_Sales by Item_Type WHERE Item_Fat_Content is ONLY Low Fat & LF
SELECT Item_Type, SUM(Item_Outlet_Sales)
FROM grocery_sales
WHERE Item_Fat_Content IN ('Low Fat', 'LF')
GROUP BY Item_Type;