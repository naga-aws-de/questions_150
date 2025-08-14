

-- ZERO ANALYST

use zero_analyst;
# 01 Write the SQL query to find the second highest salary
# Find the department-wise top 2 highest salaries  
# Find employees earning more than the average salary of their department 
#SELECT * FROM employees01(name, department, salary)

# 02 write an SQL query to calculate the total  numbers of returned orders for each month 
# Find the return rate (%) per month
# Find the top 3 highest value returned orders
# Find customers (if added later) who returned more than 1 order in a month
select * from orders02;(OrderID, OrderDate, TotalAmount) 
select * from returns02;(ReturnID, OrderID)

# 03 Write SQL query to find the top-selling products in each category
# Find the total quantity sold and average quantity sold per category
# Find products that sold more than the category average   
SELECT * FROm products03;(product_id, product_name, category, quantity_sold)

# 04 Find the top 2 products in the top 2 categories based on spend amount? SELECT * FROM orders04;
# Find the monthly highest spending product per category
# Find the users who contributed the most spend to each of the top 3 products overall
SELECT * FROM orders04;(category,product,user_id,spend,transaction_date)

# 06 who has not done purchase in last month (orders) 
# List loyal customers who made a purchase in every month for the last 3 months
# Find customers who spent above the average customer spend in the last 30 days 
SELECT * FROM customers06;(customer_id, name, email)
SELECT * FROM orders06;(order_id, customer_id, order_date, amount)

# 07 How would you identify duplicate entries in a SQL in given table employees columns are  emp_id, name, department, salary
SELECT * FROM employees07;

# 08  Write a SQL query to find all products that have not been sold in the last six months. 
	  -- Return the product_id, product_name, category,  and price of these products. 
SELECT * FROM products08;(product_name, category, price)
SELECT * FROM sales08;(product_id, sale_date, quantity)

# 09  write a SQL query to find customers who  bought Airpods after purchasing an iPhone. 
SELECT * FROM customers09;(CustomerID, CustomerName) 
SELECT * FROM purchases09;(PurchaseID, CustomerID, ProductName, PurchaseDate)

# 10 Write a SQL query to classify employees into three categories based on their salary:
select * from employees10;(EmployeeID, FirstName, LastName, Department, Salary)

# 11 Identify returning customers based on their order history. Categorize customers as Returning if they have placed more than one return, 
    --  and as New otherwise. 
SELECT * FROM orders11;(order_id, customer_id, order_date, product_id, quantity)
SELECT * FROM returns11;(return_id, order_id)

# 12 Write a solution to show the unique ID of each user,  If a user does not have a unique ID replace just show null.Return employee name and their unique_id.
Employees12(id,name)
EmployeeUNI(id,unique_id)

# 13 write a SQL query to retrieve all employees  details along with their managers names based on the manager ID 
SELECT * FROM employees13;(emp_id, name, manager_id)

# 14 Find the top 2 customers who have spent the most money across all their orders. 
SELECT * FROM customers;(customer_id, customer_name, customer_email)
SELECT * FROM orders14;(order_id, customer_id, order_date, order_amount)

# 15 Write an SQL query to retrieve the product details for items whose revenue decreased compared to the previous month. 
SELECT * FROM orders15;(order_date, product_id, quantity, price)

# 16 Write a SQL query to find the names of managers who have at least five direct reports.Return the result table in any order. 
SELECT * FROM employees16; -- (id, name, department, managerId)

# 17 Write an SQL query to find customers who have made purchases in all product categories.  
SELECT * FROM customers17;
SELECT * FROM purchases17;

# 18 Write a SQL query to find out each hotal best performing months based on revenue   
SELECT * FROM hotel_bookings18;-- (booking_date, hotel_name, total_guests, total_nights, total_price)

# 19 Find the details of employees whose salary is greater than the average salary across the entire company.  
SELECT * FROM employees19; -- (employee_name, department, salary) 

# 20 Write a query to find products that are sold by both Supplier A and Supplier B, excluding products sold by only one supplier. 
select * from products20; -- (product_id, product_name, supplier_name)

# 21 Calculate the percentage contribution of each product to total revenue? 
SELECT * FROM products21; -- (product_id, product_name, price, quantity_sold)

# 22  Write a solution to find the percentage of immediate orders in the first orders of all customers, rounded to 2 decimal places.  
SELECT * FROM Delivery22; -- (customer_id, order_date, customer_pref_delivery_date)

# 23 Write a query that will identify returning active users. 
	 -- A returning active user is a user that has made a second purchase within 7 days of their first purchase
	 -- Output a list of user_ids of these returning active users. 

SELECT * FROM amazon_transactions23; -- (user_id, item, purchase_date, revenue)

# 24 Calculate the total revenue from each customer in March 2019. Include only customers who were active in March 2019.
	 -- Output the revenue along with the customer id and sort the results based on the revenue in descending order. 
select * from orders24; -- (id, cust_id, order_date, order_details, total_order_cost)

# 25 Find the percentage of shipable orders.Consider an order is shipable if the customers address is known. 
SELECT * FROM customers25; -- (id, first_name, last_name, city, address, phone_number)
SELECT * FROM orders25;    -- (id, cust_id, order_date, order_details, total_order_cost)

# 26 You have a employees table with columns emp_id, emp_name,department, salary, manager_id (manager is also emp in the table))
	--  Identify employees who have a higher salary than their manager. 
select * from employees26;

