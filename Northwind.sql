-- #1
SELECT * FROM Employees

--2
SELECT Customers.ContactName AS [Customer First Name] FROM Customers
WHERE Customers.City = 'London' OR Customers.City = 'Paris'

--3
SELECT DISTINCT Customers.City AS [Customer City] FROM Customers
ORDER By Customers.City

--4
SELECT Employees.FirstName AS [Employee First Name] FROM Employees
ORDER BY Employees.FirstName

--7
SELECT Employees.Notes AS [Employees with a BA] FROM Employees
WHERE Employees.Notes LIKE ('%BA%')

--9
SELECT Employees.FirstName as [Employees Hired After 1/1/1994] FROM Employees
WHERE Employees.HireDate BETWEEN 1/1/1994 AND GETDATE()

--10
SELECT DATEDIFF(year, Employees.HireDate, GETDATE()) as [Total Years Hired] FROM Employees

--11
SELECT [Order Details].[Quantity] AS [Asecending] FROM [Order Details]
ORDER BY [Order Details].Quantity ASC

SELECT [Order Details].[Quantity] AS [Descending] FROM [Order Details]
ORDER BY [Order Details].Quantity DESC

--12
SELECT * from Products
WHERE UnitsInStock < 6

--13
SELECT * from Products
WHERE Products.Discontinued > 0

--14
SELECT * from Products
WHERE Products.ProductName LIKE '%tofu%'

--15
SELECT MAX(Products.UnitPrice) FROM Products

--16
SELECT Employees.FirstName AS [Employee Hired After 1/1/1993] FROM Employees
WHERE Employees.HireDate > 1/1/1993

--17
SELECT Employees.FirstName AS [Employees under Ms. and Mrs.] FROM Employees
WHERE Employees.TitleOfCourtesy = 'Ms.' OR Employees.TitleOfCourtesy = 'Mrs.'

--18
SELECT Employees.FirstName AS [Employees with 206 Area Code] FROM Employees
WHERE Employees.HomePhone LIKE '%2'
