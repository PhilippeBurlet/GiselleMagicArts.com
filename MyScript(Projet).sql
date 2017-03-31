drop table if exists ACHAT;
drop table if exists ACHAT_2_;
drop table if exists ACHAT_3_;
drop table if exists ACHAT_4_;
drop table if exists ACHAT_5_;
drop table if exists CLIENT;
drop table if exists COMMANDE;
drop table if exists COMMANDE_GISELLE;
drop table if exists COMPOSITION;
drop table if exists COMPOSITION_2_;
drop table if exists FOURNISSEURS;
drop table if exists INGREDIENTS;
drop table if exists INVENTEURS;
drop table if exists LIVRAISON;
drop table if exists LIVRAISON_2_;
drop table if exists ONGUENTS;
drop table if exists POTIONS;
drop table if exists RECIPIENTS;
drop table if exists SELECTION;
drop table if exists SEUIL_DE_FRAICHEUR;
drop table if exists STOCK;

/*==============================================================*/
/* Table : ACHAT                                                */
/*==============================================================*/
create table ACHAT
(
		ID_RECIPIENTS        int (11) not null,
		ID_COMMANDE          int (11) not null,
		primary key (ID_RECIPIENTS, ID_COMMANDE)
);

/*==============================================================*/
/* Table : ACHAT_2_                                             */
/*==============================================================*/
create table ACHAT_2_
(
		ID_COMMANDE          int (11) not null,
		ID_POTIONS           int (11) not null,
		primary key (ID_COMMANDE, ID_POTIONS)
);

/*==============================================================*/
/* Table : ACHAT_3_                                             */
/*==============================================================*/
create table ACHAT_3_
(
		ID_COMMANDE          int (11) not null,
		ID_ONGUENT           int (11) not null,
		primary key (ID_COMMANDE, ID_ONGUENT)
);

/*==============================================================*/
/* Table : ACHAT_4_                                             */
/*==============================================================*/
create table ACHAT_4_
(
		ID_COMMANDE          int (11) not null,
		ID_INGREDIENTS       int (11) not null,
		primary key (ID_COMMANDE, ID_INGREDIENTS)
);

/*==============================================================*/
/* Table : ACHAT_5_                                             */
/*==============================================================*/
create table ACHAT_5_
(
		ID_COMMANDE_GISELLE  int (11) not null,
		ID_INGREDIENTS       int (11) not null,
		primary key (ID_COMMANDE_GISELLE, ID_INGREDIENTS)
);

/*==============================================================*/
/* Table : CLIENT                                               */
/*==============================================================*/
create table CLIENT
(
		ID_CLIENT            int (11) not null,
		ID_COMMANDE          int (11) not null,
		NOM_CLIENT           text not null,
		PRENOM_CLIENT        text not null,
		ADRESSE_CLIENT       text not null,
		SIREN_CLIENT         numeric(8,0) not null,
		primary key (ID_CLIENT)
);

/*==============================================================*/
/* Table : COMMANDE                                             */
/*==============================================================*/
create table COMMANDE
(
		ID_COMMANDE          int (11) not null,
		DATE_COMMANDE        date,
		NUMERO_COMMANDE      numeric(8,0),
		ETAT_COMMANDE        bool not null,
		primary key (ID_COMMANDE)
);

/*==============================================================*/
/* Table : COMMANDE_GISELLE                                     */
/*==============================================================*/
create table COMMANDE_GISELLE
(
		ID_COMMANDE_GISELLE  int (11) not null,
		ID_SEUIL_DE_FRAICHEUR int (11) not null,
		SEU_ID_SEUIL_DE_FRAICHEUR int (11) not null,
		NUMERO_COMMANDE_GISELLE numeric(8,0) not null,
		DATE_COMMANDE_GISELLE date not null,
		ETAT_COMMANDE_GISELLE bool not null,
		primary key (ID_COMMANDE_GISELLE)
);

/*==============================================================*/
/* Table : COMPOSITION                                          */
/*==============================================================*/
create table COMPOSITION
(
		ID_INGREDIENTS       int (11) not null,
		ID_ONGUENT           int (11) not null,
		primary key (ID_INGREDIENTS, ID_ONGUENT)
);

/*==============================================================*/
/* Table : COMPOSITION_2_                                       */
/*==============================================================*/
create table COMPOSITION_2_
(
		ID_INGREDIENTS       int (11) not null,
		ID_POTIONS           int (11) not null,
		primary key (ID_INGREDIENTS, ID_POTIONS)
);

