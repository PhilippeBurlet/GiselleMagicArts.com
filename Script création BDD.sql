#------------------------------------------------------------
#        Script MySQL.
#------------------------------------------------------------


#------------------------------------------------------------
# Table: Potions
#------------------------------------------------------------

CREATE TABLE Potions(
        ID                    int (11) Auto_increment  NOT NULL ,
        Nom                   TinyText NOT NULL ,
        Prix                  Numeric NOT NULL ,
        Diluant               TinyText NOT NULL ,
        Ingredient_1          TinyText NOT NULL ,
        Quantite_1            Numeric NOT NULL ,
        Ingredient_2          TinyText NOT NULL ,
        Quantite_2            Numeric NOT NULL ,
        Ingredient_3          TinyText NOT NULL ,
        Quantite_3            Numeric NOT NULL ,
        Ingredient_4          TinyText NOT NULL ,
        Quantite_4            Numeric NOT NULL ,      
        PRIMARY KEY (ID )
)ENGINE=InnoDB;


#------------------------------------------------------------
# Table: Onguents
#------------------------------------------------------------

CREATE TABLE Onguents(
        ID                    int (11) Auto_increment  NOT NULL ,
        Nom                   TinyText NOT NULL ,
        Prix                  Numeric NOT NULL ,
        Ingredient_1          TinyText NOT NULL ,
        Quantite_1            Numeric NOT NULL ,
        Ingredient_2          TinyText NOT NULL ,
        Quantite_2            Numeric NOT NULL ,
        Ingredient_3          TinyText NOT NULL ,
        Quantite_3            Numeric NOT NULL ,
        Ingredient_4          TinyText NOT NULL ,
        Quantite_4            Numeric NOT NULL ,
        PRIMARY KEY (ID )
)ENGINE=InnoDB;


#------------------------------------------------------------
# Table: Inventeurs
#------------------------------------------------------------

CREATE TABLE Inventeurs(
        ID          int (11) Auto_increment  NOT NULL ,
        Nom         TinyText NOT NULL ,
        PRIMARY KEY (ID )
)ENGINE=InnoDB;


#------------------------------------------------------------
# Table: Ingrédients
#------------------------------------------------------------

CREATE TABLE Ingredients(
        ID                    int (11) Auto_increment  NOT NULL ,
        Nom                   TinyText NOT NULL ,
        Fraicheur             Numeric NOT NULL ,
        Date_Reception        Date NOT NULL ,
        PRIMARY KEY (ID )
)ENGINE=InnoDB;


#------------------------------------------------------------
# Table: Fournisseurs
#------------------------------------------------------------

CREATE TABLE Fournisseurs(
        ID             int (11) Auto_increment  NOT NULL ,
        Nom            TinyText NOT NULL ,
        PRIMARY KEY (ID )
)ENGINE=InnoDB;


#------------------------------------------------------------
# Table: Commandes
#------------------------------------------------------------

CREATE TABLE Commandes(
        ID                     int (11) Auto_increment  NOT NULL ,
        Numero                 Numeric NOT NULL ,
        Date_Commande          Date NOT NULL ,
        Etat                   Bool NOT NULL ,
        PRIMARY KEY (ID )
)ENGINE=InnoDB;


#------------------------------------------------------------
# Table: Clients
#------------------------------------------------------------

CREATE TABLE Clients(
        ID             int (11) Auto_increment  NOT NULL ,
        Nom            TinyText NOT NULL ,
        Adresse        Mediumtext NOT NULL ,
        SIREN          Numeric NOT NULL ,
        PRIMARY KEY (ID )
)ENGINE=InnoDB;


#------------------------------------------------------------
# Table: Récipients
#------------------------------------------------------------

CREATE TABLE Recipients(
        ID          int (11) Auto_increment  NOT NULL ,
        Type        TinyText NOT NULL ,
        Prix        Numeric NOT NULL ,
        PRIMARY KEY (ID )
)ENGINE=InnoDB;


#------------------------------------------------------------
# Table: Seuil_de_Fraicheur
#------------------------------------------------------------

CREATE TABLE Seuil_de_Fraicheur(
        ID              int (11) Auto_increment  NOT NULL ,
        Seuil_Fraîcheur Date NOT NULL ,
        PRIMARY KEY (ID )
)ENGINE=InnoDB;


#------------------------------------------------------------
# Table: Stock
#------------------------------------------------------------

CREATE TABLE Stock(
        ID           int (11) Auto_increment  NOT NULL ,
        PRIMARY KEY (ID )
)ENGINE=InnoDB;


