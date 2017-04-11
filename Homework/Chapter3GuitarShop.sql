SELECT ProductCode, ProductName, ListPrice, DiscountPercent FROM Products ORDER BY ListPrice DESC;

SELECT LastName + ', ' + FirstName AS [FullName] FROM Customers WHERE LastName LIKE '[M-Z]%' ORDER BY LastName;

SELECT ProductName, ListPrice, DateAdded FROM Products WHERE (ListPrice > 500 and ListPrice < 2000) ORDER BY DateAdded DESC;

SELECT ProductName, ListPrice, DiscountPercent, ListPrice *(DiscountPercent/100) AS DiscountAmount, ListPrice*(1+(DiscountPercent/100)) AS DiscountPrice FROM Products ORDER BY ListPrice*(1+(DiscountPercent/100)) DESC;

SELECT ItemID, ItemPrice, DiscountAmount, Quantity, ItemPrice * Quantity AS PriceTotal, DiscountAmount * Quantity AS DiscountTotal, (ItemPrice - DiscountAmount) * Quantity AS ItemTotal FROM OrderItems WHERE (ItemPrice - DiscountAmount) * Quantity > 500 ORDER BY (ItemPrice - DiscountAmount) * Quantity DESC;

SELECT OrderID, OrderDate, ShipDate FROM Orders WHERE ShipDate IS NULL;

SELECT 100 AS Price, .07 AS TaxRate, 100 * .07 AS TaxAmount, 100 + (100*.07) AS Total;