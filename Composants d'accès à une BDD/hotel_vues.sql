CREATE VIEW v_hotelReq1
AS
    SELECT hot_nom AS 'Hotel', sta_nom AS 'Station' FROM hotel.hotel
    JOIN hotel.station ON hotel.hot_sta_id = station.sta_id;

CREATE VIEW v_hotelReq2
AS
    SELECT cha_numero AS 'Chambre', hot_nom AS 'Hotel' FROM hotel.chambre
    JOIN hotel.hotel ON chambre.cha_hot_id = hotel.hot_id;

CREATE VIEW v_hotelReq3
AS
    SELECT res_id AS 'Réservation', cli_nom AS 'Client' FROM hotel.reservation
    JOIN hotel.client ON reservation.res_cli_id = client.cli_id;

CREATE VIEW v_hotelReq4
AS
    SELECT cha_numero AS 'Chambre', hot_nom AS 'Hotel', sta_nom AS 'Station' FROM hotel.chambre
    JOIN hotel.hotel ON chambre.cha_hot_id = hotel.hot_id
    JOIN hotel.station ON hotel.hot_sta_id = station.sta_id;

CREATE VIEW v_hotelReq5
AS
    SELECT res_id AS 'Réservation', cli_nom AS 'Client', hot_nom AS 'Hotel' FROM hotel.reservation
    JOIN hotel.client ON reservation.res_cli_id = client.cli_id
    JOIN hotel.chambre ON reservation.res_cha_id = chambre.cha_id
    JOIN hotel.hotel ON chambre.cha_hot_id = hotel.hot_id;