/*==============================================================*/
/* Table : FOURNISSEURS                                         */
/*==============================================================*/
create table FOURNISSEURS
(
		ID_FOURNISSEUR       int (11) not null,
		NOM_FOURNISSEUR      text not null,
		primary key (ID_FOURNISSEUR)
);

/*==============================================================*/
/* Table : INGREDIENTS                                          */
/*==============================================================*/
create table INGREDIENTS
(
		ID_INGREDIENTS       int (11) not null,
		ID_SEUIL_DE_FRAICHEUR int (11) not null,
		ID_STOCK_QUANTITE    int (11) not null,
		NOM_INGREDIENTS      text not null,
		FRAICHEUR_INGREDIENTS text not null,
		DATE_DE_RECEPTION_INGREDIENTS date not null,
		primary key (ID_INGREDIENTS)
);

/*==============================================================*/
/* Table : INVENTEURS                                           */
/*==============================================================*/
create table INVENTEURS
(
		ID_INVENTEUR         int (11) not null,
		NOM_INVENTEUR        text not null,
		PRENOM_INVENTEUR     text not null,
		primary key (ID_INVENTEUR)
);

/*==============================================================*/
/* Table : LIVRAISON                                            */
/*==============================================================*/
create table LIVRAISON
(
		ID_COMMANDE_GISELLE  int (11) not null,
		ID_FOURNISSEUR       int (11) not null,
		primary key (ID_COMMANDE_GISELLE, ID_FOURNISSEUR)
);

/*==============================================================*/
/* Table : LIVRAISON_2_                                         */
/*==============================================================*/
create table LIVRAISON_2_
(
		ID_FOURNISSEUR       int (11) not null,
		ID_INGREDIENTS       int (11) not null,
		primary key (ID_FOURNISSEUR, ID_INGREDIENTS)
);

/*==============================================================*/
/* Table : ONGUENTS                                             */
/*==============================================================*/
create table ONGUENTS
(
		ID_ONGUENT           int (11) not null,
		ID_INVENTEUR         int (11) not null,
		ID_SEUIL_DE_FRAICHEUR int (11) not null,
		ID_STOCK_QUANTITE    int (11) not null,
		NOM_ONGUENT          text not null,
		PRIX_ONGUENT         numeric(8,0) not null,
		INGREDIENT_1_ONGUENT text not null,
		QUANTITE_1_ONGUENT   numeric(8,0) not null,
		INGREDIENT_2_ONGUENT text not null,
		QUANTITE_2_ONGUENT   numeric(8,0) not null,
		INGREDIENT_3_ONGUENT text not null,
		QUANTITE_3_ONGUENT   numeric(8,0) not null,
		INGREDIENT_4_ONGUENT text not null,
		QUANTITE_4_ONGUENT   numeric(8,0) not null,
		primary key (ID_ONGUENT)
);

/*==============================================================*/
/* Table : POTIONS                                              */
/*==============================================================*/
create table POTIONS
(
		ID_POTIONS           int (11) not null,
		ID_INVENTEUR         int (11) not null,
		ID_SEUIL_DE_FRAICHEUR int (11) not null,
		ID_STOCK_QUANTITE    int (11) not null,
		NOM_POTIONS          text not null,
		PRIX_POTIONS         numeric(8,0) not null,
		DILUANT_POTIONS      text not null,
		TEMPERATURE_POTIONS  numeric(8,0) not null,
		INGREDIENT_1_POTIONS text not null,
		QUANTITE_1_POTIONS   numeric(8,0) not null,
		INGREDIENT_2_POTIONS text not null,
		QUANTITE_2_POTIONS   numeric(8,0) not null,
		INGREDIENT_3_POTIONS text not null,
		QUANTITE_3_POTIONS   numeric(8,0) not null,
		INGREDIENT_4_POTIONS text not null,
		QUANTITE_4_POTIONS   numeric(8,0) not null,
		primary key (ID_POTIONS)
);

/*==============================================================*/
/* Table : RECIPIENTS                                           */
/*==============================================================*/
create table RECIPIENTS
(
		ID_RECIPIENTS        int (11) not null,
		ID_POTIONS           int (11) not null,
		ID_ONGUENT           int (11) not null,
		TYPE_RECIPIENTS      text not null,
		PRIX_RECIPIENTS__    numeric(8,0),
		primary key (ID_RECIPIENTS)
);

/*==============================================================*/
/* Table : SELECTION                                            */
/*==============================================================*/
create table SELECTION
(
		ID_RECIPIENTS        int (11) not null,
		ID_CLIENT           int (11) not null,
		primary key (ID_RECIPIENTS, ID_CLIENT)
);

