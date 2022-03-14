/*==============================================================*/
/* Nom de SGBD :  MySQL 5.0                                     */
/* Date de cr�ation :  14/03/2022 16:24:37                      */
/*==============================================================*/


drop table if exists Achat;

drop table if exists Article;

drop table if exists Categorie;

drop table if exists Client;

drop table if exists Fournisseur;

drop table if exists Role;

drop table if exists Utilisateur;

drop table if exists Vente;

/*==============================================================*/
/* Table : Achat                                                */
/*==============================================================*/
create table Achat
(
   idAchat              int not null,
   idArticle            int not null,
   idFournisseur        int not null,
   idUtilisateur        int not null,
   dateAchat            datetime,
   quantite             int,
   prixUnitaire         float,
   prixTotal            float,
   primary key (idAchat)
);

/*==============================================================*/
/* Table : Article                                              */
/*==============================================================*/
create table Article
(
   idArticle            int not null,
   idCate               int not null,
   libele               varchar(254),
   description          varchar(254),
   prixUnitair          float,
   quantite             int,
   categorie            varchar(254),
   primary key (idArticle)
);

/*==============================================================*/
/* Table : Categorie                                            */
/*==============================================================*/
create table Categorie
(
   idCate               int not null,
   nomCategorie         varchar(254),
   primary key (idCate)
);

/*==============================================================*/
/* Table : Client                                               */
/*==============================================================*/
create table Client
(
   idClient             int not null,
   nomClient            varchar(254),
   prenomClient         varchar(254),
   adresseClient        varchar(254),
   telClient            int,
   emailClient          varchar(254),
   primary key (idClient)
);

/*==============================================================*/
/* Table : Fournisseur                                          */
/*==============================================================*/
create table Fournisseur
(
   idFournisseur        int not null,
   nomFournisseur       varchar(254),
   prenomFournisseur    varchar(254),
   adresse              varchar(254),
   telephone            int,
   email                varchar(254),
   primary key (idFournisseur)
);

/*==============================================================*/
/* Table : Role                                                 */
/*==============================================================*/
create table Role
(
   idRole               int not null,
   nomRole              varchar(254),
   primary key (idRole)
);

/*==============================================================*/
/* Table : Utilisateur                                          */
/*==============================================================*/
create table Utilisateur
(
   idUtilisateur        int not null,
   idRole               int not null,
   nomUtilisateur       varchar(254),
   emailUtilisateur     varchar(254),
   motsDePasse          varchar(254),
   primary key (idUtilisateur)
);

/*==============================================================*/
/* Table : Vente                                                */
/*==============================================================*/
create table Vente
(
   idVente              int not null,
   idClient             int not null,
   idArticle            int not null,
   idUtilisateur        int not null,
   dateVente            datetime,
   quantite             int,
   prixUnitaire         float,
   prixTotal            float,
   primary key (idVente)
);

INSERT INTO Achat (idAchat, idArticle, idUtilisateur, idFournisseur, dateAchat, quantite, prixUnitaire, prixTotal)
 VALUES
(1000, 2020, 205, 61, '0000-00-00', 300, 364040, 25440501),
(1010, 2021, 206, 62, '0000-00-00', 400, 454400, 15440504),
(1030, 2022, 207, 63, '0000-00-00', 500, 564400, 34440403),
(1060, 2023, 208, 64, '0000-00-00', 600, 614400, 32440408),
(1070, 2024, 209, 65, '0000-00-00', 700, 824400, 27440507);


INSERT INTO Article (idArticle, idCate, libele, description, prixUnitair, quantite, categorie)
 VALUES
(2020, 51, 'Souris', 'DELL', 15001.8, 109, 'BATA'),
(2021, 52, 'Cle_USB', 'Lenovo', 57000.6, 190, 'KUTK'),
(2022, 53, 'RAM', 'HP', 75005.47, 205, 'KOBT'),
(2023, 54, 'Clavier', 'Acer', 95550.9, 425, 'QALB'),
(2024, 55, 'Batterie', 'Toshiba', 04500.8, 426, 'KETA');



