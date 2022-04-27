USE northwind;

DELIMITER |

CREATE PROCEDURE dateDerniereCommande(IN Client VARCHAR(40))

BEGIN
    SELECT OrderDate AS 'Date de dernière commande' FROM northwind.orders
    JOIN northwind.customers ON orders.CustomerID = customers.CustomerID
    WHERE CompanyName = Client
    ORDER BY OrderDate DESC
    LIMIT 1;
END |

CREATE PROCEDURE delaiMoyenLivraison()

BEGIN
    SELECT ROUND(AVG(DATEDIFF(ShippedDate, OrderDate))) AS 'Délai moyen de livraison en jours' FROM northwind.orders;
END |

DELIMITER ;