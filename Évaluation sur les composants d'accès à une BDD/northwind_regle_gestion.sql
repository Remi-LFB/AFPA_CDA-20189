USE northwind;

DELIMITER |

CREATE TRIGGER insert_order_details AFTER INSERT ON order_details
    FOR EACH ROW
    BEGIN
        DECLARE v_order_id INT;
        DECLARE v_product_id INT;
        DECLARE v_customer_country VARCHAR(15);
        DECLARE v_supplier_country VARCHAR(15);

        SET v_order_id = NEW.OrderID;
        SET v_product_id = NEW.ProductID;
        SET v_customer_country = (
            SELECT Country FROM northwind.customers
            JOIN northwind.orders ON customers.CustomerID = orders.CustomerID
            JOIN northwind.order_details ON orders.OrderID = order_details.OrderID
            WHERE orders.OrderID = v_order_id
            LIMIT 1
        );
        SET v_supplier_country = (
            SELECT Country FROM northwind.suppliers
            JOIN northwind.products ON suppliers.SupplierID = products.SupplierID
            WHERE products.ProductID = v_product_id
            LIMIT 1
        );

        IF (v_customer_country <> v_supplier_country) THEN
            SIGNAL SQLSTATE '40000' SET MESSAGE_TEXT = 'Un problème est survenu. Le pays du client ne correspond pas à celui du fournisseur du produit.';
        END IF;
    END |

DELIMITER ;
