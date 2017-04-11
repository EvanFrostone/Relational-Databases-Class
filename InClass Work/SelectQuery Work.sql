--This is a single line comment
/*This here is a bonified 
multi line comment */

SELECT * FROM Vendors;
--Selects all off the columns from the Vendors Table.

SELECT InvoiceNumber FROM Invoices;
--Selects the InvoiceNumber column from the Invoices Table.

SELECT InvoiceNumber, InvoiceDate, InvoiceTotal FROM Invoices;
--Selects multiple columns from the Invoices Table. Pay attention to the commas between column titles. 

SELECT InvoiceNumber, InvoiceDate, InvoiceTotal From Invoices WHERE InvoiceNumber = '111897' ORDER BY InvoiceDate;
--Selects multiple columns from the Invoices Table. Specifies to pull from Invoice number '111897' and orders the singular result by InvoiceDate

SELECT VendorContactFName + ' ' + VendorContactLName As VendorName From Vendors; 
--This is an example of string concatenation or adding strings together. Works like python in that it you can put strings in single quotes, and this gives you the ability to add spaces inbetween concaternated columns.

SELECT InvoiceID, InvoiceTotal, CreditTotal + PaymentTotal AS TotalCredits FROM Invoices WHERE InvoiceID = 17;
--Selects multiple columns from the Invoices Table. Adds together CreditTotal and PaymenTotal and stores result in Total Credits. At the end, specifies to print only when InvoiceID = 17.

SELECT InvoiceNumber, InvoiceDate, InvoiceTotal FROM Invoices WHERE InvoiceDate BETWEEN '01-01-2016' AND '02-29-2016 11:59PM' ORDER BY InvoiceDate;
/*Selects multiple columns from Invoices. Gets results if they are between the first of January and the last of February, and orders them by InvoiceDate. 'Jan 01, 2016' really means 12:00 AM on January 1st of 2016.
 If you want the check to stretch from the beginning of January to the end of February, you need to specify 'Feb 29, 2016 11:59PM'.
 */

SELECT * FROM Invoices WHERE InvoiceDate >= 'Jan 01, 2016' AND InvoiceDate <= 'Feb 29, 2016';
--The same as the query above, simply unpacks the 'between' clause.

SELECT * FROM Invoices WHERE InvoiceTotal >= 100000;
--Selects all columns from the Invoice table only if the invoice total is greater than 100000;
 
print GETDATE();
--Uses the GETDATE() Funtion to print the current date/time

SELECT InvoiceNumber, InvoiceTotal -(PaymentTotal + CreditTotal) AS BalanceDue FROM Invoices ORDER BY BalanceDue DESC;
--Calculates the balance due for all invoices, orders them from largest to smallest with the 'DESC' displaying the balances in descending order.

SELECT InvoiceNumber, InvoiceTotal -(PaymentTotal + CreditTotal) AS BalanceDue FROM Invoices WHERE InvoiceTotal -(PaymentTotal + CreditTotal) != 0 ORDER BY BalanceDue DESC;
--Calculates the balance due for all invoices, and filters out all the balances without balances due.
--Can sort by a column alias (i.e BalanceDue) but cannot sort by column alias.
--The '<>' is NOT EQUAL in SQL, != will also work

SELECT InvoiceNumber AS [Invoice Number] From Invoices;