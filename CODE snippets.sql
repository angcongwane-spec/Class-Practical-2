-- 1. INNER JOIN: Orders with Customer and Product Names
-- Question:
-- List all orders along with the customer name and product name.
-- Expected Output Columns:
-- OrderID, OrderDate, CustomerName, ProductName, Quantity

SELECT ORDERID, ORDERDATE, CUSTOMERNAME, PRODUCTNAME, QUANTITY 
FROM SQLJOINS.JOINS.ORDERS AS A
INNER JOIN SQLJOINS.JOINS.CUSTOMERS AS B
ON A.CUSTOMERID = B.CUSTOMERID
INNER JOIN SQLJOINS.JOINS.PRODUCTS AS C
ON A.PRODUCTID = C.PRODUCTID;


-- 2. INNER JOIN: Customers Who Placed Orders
-- Question:
-- Which customers have placed at least one order?
-- Expected Output Columns:
-- • CustomerID, CustomerName, Country, OrderID, OrderDate

SELECT A.CUSTOMERID, A.CUSTOMERNAME, A.COUNTRY, B.ORDERID, B.QUANTITY
FROM SQLJOINS.JOINS.CUSTOMERS AS A
INNER JOIN SQLJOINS.JOINS.ORDERS AS B
ON A.CUSTOMERID = B.CUSTOMERID
WHERE B.QUANTITY = 1;


-- 3. LEFT JOIN: All Customers and Their Orders
-- Question:
-- List all customers and any orders they might have placed. Include customers who have 
-- not placed any orders.
-- Expected Output Columns:
-- • CustomerID, CustomerName, Country, OrderID, OrderDate, ProductID, Quantity

SELECT A.CUSTOMERID, A.CUSTOMERNAME, A.COUNTRY, B.ORDERID, B.ORDERDATE, B.PRODUCTID, B.QUANTITY
FROM SQLJOINS.JOINS.CUSTOMERS AS A
LEFT JOIN ORDERS AS B
ON A.CUSTOMERID = B.CUSTOMERID
ORDER BY QUANTITY ASC;


-- 4. LEFT JOIN: Product Order Count
-- Question:
-- List all products and how many times each was ordered (if any).
-- Expected Output Columns:
-- • ProductID, ProductName, TotalOrders
-- (TotalOrders is the count of how many times the product appears in orders)

SELECT A.PRODUCTID, A.PRODUCTNAME, COUNT (B.PRODUCTID) AS TOTALORDERS
FROM SQLJOINS.JOINS.PRODUCTS AS A
LEFT JOIN ORDERS AS B
ON A.PRODUCTID = B.PRODUCTID
GROUP BY A.PRODUCTID, A.PRODUCTNAME;
