DROP DATABASE IF EXISTS papyrus;
CREATE DATABASE papyrus;

CREATE TABLE produit(
    codart CHAR(4),
    libart VARCHAR(30) NOT NULL,
    stkale INT(10) NOT NULL,
    stkphy INT(10) NOT NULL,
    qteann INT(10) NOT NULL,
    unimes CHAR(5) NOT NULL,
    PRIMARY KEY (codart)
);

CREATE TABLE fournis(
    numfou VARCHAR(25),
    nomfou VARCHAR(25) NOT NULL,
    ruefou VARCHAR(50) NOT NULL,
    posfou CHAR(5) NOT NULL,
    vilfou VARCHAR(30) NOT NULL,
    confou VARCHAR(15) NOT NULL,
    satisf TINYINT(3),
    PRIMARY KEY (numfou)
);

CREATE TABLE vente(
    numfou VARCHAR(25) NOT NULL,
    codart CHAR(4) NOT NULL,
    delliv SMALLINT(5) NOT NULL,
    qte1 INT(10) NOT NULL,
    prix1 VARCHAR(50) NOT NULL,
    qte2 INT(10),
    prix2 VARCHAR(50),
    qte3 INT(10),
    prix3 VARCHAR(50),
    PRIMARY KEY (numfou, codart),
    FOREIGN KEY (numfou) REFERENCES fournis(numfou),
    FOREIGN KEY (codart) REFERENCES produit(codart)
);

CREATE TABLE entcom(
    numcom INT(10) AUTO_INCREMENT,
    obscom VARCHAR(50),
    datcom DATE NOT NULL,
    numfou VARCHAR(25) DEFAULT NULL,
    PRIMARY KEY (numcom),
    FOREIGN KEY (numfou) REFERENCES fournis(numfou)
);

CREATE TABLE ligcom(
    numlig TINYINT(3),
    qtecde INT(10) NOT NULL,
    priuni VARCHAR(50) NOT NULL,
    qteliv INT(10),
    derliv DATETIME NOT NULL,
    numcom INT(10) NOT NULL,
    codart CHAR(4) NOT NULL,
    PRIMARY KEY (numlig),
    FOREIGN KEY (numcom) REFERENCES entcom(numcom),
    FOREIGN KEY (codart) REFERENCES produit(codart)
);

CREATE TABLE ligcom(
    numlig TINYINT(3),
    qtecde INT(10) NOT NULL,
    priuni VARCHAR(50) NOT NULL,
    qteliv INT(10),
    derliv DATE NOT NULL,
    numcom INT(10) NOT NULL,
    codart CHAR(4) NOT NULL,
    PRIMARY KEY (numlig, numcom),
    FOREIGN KEY (numcom) REFERENCES entcom(numcom),
    FOREIGN KEY (codart) REFERENCES produit(codart)
);

CREATE INDEX index_numfou ON entcom(numfou);