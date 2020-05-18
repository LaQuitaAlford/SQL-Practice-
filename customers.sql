--1. Select all the records from the "Customers" table
SELECT *
FROM Customers;
-- 2. Get distinct countries from the Customers table.
SELECT Countries
FROM Customers;
-- 3. Get all the records from the table Customers where the Customer’s ID starts with “BL”.
SELECT *
FROM Customers
WHERE Id LIKE "bl";
-- 4. Get the first 100 records of the orders table.
SELECT Records
FROM Orders
WHERE Records >100;
-- 5. Get all customers that live in the postal codes 1010, 3012, 12209, and 05023.
SELECT *
FROM Customers
WHERE CostalCode LIKE '1010';
-- 6. Get all orders where the ShipRegion is not equal to NULL.
SELECT *
FROM Orders
WHERE ShipRegion <> NUll
-- 7. Get all customers ordered by the country, then by the city.
SELECT *
FROM Customers
ORDER BY Country, City
-- 8. Add a new customer to the customers table. You can use whatever values/
INSERT INTO Customers
    (name, age, order)
VALUES
    ('krista', '35', 'pizza');
-- 9. Update all ShipRegion to the value ‘EuroZone’ in the Orders table, where the
-- ShipCountry is equal to France.
UPDATE Orders SET ShipRegion='EuroZone' WHERE ShipCountry='France';
-- 10. Delete all orders from `order_details` that have a quantity of 1.
DELETE FROM Orders WHERE order_details = 1;
-- 11. Calculate the average, max, and min of the quantity at the `order details` table.
SELECT AVG(quantity)
FROM order_details;
SELECT MAX(quantity)
FROM order_detials;
SELECT MIN(quantity)
FROM order_details;
-- 12. Calculate the average, max, and min of the quantity at the `order details` table,
-- grouped by the orderid.
SELECT AVG(quantity)
FROM order_details
GROUP BY orderid;
SELECT MAX(quantity)
FROM order_detials
GROUP BY orderid;
SELECT MIN(quantity)
FROM order_details
GROUP BY orderid;
-- 13. Find the CustomerID that placed order 10290 (orders table)
SELECT CustomerID
FROM
Order WHERE OrderID = 10290
-- 14. Do an inner join, left join, right join on orders and customers tables. (These are three
-- separate queries, one for each type of join.)
-- inner join
SELECT order_number
FROM Orders INNER JOIN Customers ON
Order.Order_number = Customers.Order;
--left join
SELECT order_number
FROM Orders LEFT JOIN Customers ON
Order.Order_number = Customers.name;
--right join
SELECT order_number
FROM Orders RIGHT JOIN Customers ON
Order.Order_number = Customers.name;
-- 15. Use a join to get the ship city and ship country of all the orders which are associated
-- with an employee who is in London.
SELECT Orders.ShipCity, Orders.ShipCountry
FROM Orders INNER JOIN Employees LOCATION  ="france"
-- 16. Use a join to get the ship name of all orders that include a discontinued product. (See
-- orders, order_details, and products. 1 means discontinued.)
SELECT ShipName
FROM Orders JOIN Products ON
Order.order_details=1;
-- 17. Get first names of all employees who report to no one.
SELECT CustomerName
FROM employees
WHERE report="no one"
-- Get first names of all employees who report to Andrew.
SELECT CustomerName
FROM employees
WHERE report="Andrew"