-- 1.Create a database: RETAIL_DB
CREATE DATABASE RETAIL_DB;
USE RETAIL_DB;

-- 2.Create a table named sales_data with appropriate columns for
CREATE TABLE sales_data 
(
Order_ID INT,
Order_date date,
Customer_ID INT,
Customer_Name varchar(30),
Region Varchar(30),
Product_category varchar(30),
product_Name varchar(30),
Sales_amount decimal(10,2),
Quantity INT,
Discount decimal(5,2)
);
desc sales_data;

-- 3.Modify the table to add a new column called payment_mode.
ALTER TABLE sales_data ADD COLUMN Payment_mode varchar(30);
desc sales_data;

-- 4.Remove the column payment_mode from the table.
ALTER TABLE sales_data DROP COLUMN Payment_mode;
desc sales_data;

-- 5.Rename the customer name column
ALTER TABLE sales_data RENAME COLUMN Customer_Name to Customers;
desc sales_data;

-- 6.Insert at least 10 records into the sales_data table.
INSERT INTO sales_data VALUES
(101,"2026-01-01",1,"Ravi","South","Furniture","Chair",5000,2,5),
(102,"2026-01-02",2,"Sneha","North","Electronics","Mobile",15000,1,10),
(103,"2026-01-03",3,"Amit","East","Clothing","Shirt",1200,3,2),
(104,"2026-01-04",4,"Indu","West","Furniture","Table",8000,1,8),
(105,"2026-01-05",5,"Satya","South","Electronics","Laptop",45000,1,15),
(106,"2026-01-06",6,"Varshini","North","Clothing","Jeans",2000,2,5),
(107,"2026-01-07",7,"Rahul","East","Furniture","Sofa",25000,2,5),
(108,"2026-01-08",8,"Disha","West","Electronics","TV",30000,1,10),
(109,"2026-01-09",9,"Prabha","South","Clothing","Jacket",3500,1,4),
(110,"2026-01-10",10,"Nandini","North","Furniture","Bed",40000,1,20);
Select * from sales_data;

-- 7.Update the discount for all records where product category is “Furniture”.
SET SQL_SAFE_UPDATES=0;
UPDATE sales_data SET Discount=25 WHERE Product_category="Furniture";
select * from sales_data;

-- 8.Delete records where sales amount is equal to  1000.
DELETE FROM sales_data WHERE Sales_amount=1000;

-- 9.Remove all data from the table without deleting the table structure.
Truncate table sales_data;
select * from sales_data;