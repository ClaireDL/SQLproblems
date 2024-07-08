--Exercise 18

SELECT Year(OrderDate) as "yearoforderdate", SUM(totaldue) as totaldueorder
FROM Sales.SalesOrderHeader
WHERE Year(OrderDate) <= 2016
GROUP BY Year(OrderDate)
ORDER BY Year(OrderDate)

-- Exercise 17
-- SELECT DATEPART(MONTH, OrderDate) as "Year", SUM(TotalDue) as "Order Amount"
-- FROM Sales.SalesOrderHeader
-- GROUP BY DATEPART(MONTH, OrderDate)
-- ORDER BY DATEPART(MONTH, OrderDate)

-- Exercise 16
-- SELECT a.City, COUNT(b.BusinessEntityID)
-- FROM Person.BusinessEntityAddress as b
-- INNER JOIN Person.Address as a
-- ON b.AddressID = a.AddressID
-- GROUP BY a.City
-- ORDER BY a.City

-- Exercise 15
-- SELECT LocationID, SUM(Quantity)
-- FROM Production.ProductInventory
-- GROUP BY GROUPING SETS (LocationID, ())

-- Exercise 14
-- SELECT LocationID, Shelf, SUM(Quantity) as TotalQuantity
-- FROM Production.ProductInventory
-- GROUP BY GROUPING SETS (ROLLUP (locationID, Shelf), CUBE (LocationID, Shelf))

-- Exercise 13
-- SELECT LocationID, Shelf, SUM(Quantity) AS TotalQuantity
-- FROM Production.ProductInventory
-- GROUP By CUBE (LocationID, Shelf)

-- Exercise 12
-- SELECT SalesPersonID, CustomerID, SUM(Subtotal) as Sum_Subtotal
-- FROM Sales.SalesOrderHeader s
-- GROUP BY ROLLUP(SalesPersonID, CustomerID)
-- ORDER BY SalesPersonID DESC

-- Exercise 11
-- SELECT Person.Person.BusinessEntityID, FirstName, LastName, PhoneNumber
-- FROM Person.Person
-- JOIN Person.PersonPhone ON Person.Person.BusinessEntityID = Person.PersonPhone.BusinessEntityID
-- WHERE LastName LIKE 'L%' 

-- Exercise 10
-- SELECT SUM(Quantity)  as total_quantity
-- FROM Production.ProductInventory
-- GROUP BY (LocationID * 10)

-- Exercise 9
-- SELECT ProductID, SUM(Quantity) as TotalQuantity
-- FROM Production.ProductInventory
-- WHERE Shelf in ('A', 'C', 'H')
-- GROUP BY ProductID
-- FILTER (WHERE SUM(QUantity) > 500)
-- ORDER BY ProductID

-- Exercise 8
-- SELECT AVG(subtotal) as avg_subtotal, SUM(subtotal) as sum_subtotal
-- FROM Sales.SalesOrderHeader
-- GROUP BY CustomerID, SalesPersonID
-- ORDER BY CustomerID DESC

-- Exercise 7
-- SELECT CustomerID, SUM(freight) as total_freight
-- FROM Sales.SalesOrderHeader
-- GROUP BY CustomerID
-- ORDER BY CustomerID

-- Exercise 6
-- SELECT Distinct JobTitle 
-- FROM HumanResources.Employee
-- ORDER BY JobTitle

-- Exercise 5
-- SELECT Salesorderid, CustomerID, OrderDate, SubTotal, (taxamt/SubTotal)*100 as tax_percent
-- FROM Sales.SalesOrderHeader
-- Order by SubTotal