# 27 Find the best selling item for each month (no need to separate months by year) where the biggest total invoice was paid. 
select * from walmart_eu27; -- (invoiceno, stockcode, description, quantity, invoicedate, unitprice, customerid, country)

# 28 Write a query to find the highest-selling product for each customer Return cx id, product description, and total count of purchase. 
SELECT * FROM walmart_eu27; -- (invoiceno, stockcode, description, quantity, invoicedate, unitprice, customerid, country)

# 29 Find the hotel name and their total numbers of weekends bookings sort the data higher number first!  
select * from bookings29; -- (id, hotel_name, booking_date, cust_id, adult, payment_type)

# 30 You have amazon orders data For each week, find the total number of orders.Include only the orders that are from 
	 -- the first quarter of 2023.The output should contain 'week' and 'quantity'.  
select * from orders30; -- (order_id, order_date, quantity)

# 31 You are provided with a transactional dataset from Amazon that contains detailed information about sales across different products and marketplaces. 
	--  Your task is to list the top 3 sellers in each product category for January.
	--  The output should contain 'seller_id' ,'total_sales' ,'product_category' , 'market_place', and 'month'.  SELECT * FROM sales_data31;

# 32 For each video, find how many unique users flagged it.  A unique user can be identified using the combination of their first name and last name. 
	--  Do not consider rows in which there is no flag ID.  SELECT * FROM user_flags32;

# 33 You have meta table with columns user_id, name, status, country
	 -- Output share of US users that are active.Active users are the ones with an "open" status in the table.
	--  Return total users and active users and active users share for US   SELECT * FROM fb_active_users33;

# 34 Write a query to find starting and ending trans amount for each customer
	-- Return cx_id, their first_transaction_amt, last_transaction and these transaction_date  SELECT * FROM bank_transactions34;

# 35 You have a students table with columns id, name, marks and class of students
	-- Write a query to fetch students with minmum marks and maximum marks  SELECT * FROM students35;

# 36 Write an SQL script to display the  immediate manager of an employee.
	-- Given a table Employees with columns: Emp_No, Emp_Name, and Manager_Id.
	-- The script should take an input parameter Emp_No and return the employees name along with their immediate managers name.
	-- If an employee has no manager (i.e., Manager_Id is NULL),display "No Boss" for that employee. SELECT * FROM employees36;

# 37 Write a SQL query to show all customers and their total spending show only those customers whos total spending has reduced compare to last month ()
	-- Return customer_name, customer_id, last MONTH spend, current month spent 
	-- Note consider last month as March Current Month as April  SELECT * FROM spending_records37;SELECT * FROM customers37;

# 38 Write an SQL query to retrieve employee details from each department who have a salary greater than 
	-- the average salary in their department. select * fron FROM employees38

# 39 Write a SQL query to show each product category and its return percentage. 
	-- return percentage = total_return by category/total_overall_return * 100
	-- SELECT * FROM amazon_products39;SELECT * FROM return_records39;
	-- Expected Output:
	-- Category: Name of the product category.Return Percentage: Percentage of returns for each category.

# 40 Write a SQL query to analyze the order patterns throughout the day, providing insights into each 
	-- hours total orders and their respective percentages of the total orders.  

	-- The output should include the hour, total orders,and order percentage.Order by % order in decending
	-- %orders = hourly order/total_orders * 100
	-- SELECT * FROM order_data40;

# 41 Write an SQL query to find the average amount spent by users per order for each Friday in the first quarter of the year. SELECT * FROM user_purchases41;


# 42 You are given a uber_ride table with columns ride_id, ride_time_stamp, ride_status.(which has information about the ride)
	-- Find out % of ride cancelled by uber_driver      SELECT * FROM uber_ride42;

# 43 You are given a table called forbes_global with columns company, sector, industry, country,sales, profit, rank
	-- Find out each countrys most most profitable company details    SELECT * FROM forbes_global43;

# 44 You are given a table of New York housing  price called house_transactions with columns id, state, city, street_address, mkt_price
	-- Identify properites where the mkt_price of the house  exceeds the citys average mkt_price.  SELECT * FROM house_price44;

# 45 Write an SQL query to calculate the total order amount for each customer who joined in the current year. 
	-- The output should contain Customer_Name and the total amount. SELECT * FROM Customers45;SELECT * FROM orders45;

# 46 Calculate the running total of orders for each customer. 
	-- Return the customer ID, order date,total amount of each order,and the cumulative total of orders for each customer sorted by customer ID and order date.
	-- select * from orders46;

# 47 Write an SQL query to display inventory details  including the product name, quantity in stock, 
	-- remaining stock level ('Medium' if quantity is more than 10, 'Low' otherwise), and supplier ID. select * FROM inventory47;

# 48 Write an SQL query to retrive customer details along with their total order amounts(if any). 
	-- Include the customers name, city, country, and total order amount.    
	-- If a customer hasnt placed any orders,display 'NULL' for the total order amount."  SELECT * FROM customers48;SELECT * FROM orders48;

# 49 You are given a orders table with columns order_id, order_date
	-- Identify the busiest day for orders along with the total number of orders placed on that day. SELECT * FROM orders49;

# 50 orders table has columns seller_id, product_id, category,quantity, price_per_unit
	-- Write an SQL query to find each sellers revenue from each category and each product.
	-- return seller_name, total_revenue in each product inside each category SELECT * FROM sellers50;SELECT * FROM orders50;

































