USE northwind;

CREATE TRIGGER insert_order_details
    BEFORE INSERT ON order_details
    FOR EACH ROW
BEGIN
    DECLARE v_customer_country VARCHAR(15);
    DECLARE v_supplier_country VARCHAR(15);

    SET v_customer_country =
            END;