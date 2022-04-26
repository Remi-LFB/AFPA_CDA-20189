DROP DATABASE IF EXISTS hotel;
CREATE DATABASE hotel;

CREATE TABLE Station(
    num_station INT,
    nom_station VARCHAR(50) NOT NULL UNIQUE,
    PRIMARY KEY (num_station)
);

CREATE TABLE Hotel(
    num_hotel INT,
    nom_hotel VARCHAR(50) NOT NULL UNIQUE,
    cat_hotel VARCHAR(10) NOT NULL,
    cap_hotel SMALLINT NOT NULL,
    adr_hotel VARCHAR(255) NOT NULL UNIQUE,
    num_station INT,
    PRIMARY KEY (num_hotel),
    FOREIGN KEY (num_station) REFERENCES Station(num_station)
);

CREATE TABLE Chambre(
    num_chambre INT,
    typ_chambre VARCHAR(30) NOT NULL,
    cap_chambre TINYINT NOT NULL,
    deg_con_chambre TINYINT NOT NULL,
    exp_chambre VARCHAR(30) NOT NULL,
    num_hotel INT,
    PRIMARY KEY (num_chambre),
    FOREIGN KEY (num_hotel) REFERENCES Hotel(num_hotel)
);

CREATE TABLE Client(
    num_client INT,
    nom_client VARCHAR(30) NOT NULL,
    pre_client VARCHAR(30) NOT NULL,
    adr_client VARCHAR(255) NOT NULL,
    PRIMARY KEY (num_client)
);

CREATE TABLE Reservation(
    num_chambre INT,
    num_client INT,
    dat_debut DATE NOT NULL,
    dat_fin DATE NOT NULL,
    dat_reservation DATE NOT NULL,
    mon_arrhes INT NOT NULL,
    pri_total DECIMAL(6,2) NOT NULL,
    PRIMARY KEY (num_chambre, num_client),
    FOREIGN KEY (num_chambre) REFERENCES Chambre(num_chambre),
    FOREIGN KEY (num_client) REFERENCES Client(num_client)
);