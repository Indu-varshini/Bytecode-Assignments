-- MYSQL ASSIGNMENT QUESTIONS ON COMBINATION OF WHERE, GROUPBY, HAVING, ORDER BY, LIMIT
-- 1. Find customers with more than 5 orders, show total sales, sorted by highest sales
use nineam_class;
select `Customer Name`, sum(sales) as total_sales 
from globalsuperstore
group by `Customer Name`
having Count("Order ID") > 5
order by sum(sales) DESC;

-- 2. Get top 5 subcategories by total quantity, only where total quantity > 100
select `Sub-Category`,sum(Quantity) as total_quantity
from globalsuperstore
group by `Sub-Category`
having total_quantity > 100
order by total_quantity DESC
LIMIT 5;

-- 3. Find regions where average sales is greater than 300, sort highest to lowest
select Region, avg(sales) as Average_sales from globalsuperstore
group by Region
having avg(sales) > 300
Order by avg(sales) DESC;

-- 4. Get customers whose total profit is negative, show lowest first
select `Customer ID`,sum(Profit) as Total_profit
from globalsuperstore
group by `Customer ID`
having Total_profit < 0
order by Total_profit;

-- 5. Find top 3 categories by total sales, only where Sales > 5000
select Category,sum(sales) as total_sales
from globalsuperstore
group by Category
Having sum(Sales) > 5000
order by total_sales DESC
LIMIT 3;

-- 6. Get subcategories where total profit is positive, sort by lowest profit
select `Sub-Category`,sum(Profit) as Total_profit
from globalsuperstore
group by `Sub-CAtegory`
having Total_profit > 0
order by Total_profit;

-- 7. Find customers who have average discount greater than 20%
select `Customer ID`,Avg(Discount) as Average_discount
from globalsuperstore
group by `Customer ID`
having Average_discount > 0.2;

-- 8. Get regions where total quantity sold is more than 200, sorted descending
select Region, sum(Quantity) as total_quantity
from globalsuperstore
group by Region
Having total_quantity > 200
order by total_quantity DESC;

-- 9. Find top 5 customers by total sales, only if their total sales > 3000
select `Customer ID`, sum(Sales) as total_sales
from globalsuperstore
group by `Customer ID`
Having total_sales > 3000
order by total_sales DESC
LIMIT 5;

-- 10. Get subcategories where maximum discount is more than 50%
select `Sub-Category`,max(Discount) as max_discount
from globalsuperstore
group by `Sub-Category`
having max_discount > 0.5;

-- 11. Find customers with more than 3 orders, sort by orders then name
select `Customer Name`,Count(`Order ID`) as total_orders
from globalsuperstore
group by `Customer Name`
having total_orders > 3
Order by total_orders,`Customer Name`;

-- 12. Get categories where total quantity is greater than 150, show top 2
select `Sub-Category`,sum(Quantity) as total_quantity
from globalsuperstore
group by `Sub-Category`
having total_quantity > 150
LIMIT 2; 

-- 13. Find regions where total profit is less than 1000, sort lowest first
select Region, sum(profit) as total_profit
from globalsuperstore
group by Region
having total_profit < 1000
order by total_profit;

-- 14. Get customers whose total sales is more than 2000, sorted by profit
select `Customer ID`,sum(sales) as total_sales,sum(Profit) as total_profit
from globalsuperstore
group by `Customer ID`
having total_sales > 2000
order by total_profit;

-- 15. Find subcategories where average quantity is more than 3
select `Sub-Category`,Avg(Quantity) as average_Quantity
from globalsuperstore
group by `Sub-Category`
having average_Quantity > 3;

-- 16. Find top 4 customers by total profit, only if their profit is greater than 1000
select `Customer ID`,sum(Profit) as total_profit
from globalsuperstore
group by `Customer ID`
having total_profit > 1000
order by total_profit DESC
LIMIT 4;

-- 17. Get regions where maximum sales in a single order is greater than 2000
select Region, max(sales) as max_sales
from globalsuperstore
group by Region
having max_sales > 2000;

-- 18. Find subcategories where average profit is less than 50, sort lowest first
select `Sub-Category`,avg(Profit) as Avg_profit
from globalsuperstore
group by `Sub-Category`
having Avg_profit<50
order by Avg_profit;

-- 19. Get top 3 regions by total sales, only if total sales > 10000
select Region,sum(Sales) as total_sales
from globalsuperstore
group by Region
having total_sales>10000
order by total_sales DESC
LIMIT 3;

-- 20. Find customers whose minimum profit is negative (they had at least one loss)
select `Customer Name`, min(Profit) as min_profit
from globalsuperstore
group by `Customer Name`
having min_profit<0;

-- 21. Get categories where average discount is greater than 25%, sorted descending
select Category,avg(Discount) as Avg_discount
from globalsuperstore
group by Category
having Avg_discount>0.25
order by Avg_discount DESC;

-- 22. Find top 5 subcategories by total profit, only if profit > 500
select `Sub-Category`,sum(Profit) as total_profit
from globalsuperstore
group by `Sub-Category`
having total_profit>500
order by total_profit DESC
LIMIT 5;

-- 23.Get customers where total quantity purchased is more than 50, sorted by quantity
select `Customer Name`,sum(Quantity) as total_quantity
from globalsuperstore
group by `Customer Name`
having total_quantity > 50
order by total_quantity;

-- 24. Find regions where minimum discount is 0 (at least one full-price order exists)
select Region, min(Discount) min_discount
from globalsuperstore
group by Region 
having min_discount=0;

-- 25. Get top 3 customers by total quantity, only if quantity > 30
select `Customer Name`,sum(Quantity) as total_quantity
from globalsuperstore
group by `Customer Name`
having total_quantity > 30
order by total_quantity DESC
LIMIT 3;