/*==============================================================*/
/* Table : SEUIL_DE_FRAICHEUR                                   */
/*==============================================================*/
create table SEUIL_DE_FRAICHEUR
(
		ID_SEUIL_DE_FRAICHEUR int (11) not null,
		ID_COMMANDE_GISELLE  int (11) not null,
		COM_ID_COMMANDE_GISELLE int (11) not null,
		SEUIL_DE_FRAICHEUR   date not null,
		primary key (ID_SEUIL_DE_FRAICHEUR)
);

/*==============================================================*/
/* Table : STOCK                                                */
/*==============================================================*/
create table STOCK
(
		ID_STOCK_QUANTITE    int (11) not null,
		ID_RECIPIENTS        int (11) not null,
		ID_COMMANDE          int (11) not null,
		QUANTITE_STOCK_QUANTITE numeric(8,0) not null,
		primary key (ID_STOCK_QUANTITE)
);

alter table ACHAT add constraint FK_ACHAT foreign key (ID_COMMANDE)
      references COMMANDE (ID_COMMANDE) on delete restrict on update restrict;

alter table ACHAT add constraint FK_ACHAT2 foreign key (ID_RECIPIENTS)
      references RECIPIENTS (ID_RECIPIENTS) on delete restrict on update restrict;

alter table ACHAT_2_ add constraint FK_ACHAT_2_ foreign key (ID_POTIONS)
      references POTIONS (ID_POTIONS) on delete restrict on update restrict;

alter table ACHAT_2_ add constraint FK_ACHAT_2_2 foreign key (ID_COMMANDE)
      references COMMANDE (ID_COMMANDE) on delete restrict on update restrict;

alter table ACHAT_3_ add constraint FK_ACHAT_3_ foreign key (ID_ONGUENT)
      references ONGUENTS (ID_ONGUENT) on delete restrict on update restrict;

alter table ACHAT_3_ add constraint FK_ACHAT_3_2 foreign key (ID_COMMANDE)
      references COMMANDE (ID_COMMANDE) on delete restrict on update restrict;

alter table ACHAT_4_ add constraint FK_ACHAT_4_ foreign key (ID_INGREDIENTS)
      references INGREDIENTS (ID_INGREDIENTS) on delete restrict on update restrict;

alter table ACHAT_4_ add constraint FK_ACHAT_4_2 foreign key (ID_COMMANDE)
      references COMMANDE (ID_COMMANDE) on delete restrict on update restrict;

alter table ACHAT_5_ add constraint FK_ACHAT_5_ foreign key (ID_INGREDIENTS)
      references INGREDIENTS (ID_INGREDIENTS) on delete restrict on update restrict;

alter table ACHAT_5_ add constraint FK_ACHAT_5_2 foreign key (ID_COMMANDE_GISELLE)
      references COMMANDE_GISELLE (ID_COMMANDE_GISELLE) on delete restrict on update restrict;

alter table CLIENT add constraint FK_EFFECTUER foreign key (ID_COMMANDE)
      references COMMANDE (ID_COMMANDE) on delete restrict on update restrict;

/*alter table COMMANDE add constraint FK_EFFECTUER foreign key (ID_CLIENT)
      references CLIENT (ID_CLIENT) on delete restrict on update restrict; test not working*/

alter table COMMANDE_GISELLE add constraint FK_DATE_DE_RECEPTION foreign key (ID_SEUIL_DE_FRAICHEUR)
      references SEUIL_DE_FRAICHEUR (ID_SEUIL_DE_FRAICHEUR) on delete restrict on update restrict;

alter table COMMANDE_GISELLE add constraint FK_DATE_DE_RECEPTION3 foreign key (SEU_ID_SEUIL_DE_FRAICHEUR)
      references SEUIL_DE_FRAICHEUR (ID_SEUIL_DE_FRAICHEUR) on delete restrict on update restrict;

alter table COMPOSITION add constraint FK_COMPOSITION foreign key (ID_ONGUENT)
      references ONGUENTS (ID_ONGUENT) on delete restrict on update restrict;

alter table COMPOSITION add constraint FK_COMPOSITION2 foreign key (ID_INGREDIENTS)
      references INGREDIENTS (ID_INGREDIENTS) on delete restrict on update restrict;

alter table COMPOSITION_2_ add constraint FK_COMPOSITION_2_ foreign key (ID_POTIONS)
      references POTIONS (ID_POTIONS) on delete restrict on update restrict;

alter table COMPOSITION_2_ add constraint FK_COMPOSITION_2_2 foreign key (ID_INGREDIENTS)
      references INGREDIENTS (ID_INGREDIENTS) on delete restrict on update restrict;

