# Question 1
SELECT
e. firstName,
e. lastName,
e. email,
e. officeCode
FROM employees e

# Results1
15:45:06	SELECT e. firstName, e. lastName, e. email, e. officeCode FROM employees e LIMIT 0, 1000	23 row(s) returned	0.047 sec / 0.000 sec

# Results2
Inner join employees and offices tables on officeCode column to get the required details of employees along with their office codes.
15:47:22	SELECT e. firstName, e. lastName, e. email, e. officeCode FROM employees e INNER JOIN offices o LIMIT 0, 1000	161 row(s) returned	0.015 sec / 0.000 sec

# Results3
ON e.officeCode = o.officeCode;
15:50:24	SELECT e. firstName, e. lastName, e. email, e. officeCode FROM employees e INNER JOIN offices o ON e.officeCode = o.officeCode LIMIT 0, 1000	23 row(s) returned	0.000 sec / 0.000 sec

# Question 2
SELECT 
p.productName,
p.productVendor,
p.productLine
FROM products p

#Results1
15:53:35	SELECT  p.productName, p.productVendor, p.productLine FROM products p LIMIT 0, 1000	110 row(s) returned	0.016 sec / 0.000 sec

#Results2
LEFT JOIN productlines pl
    ON p.productLine = pl.productLine;
    15:54:20	SELECT  p.productName, p.productVendor, p.productLine FROM products p LEFT JOIN productlines pl     ON p.productLine = pl.productLine LIMIT 0, 1000	110 row(s) returned	0.016 sec / 0.000 sec


# Question 3
SELECT 
    orders.orderDate,
    orders.shippedDate,
    orders.status,
    orders.customerNumber
FROM customers
RIGHT JOIN orders

#Results
15:56:47	SELECT      orders.orderDate,     orders.shippedDate,     orders.status,     orders.customerNumber FROM customers RIGHT JOIN orders     ON customers.customerNumber = orders.customerNumber LIMIT 0, 1000	326 row(s) returned	0.031 sec / 0.000 sec
