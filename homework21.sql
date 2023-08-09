CREATE DATABASE shop;

USE shop;

CREATE TABLE Shopping_List (
    ID int NOT null,
    Product_Name varchar (50),
    Price decimal (10,2),
    Quantity int
);

ALTER TABLE Shopping_List ADD PRIMARY KEY (ID);

describe Shopping_List;

INSERT INTO Shopping_List (ID, Product_Name, Price, Quantity)
VALUES (1, "Barbie_Oversized_T_Shirt", 20.04, 3),
(2, " Short_Sleeve_Pencil_Dress", 26.99, 1),
(3, "Apple_2020_MacBook_Air_Laptop_M1", 893.00, 1),
(4, "Clinique_Liquid_Facial_Soap_Oily_Skin", 19.00, 2),
(5, "Daiso_Japan_Reusable_Silicon_Mask", 6.66, 5),
(6, "Burts_Bees_Lip_Shimmer_Champagne", 28.44, 6),
(7, "Sunaroma_Soap_Bar_Coconut_8", 5.99, 4),
(8, "TRETORN_Womens_Rawlins3_Fashion_Sneaker", 47.86, 1),
(9, "Merrell_Women_s_Hydro_Moc", 51.32, 1),
(10, "Pet_Bowl_Glass_Cat_Dog_Food", 124.32, 1);

SELECT * FROM Shopping_List;

 CREATE TABLE Fridge (
    ID int NOT null,
    Product_ID int,
    Product_Name varchar (30),
    Quantity int,
    Expiration_Date date,
    PRIMARY KEY (ID),
    FOREIGN KEY (ID) REFERENCES Shopping_List(ID)
    );

INSERT INTO Fridge (ID, Product_ID, Product_Name, Quantity, Expiration_Date)
VALUES (1, 101, "Barbie_Oversized_T_Shirt", 3, "2029-12-23"),
(2, 109, " Short_Sleeve_Pencil_Dress", 1, "2029-08-30"),
(3, 200, "Apple_2020_MacBook_Air_Laptop", 1, "2035-11-11"),
(4, 256, "Clinique_Liquid_Facial_Soap", 2, "2024-07-20"),
(5, 001, "Daiso_Reusable_Silicon_Mask", 5, "2023-10-11"),
(6, 321, "Oinon", 3, "2023-08-04"),
(7, 116, "Banana", 10, "2023-07-25"),
(8, 298, "Eggs", 20, "2023-08-20"),
(9, 019, "Lettuc", 1, "2023-07-31"),
(10, 028, "Chicken_Fillets", 1, "2023-12-23");

SELECT * FROM Fridge;   