INSERT INTO Categorie (idCate, nomCategorie)
 VALUES
(51, 'Souris'),
(52, 'Cle_USB'),
(53, 'RAM'),
(54, 'Clavier'),
(55, 'Batterie');



INSERT INTO Client (idClient, nomClient, prenomClient, adresseClient, telClient, emailClient) 
VALUES
(5000, 'Clovis', 'Plata', '50bp8709', 6016512213, 'Clovis@gmail.com'),
(5001, 'Karol', 'Molo', '51lp8708', 601712223, 'Karolm@hotmail.com'),
(5002, 'Ariane', 'Caos', '53lp8706', 601912103, 'CoasA10@gmail.com'),
(5004, 'Boukare', 'Hellos', '54lp8705',602014343, 'Boukare57@gmail.com');


INSERT INTO Fournisseur (idFournisseur, nomFournisseur, prenomFournisseur, adresse, telephone, email) 
VALUES
(61, 'Bara', 'Amed', '017bp0201', '840414203', 'Bara@gmail.com'),
(62, 'Sanfo', 'Zaka', '018bp0202', '858414244', 'Sanfo@gmail.com'),
(63, 'Kabore', 'Oumar', '019bp0203', '8654142436', 'oum@gmail.com'),
(64, 'Koudougou', 'Aline', '019bp0203', '8654142436', 'al@gmail.com'),
(65, 'Souleymane', 'Lamadine', '019bp0203', '8654142436', 'lam@gmail.com');


INSERT INTO Role (idRole, nomRole)
VALUES
(001, 'Vendre'),
(002, 'Stocker'),
(003, 'Incrementer'),
(004, 'Chercher'),
(005, 'Valider');


INSERT INTO Utilisateur (idUtilisateur, idRole, nomUtilisateur, emailUtilisateur, motsDePasse)
VALUES
(205, 001, 'Bechir', 'Bech@gmail.com', 'bch8549'),
(206, 002, 'Neo', 'Neo01@gmail.com', 'neo8550'),
(207, 003, 'Matrix', 'Matrix57@gmail.com', 'mat8551'),
(208, 004, 'Golden', 'golden@gmail.com', 'gld8552'),
(209, 005, 'Zafra', 'Zafrae57@gmail.com', 'zfe8553');




INSERT INTO Vente (idVente, idClient, idArticle, idUtilisateur, dateVente, quantite, prixUnitaire, prixTotal)
 VALUES
(991, 5000, 2020,205, 2022/01/22, 1000, 150751, 15075100),
(992, 5001, 2021,206, 2022/01/25, 1000, 150751, 150751000),
(993, 5002, 2022,207, 2022/02/10, 1000, 150751, 150751000),
(994, 5004, 2023,208, 2022/02/10, 1000, 150751, 150751000);

alter table Achat add constraint FK_association10 foreign key (idArticle)
      references Article (idArticle) on delete restrict on update restrict;

alter table Achat add constraint FK_association11 foreign key (idUtilisateur)
      references Utilisateur (idUtilisateur) on delete restrict on update restrict;

alter table Achat add constraint FK_association14 foreign key (idFournisseur)
      references Fournisseur (idFournisseur) on delete restrict on update restrict;

alter table Article add constraint FK_association8 foreign key (idCate)
      references Categorie (idCate) on delete restrict on update restrict;

alter table Utilisateur add constraint FK_association13 foreign key (idRole)
      references Role (idRole) on delete restrict on update restrict;

alter table Vente add constraint FK_association12 foreign key (idArticle)
      references Article (idArticle) on delete restrict on update restrict;

alter table Vente add constraint FK_association6 foreign key (idUtilisateur)
      references Utilisateur (idUtilisateur) on delete restrict on update restrict;

alter table Vente add constraint FK_association9 foreign key (idClient)
      references Client (idClient) on delete restrict on update restrict;

