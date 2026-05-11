use nineam_class;
select * from globalsuperstore;
-- Basic filtering
-- 1.	Retrieve all orders where Region = 'West'
select *
from globalsuperstore
where Region="West";

-- 2.	Get all records where Category = 'Furniture'
select *
from globalsuperstore
where Category="Furniture";

-- 3.	Display orders where Sales > 500
select *
from globalsuperstore
where sales > 500;

-- 4.	Show all orders where City = 'New York City'
select * 
from globalsuperstore
where City='New York City';

-- Conditional Filtering
-- 1.	Get orders where Profit < 0
select * 
from globalsuperstore
where Profit < 0;

-- 2.	Find orders where Discount > 0.2
select * 
from globalsuperstore
where Discount > 0.2;

-- 3.	Retrieve orders where Quantity BETWEEN 3 AND 7
select * 
from globalsuperstore
where Quantity BETWEEN 3 AND 7;

-- 4.	Display orders where Ship Mode = 'Second Class
select * 
from globalsuperstore
where `Ship Mode` = 'Second Class';

-- 5.	Get orders where State IN ('California', 'Texas')
select * 
from globalsuperstore
where State IN ('California', 'Texas');

-- Advanced WHERE
-- 1.	Find orders where Category = 'Technology' AND Sales > 1000
select * 
from globalsuperstore
where Category = 'Technology' AND Sales > 1000;

-- 2.	Retrieve orders where Region = 'East' OR Profit < 0
select * 
from globalsuperstore
where Region = 'East' OR Profit < 0;

-- 3.	Get orders where Customer Name starts with 'A'
select * 
from globalsuperstore
where `Customer Name` like 'A%';

-- 4.	Find orders where Product Name contains 'Chair'
select * 
from globalsuperstore
where `Product Name` like '%Chair%';

-- 5.	Retrieve records where Postal Code IS NULL
select * 
from globalsuperstore
where `Postal Code` IS NULL;

/*
SECTION 2: GROUP BY (Aggregation)
Basic Aggregations:
1.	Calculate total sales by Region
*/
select Region,sum(sales) as total_sales
from globalsuperstore
group by Region;

-- 2.	Find total profit by Category
select Category,sum(Profit) as total_profit
from globalsuperstore
group by Category;

-- 3.	Get total quantity sold per Sub-Category
select `Sub-Category`,sum(Quantity) as total_quantity
from globalsuperstore
group by `Sub-Category`;

-- 4.	Count number of orders per Ship Mode
select `Ship Mode`,count(`order id`) as total_orders
from globalsuperstore
group by `Ship Mode`;

-- 5.	Find average Sales per Customer
select `Customer Name`,avg(Sales) as avg_sales
from globalsuperstore
group by `Customer Name`;

-- Intermediate GROUP BY:
-- 1.	Find total sales and profit by Region and Category
select Region,Category, sum(sales) total_sales,sum(Profit) total_profit
from globalsuperstore
group by Region,Category;

-- 2.	Get average discount per Segment
select Segment,avg(Discount) as avg_discount
from globalsuperstore 
group by Segment;

-- 3.	Count number of customers in each Region
select Region,count(`Customer ID`) as total_customers
from globalsuperstore
group by Region;

-- 4.	Find maximum sales per Sub-Category
select `Sub-Category`,max(`Sales`) as max_profit
from globalsuperstore
group by `Sub-Category`;

-- 5.	Get minimum profit per Category
select Category,min(profit) as min_profit
from globalsuperstore
group by `Sub-Category`;

/*
SECTION 3: ORDER BY (Sorting Results)
Basic Sorting:
1.	Display all orders sorted by Sales (ascending)
*/
select * 
from globalsuperstore
order by Sales ASC;

-- 2.	Display all orders sorted by Profit (descending)
select * 
from globalsuperstore
order by profit DESC;

-- 3.	Sort data by Order Date (latest first)
select * 
from globalsuperstore
order by `order date` DESC;

-- 4.	Sort customers alphabetically
select * 
from globalsuperstore
order by `Customer Name`;

-- 5.	Sort products by Category
select * 
from globalsuperstore
order by Category;

-- Multiple Column Sorting
-- 1.	Sort by Region ASC and Sales DESC
select * 
from globalsuperstore
order by region ASC,Sales DESC;

-- 2.	Sort by State and City          
select * 
from globalsuperstore
order by State,City;

-- 3.	Sort by Ship Mode and Order DatE
select * 
from globalsuperstore
order by `Ship Mode`,`Order Date`;

--  4. Sort by Segment DESC and Sales ASC
select * 
from globalsuperstore
order by Segment DESC,Sales ASC;

-- 5. Sort by Category and then Profit
select * 
from globalsuperstore
order by Category,Profit;









