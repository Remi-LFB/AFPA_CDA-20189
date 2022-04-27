CREATE TABLE Client(
                       N_Client INT AUTO_INCREMENT,
                       NomClient VARCHAR(50)  NOT NULL,
                       PrenomClient VARCHAR(50)  NOT NULL,
                       PRIMARY KEY(N_Client)
);

CREATE TABLE Commande(
                         N_Commande INT AUTO_INCREMENT,
                         DateCommande DATE NOT NULL,
                         MontantCommande DECIMAL(6,2)   NOT NULL,
                         N_Client INT NOT NULL,
                         PRIMARY KEY(N_Commande),
                         FOREIGN KEY(N_Client) REFERENCES Client(N_Client)
);

CREATE TABLE Article(
                        N_Article INT AUTO_INCREMENT,
                        DesignationArticle VARCHAR(50)  NOT NULL,
                        PUArticle DECIMAL(6,2)   NOT NULL,
                        PRIMARY KEY(N_Article),
                        UNIQUE(DesignationArticle)
);

CREATE TABLE SeComposeDe(
                            N_Commande INT,
                            N_Article INT,
                            Qte SMALLINT NOT NULL,
                            TauxTVA DECIMAL(4,2)   NOT NULL,
                            PRIMARY KEY(N_Commande, N_Article),
                            FOREIGN KEY(N_Commande) REFERENCES Commande(N_Commande),
                            FOREIGN KEY(N_Article) REFERENCES Article(N_Article)
);