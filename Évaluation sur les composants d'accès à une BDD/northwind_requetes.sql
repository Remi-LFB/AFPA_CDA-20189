/* 1 */

SELECT CompanyName AS 'Société', ContactName AS 'Contact', ContactTitle AS 'Fonction', Phone AS 'Téléphone' FROM northwind.customers
WHERE Country = 'France';

/* 2 */

SELECT ProductName AS 'Produit', UnitPrice AS 'Prix' FROM northwind.products
JOIN northwind.suppliers ON products.SupplierID = suppliers.SupplierID
WHERE CompanyName = 'Exotic Liquids';

/* 3 */

SELECT CompanyName AS 'Fournisseur', COUNT(ProductID) AS 'Nbre produits' FROM northwind.products
JOIN northwind.suppliers ON products.SupplierID = suppliers.SupplierID
WHERE Country = 'France'
GROUP BY CompanyName
ORDER BY COUNT(ProductID) DESC;

/* 4 */

SELECT CompanyName AS 'Client', COUNT(OrderID) AS 'Nbre commandes' FROM northwind.customers
JOIN northwind.orders ON customers.CustomerID = orders.CustomerID
WHERE Country = 'France'
GROUP BY CompanyName
HAVING COUNT(OrderID) > 10;

/* 5 */

SELECT CompanyName AS 'Client', SUM(UnitPrice * Quantity) AS 'CA', Country AS 'Pays' FROM northwind.customers
JOIN northwind.orders ON customers.CustomerID = orders.CustomerID
JOIN northwind.order_details ON orders.OrderID = order_details.OrderID
GROUP BY CompanyName
HAVING SUM(UnitPrice * Quantity) > 30000
ORDER BY SUM(UnitPrice * Quantity) DESC;

/* 6 */

SELECT DISTINCT(customers.Country) AS 'Pays' FROM northwind.customers
JOIN northwind.orders ON customers.CustomerID = orders.CustomerID
JOIN northwind.order_details ON orders.OrderID = order_details.OrderID
JOIN northwind.products ON order_details.ProductID = products.ProductID
JOIN northwind.suppliers ON products.SupplierID = suppliers.SupplierID
WHERE suppliers.CompanyName = 'Exotic Liquids'
ORDER BY customers.Country ASC;

/* 7 */

SELECT SUM(UnitPrice * Quantity) AS 'Montant Ventes 97' FROM order_details
JOIN northwind.orders ON order_details.OrderID = orders.OrderID
WHERE YEAR(OrderDate) = '1997';

/* 8 */

SELECT MONTH(OrderDate) AS 'Mois 97', SUM(UnitPrice * Quantity) AS 'Montant Ventes' FROM order_details
JOIN northwind.orders ON order_details.OrderID = orders.OrderID
WHERE YEAR(OrderDate) = '1997'
GROUP BY MONTH(OrderDate)
ORDER BY MONTH(OrderDate) ASC;

/* 9 */

SELECT OrderDate AS 'Date de dernière commande' FROM northwind.orders
JOIN northwind.customers ON orders.CustomerID = customers.CustomerID
WHERE CompanyName = 'Du monde entier'
ORDER BY OrderDate DESC
LIMIT 1;

/* 10 */

SELECT ROUND(AVG(DATEDIFF(ShippedDate, OrderDate))) AS 'Délai moyen de livraison en jours' FROM northwind.orders;