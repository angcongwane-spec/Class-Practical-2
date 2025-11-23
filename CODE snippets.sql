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