alter table INGREDIENTS add constraint FK_QUALITE foreign key (ID_SEUIL_DE_FRAICHEUR)
      references SEUIL_DE_FRAICHEUR (ID_SEUIL_DE_FRAICHEUR) on delete restrict on update restrict;

alter table INGREDIENTS add constraint FK_QUANTITE_4_ foreign key (ID_STOCK_QUANTITE)
      references STOCK (ID_STOCK_QUANTITE) on delete restrict on update restrict;

alter table LIVRAISON add constraint FK_LIVRAISON foreign key (ID_FOURNISSEUR)
      references FOURNISSEURS (ID_FOURNISSEUR) on delete restrict on update restrict;

alter table LIVRAISON add constraint FK_LIVRAISON2 foreign key (ID_COMMANDE_GISELLE)
      references COMMANDE_GISELLE (ID_COMMANDE_GISELLE) on delete restrict on update restrict;

alter table LIVRAISON_2_ add constraint FK_LIVRAISON_2_ foreign key (ID_INGREDIENTS)
      references INGREDIENTS (ID_INGREDIENTS) on delete restrict on update restrict;

alter table LIVRAISON_2_ add constraint FK_LIVRAISON_2_2 foreign key (ID_FOURNISSEUR)
      references FOURNISSEURS (ID_FOURNISSEUR) on delete restrict on update restrict;

alter table ONGUENTS add constraint FK_COMPOSER_2_ foreign key (ID_INVENTEUR)
      references INVENTEURS (ID_INVENTEUR) on delete restrict on update restrict;

alter table ONGUENTS add constraint FK_QUALITE_3_ foreign key (ID_SEUIL_DE_FRAICHEUR)
      references SEUIL_DE_FRAICHEUR (ID_SEUIL_DE_FRAICHEUR) on delete restrict on update restrict;

alter table ONGUENTS add constraint FK_QUANTITE_3_ foreign key (ID_STOCK_QUANTITE)
      references STOCK (ID_STOCK_QUANTITE) on delete restrict on update restrict;

alter table POTIONS add constraint FK_COMPOSER foreign key (ID_INVENTEUR)
      references INVENTEURS (ID_INVENTEUR) on delete restrict on update restrict;

alter table POTIONS add constraint FK_QUALITE_2_ foreign key (ID_SEUIL_DE_FRAICHEUR)
      references SEUIL_DE_FRAICHEUR (ID_SEUIL_DE_FRAICHEUR) on delete restrict on update restrict;

alter table POTIONS add constraint FK_QUANTITE_2_ foreign key (ID_STOCK_QUANTITE)
      references STOCK (ID_STOCK_QUANTITE) on delete restrict on update restrict;

alter table RECIPIENTS add constraint FK_CONTENANCE foreign key (ID_POTIONS)
      references POTIONS (ID_POTIONS) on delete restrict on update restrict;

alter table RECIPIENTS add constraint FK_CONTENANCE_2_ foreign key (ID_ONGUENT)
      references ONGUENTS (ID_ONGUENT) on delete restrict on update restrict;

alter table SELECTION add constraint FK_SELECTION foreign key (ID_CLIENT)
      references CLIENT (ID_CLIENT) on delete restrict on update restrict;

alter table SELECTION add constraint FK_SELECTION2 foreign key (ID_RECIPIENTS)
      references RECIPIENTS (ID_RECIPIENTS) on delete restrict on update restrict;

alter table SEUIL_DE_FRAICHEUR add constraint FK_DATE_DE_RECEPTION2 foreign key (ID_COMMANDE_GISELLE)
      references COMMANDE_GISELLE (ID_COMMANDE_GISELLE) on delete restrict on update restrict;

alter table SEUIL_DE_FRAICHEUR add constraint FK_DATE_DE_RECEPTION4 foreign key (COM_ID_COMMANDE_GISELLE)
      references COMMANDE_GISELLE (ID_COMMANDE_GISELLE) on delete restrict on update restrict; /* c'est quoi ça?*/
	  
/*alter table SEUIL_DE_FRAICHEUR add constraint FK_QUALITE foreign key (ID_INGREDIENTS)
      references INGREDIENTS (ID_INGREDIENTS) on delete restrict on update restrict; test not working*/

alter table STOCK add constraint FK_INVENTAIRE foreign key (ID_RECIPIENTS)
      references RECIPIENTS (ID_RECIPIENTS) on delete restrict on update restrict;

alter table STOCK add constraint FK_QUANTITE foreign key (ID_COMMANDE)
      references COMMANDE (ID_COMMANDE) on delete restrict on update restrict;
