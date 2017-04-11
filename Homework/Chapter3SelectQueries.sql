SELECT VendorContactFName AS [Vendor FName], VendorContactLName AS [Vendor LName], VendorName AS [Vendor Full Name] FROM Vendors ORDER BY VendorContactLName, VendorContactFName;

SELECT InvoiceNumber AS [Number], InvoiceTotal [Total], PaymentTotal + CreditTotal AS [Credits], InvoiceTotal - (PaymentTotal + CreditTotal) AS [Balance] FROM Invoices;

SELECT VendorContactLName + ', ' +VendorContactLName AS [Full Name] FROM Vendors ORDER BY VendorContactLName, VendorContactFName;
 
SELECT InvoiceTotal, InvoiceTotal * .10 AS [10%], InvoiceTotal * 1.10 AS [Plus 10%] FROM Invoices;

SELECT InvoiceNumber AS [Number], InvoiceTotal [Total], PaymentTotal + CreditTotal AS [Credits], InvoiceTotal - (PaymentTotal + CreditTotal) AS [Balance] FROM Invoices WHERE InvoiceTotal<10000 AND InvoiceTotal > 500;

SELECT VendorContactLName + ', ' +VendorContactLName AS [Full Name] FROM Vendors WHERE VendorContactLName LIKE '[A-C]%' OR LEFT(VendorContactLName, 1) = 'D' ORDER BY VendorContactLName;

SELECT PaymentDate FROM Invoices WHERE (PaymentDate IS NULL AND InvoiceTotal - (PaymentTotal + CreditTotal) != 0) OR (PaymentDate IS NOT NULL AND InvoiceTotal - (PaymentTotal + CreditTotal) = 0);