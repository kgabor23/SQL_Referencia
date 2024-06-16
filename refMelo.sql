CREATE TABLE Shoes (
    Shoe_ID Int,
    Manufacturer_ID Int NOT NULL,
    Year_Of_Manufacture date,
    Silhouette_Name varchar(20),
    Colorway varchar(30) NOT NULL,
    Main_color varchar(20),
    Size_in_eu Int NOT NULL,
    Size_in_cm Int,
    PRIMARY KEY (Shoe_ID)
);

CREATE TABLE  Stores(
    Store_ID Int,
    City_ID Int,
    ZIP_Code Int,
    Address varchar(100),
    PRIMARY KEY (Store_ID)
);

CREATE TABLE  City(
    City_ID Int,
    City_name varchar(20),
    Country_ID Int,
    PRIMARY KEY (City_ID)
);

CREATE TABLE  Order_To_Shop(
    Order_Number Int,
    First_Name varchar(20),
    Last_Name varchar(20),
    Date_of_birth date,
    Shoe_ID Int,
    City_ID Int,
    PRIMARY KEY (Order_Number)
);

CREATE TABLE Manufacture (
    Manufacturer_ID Int,
    Manufacturer_Name varchar(30),
    Location_country Int,
    Number_of_workers Int,
    PRIMARY KEY (Manufacturer_ID)
);

CREATE TABLE Country (
    Country_ID Int,
    Country_name varchar(70),
    Capital_city varchar(70),
    Continent_ID Int,
    PRIMARY KEY (Country_ID)
);

CREATE TABLE Continent (
    Continent_ID Int,
    Continent_name varchar(30),
    PRIMARY KEY (Continent_ID)
);

CREATE TABLE  Availabe_Shoes_Instore(
    Shoe_ID Int,
    Store_ID Int,
    FOREIGN KEY (Shoe_ID) REFERENCES Shoes(Shoe_ID),
    FOREIGN KEY (Store_ID) REFERENCES Stores(Store_ID)
);

CREATE TABLE  Order_Shipment(
    Order_Number Int,
    Store_from Int,
    Store_to Int,
    FOREIGN KEY (Order_Number) REFERENCES Order_To_Shop(Order_Number),
    FOREIGN KEY (Store_from) REFERENCES Stores(Store_ID),
    FOREIGN KEY (Store_to) REFERENCES Stores(Store_ID)
);


SELECT * FROM Order_To_Shop INNER JOIN Shoes ON Order_To_Shop.Shoe_ID = Shoes.Shoe_ID;
SELECT * FROM Country INNER JOIN Continent ON Country.Continent_ID = Continent.Continent_ID; 
SELECT * FROM Order_Shipment;
SELECT Shoes.Silhouette_Name FROM Shoes LEFT OUTER JOIN Manufacture ON Shoes.Manufacturer_ID = Manufacture.Manufacturer_ID WHERE Shoes.Manufacturer_ID = 4 GROUP BY Shoes.Silhouette_Name;
SELECT COUNT(*), Colorway FROM Shoes GROUP BY Colorway ORDER BY COUNT(*) DESC;
SELECT Capital_City FROM Country INNER JOIN Continent on Country.Continent_ID = Continent.Continent_ID WHERE Continent.Continent_Name like 'Europe';


--shoes fill
INSERT INTO Shoes (Shoe_ID, Manufacturer_ID, Year_Of_Manufacture, Silhouette_Name, Colorway, Main_color, Size_in_eu, Size_in_cm) VALUES (23567421, 1, DATE '2022-01-01', 'yeezy', 'zebra', 'white', 42, 27);
INSERT INTO Shoes (Shoe_ID, Manufacturer_ID, Year_Of_Manufacture, Silhouette_Name, Colorway, Main_color, Size_in_eu, Size_in_cm) VALUES (54761928, 12, DATE '2021-06-15', 'jordan 1', 'lucky green', 'green', 41, 26);
INSERT INTO Shoes (Shoe_ID, Manufacturer_ID, Year_Of_Manufacture, Silhouette_Name, Colorway, Main_color, Size_in_eu, Size_in_cm) VALUES (39287461, 3, DATE '2021-12-20', 'nmd_hu', 'chalk coral', 'pink', 39, 25);
INSERT INTO Shoes (Shoe_ID, Manufacturer_ID, Year_Of_Manufacture, Silhouette_Name, Colorway, Main_color, Size_in_eu, Size_in_cm) VALUES (92837465, 4, DATE '2020-11-30', 'yeezy', 'blue tint', 'blue', 43, 28);
INSERT INTO Shoes (Shoe_ID, Manufacturer_ID, Year_Of_Manufacture, Silhouette_Name, Colorway, Main_color, Size_in_eu, Size_in_cm) VALUES (37629184, 15, DATE '2020-08-25', 'dunk', 'off-white lot 7', 'white', 40, 26);
INSERT INTO Shoes (Shoe_ID, Manufacturer_ID, Year_Of_Manufacture, Silhouette_Name, Colorway, Main_color, Size_in_eu, Size_in_cm) VALUES (51629387, 11, DATE '2021-03-10', 'jordan 1', 'taxi', 'yellow', 42, 27);
INSERT INTO Shoes (Shoe_ID, Manufacturer_ID, Year_Of_Manufacture, Silhouette_Name, Colorway, Main_color, Size_in_eu, Size_in_cm) VALUES (73649582, 7, DATE '2020-12-05', 'yeezy', 'beluga', 'grey', 41, 26);
INSERT INTO Shoes (Shoe_ID, Manufacturer_ID, Year_Of_Manufacture, Silhouette_Name, Colorway, Main_color, Size_in_eu, Size_in_cm) VALUES (82917465, 8, DATE '2021-05-22', 'nmd_hu', 'clear sky', 'blue', 38, 24);
INSERT INTO Shoes (Shoe_ID, Manufacturer_ID, Year_Of_Manufacture, Silhouette_Name, Colorway, Main_color, Size_in_eu, Size_in_cm) VALUES (19482756, 1, DATE '2022-02-28', 'yeezy', 'oreo', 'black', 44, 29);
INSERT INTO Shoes (Shoe_ID, Manufacturer_ID, Year_Of_Manufacture, Silhouette_Name, Colorway, Main_color, Size_in_eu, Size_in_cm) VALUES (61593742, 2, DATE '2021-09-15', 'nmd_hu', 'pink glow', 'pink', 37, 23);
INSERT INTO Shoes (Shoe_ID, Manufacturer_ID, Year_Of_Manufacture, Silhouette_Name, Colorway, Main_color, Size_in_eu, Size_in_cm) VALUES (41739286, 13, DATE '2021-04-01', 'dunk', 'panda', 'black', 41, 26);
INSERT INTO Shoes (Shoe_ID, Manufacturer_ID, Year_Of_Manufacture, Silhouette_Name, Colorway, Main_color, Size_in_eu, Size_in_cm) VALUES (71938462, 12, DATE '2020-10-10', 'jordan 1', 'royal blue', 'blue', 43, 28);
INSERT INTO Shoes (Shoe_ID, Manufacturer_ID, Year_Of_Manufacture, Silhouette_Name, Colorway, Main_color, Size_in_eu, Size_in_cm) VALUES (46519283, 13, DATE '2021-07-17', 'dunk', 'forest green', 'green', 42, 27);
INSERT INTO Shoes (Shoe_ID, Manufacturer_ID, Year_Of_Manufacture, Silhouette_Name, Colorway, Main_color, Size_in_eu, Size_in_cm) VALUES (72839465, 14, DATE '2022-03-05', 'jordan 1', 'taxi', 'yellow', 44, 29);
INSERT INTO Shoes (Shoe_ID, Manufacturer_ID, Year_Of_Manufacture, Silhouette_Name, Colorway, Main_color, Size_in_eu, Size_in_cm) VALUES (74639281, 15, DATE '2021-11-20', 'dunk', 'off-white lot 7', 'white', 40, 26);
INSERT INTO Shoes (Shoe_ID, Manufacturer_ID, Year_Of_Manufacture, Silhouette_Name, Colorway, Main_color, Size_in_eu, Size_in_cm) VALUES (92748513, 6, DATE '2021-08-12', 'yeezy', 'beluga 2.0', 'grey', 43, 28);
INSERT INTO Shoes (Shoe_ID, Manufacturer_ID, Year_Of_Manufacture, Silhouette_Name, Colorway, Main_color, Size_in_eu, Size_in_cm) VALUES (20394857, 10, DATE '2020-06-30', 'jordan 1', 'lucky green', 'green', 42, 27);
INSERT INTO Shoes (Shoe_ID, Manufacturer_ID, Year_Of_Manufacture, Silhouette_Name, Colorway, Main_color, Size_in_eu, Size_in_cm) VALUES (43782915, 8, DATE '2022-04-18', 'nmd_hu', 'chalk coral', 'pink', 39, 25);
INSERT INTO Shoes (Shoe_ID, Manufacturer_ID, Year_Of_Manufacture, Silhouette_Name, Colorway, Main_color, Size_in_eu, Size_in_cm) VALUES (25483169, 9, DATE '2021-03-15', 'yeezy', 'blue tint', 'blue', 44, 29);
INSERT INTO Shoes (Shoe_ID, Manufacturer_ID, Year_Of_Manufacture, Silhouette_Name, Colorway, Main_color, Size_in_eu, Size_in_cm) VALUES (91374652, 10, DATE '2021-01-20', 'dunk', 'panda', 'black', 41, 26);
INSERT INTO Shoes (Shoe_ID, Manufacturer_ID, Year_Of_Manufacture, Silhouette_Name, Colorway, Main_color, Size_in_eu, Size_in_cm) VALUES (78619432, 13, DATE '2020-12-25', 'jordan 1', 'royal blue', 'blue', 43, 28);
INSERT INTO Shoes (Shoe_ID, Manufacturer_ID, Year_Of_Manufacture, Silhouette_Name, Colorway, Main_color, Size_in_eu, Size_in_cm) VALUES (27486319, 2, DATE '2021-09-05', 'yeezy', 'oreo', 'black', 45, 30);
INSERT INTO Shoes (Shoe_ID, Manufacturer_ID, Year_Of_Manufacture, Silhouette_Name, Colorway, Main_color, Size_in_eu, Size_in_cm) VALUES (15928364, 3, DATE '2022-05-10', 'nmd_hu', 'clear sky', 'blue', 38, 24);
INSERT INTO Shoes (Shoe_ID, Manufacturer_ID, Year_Of_Manufacture, Silhouette_Name, Colorway, Main_color, Size_in_eu, Size_in_cm) VALUES (73482951, 4, DATE '2021-11-08', 'yeezy', 'zebra', 'white', 42, 27);
INSERT INTO Shoes (Shoe_ID, Manufacturer_ID, Year_Of_Manufacture, Silhouette_Name, Colorway, Main_color, Size_in_eu, Size_in_cm) VALUES (39827456, 5, DATE '2021-10-15', 'nmd_hu', 'pink glow', 'pink', 37, 23);
INSERT INTO Shoes (Shoe_ID, Manufacturer_ID, Year_Of_Manufacture, Silhouette_Name, Colorway, Main_color, Size_in_eu, Size_in_cm) VALUES (57483926, 14, DATE '2022-01-02', 'dunk', 'forest green', 'green', 42, 27);
INSERT INTO Shoes (Shoe_ID, Manufacturer_ID, Year_Of_Manufacture, Silhouette_Name, Colorway, Main_color, Size_in_eu, Size_in_cm) VALUES (65491823, 15, DATE '2021-06-20', 'jordan 1', 'taxi', 'yellow', 44, 29);
INSERT INTO Shoes (Shoe_ID, Manufacturer_ID, Year_Of_Manufacture, Silhouette_Name, Colorway, Main_color, Size_in_eu, Size_in_cm) VALUES (83947125, 10, DATE '2020-11-12', 'dunk', 'off-white lot 7', 'white', 40, 26);
INSERT INTO Shoes (Shoe_ID, Manufacturer_ID, Year_Of_Manufacture, Silhouette_Name, Colorway, Main_color, Size_in_eu, Size_in_cm) VALUES (75839641, 11, DATE '2021-03-30', 'jordan 1', 'lucky green', 'green', 41, 26);
INSERT INTO Shoes (Shoe_ID, Manufacturer_ID, Year_Of_Manufacture, Silhouette_Name, Colorway, Main_color, Size_in_eu, Size_in_cm) VALUES (79234618, 10, DATE '2021-12-15', 'dunk', 'panda', 'black', 43, 28);
INSERT INTO Shoes (Shoe_ID, Manufacturer_ID, Year_Of_Manufacture, Silhouette_Name, Colorway, Main_color, Size_in_eu, Size_in_cm) VALUES (97836421, 1, DATE '2020-08-20', 'yeezy', 'beluga 2.0', 'grey', 45, 30);
INSERT INTO Shoes (Shoe_ID, Manufacturer_ID, Year_Of_Manufacture, Silhouette_Name, Colorway, Main_color, Size_in_eu, Size_in_cm) VALUES (61492837, 12, DATE '2021-02-25', 'jordan 1', 'royal blue', 'blue', 42, 27);
INSERT INTO Shoes (Shoe_ID, Manufacturer_ID, Year_Of_Manufacture, Silhouette_Name, Colorway, Main_color, Size_in_eu, Size_in_cm) VALUES (28347619, 3, DATE '2021-10-03', 'nmd_hu', 'chalk coral', 'pink', 39, 25);
INSERT INTO Shoes (Shoe_ID, Manufacturer_ID, Year_Of_Manufacture, Silhouette_Name, Colorway, Main_color, Size_in_eu, Size_in_cm) VALUES (81246537, 4, DATE '2021-07-12', 'yeezy', 'zebra', 'white', 44, 29);
INSERT INTO Shoes (Shoe_ID, Manufacturer_ID, Year_Of_Manufacture, Silhouette_Name, Colorway, Main_color, Size_in_eu, Size_in_cm) VALUES (49716283, 15, DATE '2022-03-18', 'dunk', 'forest green', 'green', 42, 27);
INSERT INTO Shoes (Shoe_ID, Manufacturer_ID, Year_Of_Manufacture, Silhouette_Name, Colorway, Main_color, Size_in_eu, Size_in_cm) VALUES (20394857, 13, DATE '2021-11-30', 'jordan 1', 'taxi', 'yellow', 45, 30);
INSERT INTO Shoes (Shoe_ID, Manufacturer_ID, Year_Of_Manufacture, Silhouette_Name, Colorway, Main_color, Size_in_eu, Size_in_cm) VALUES (16283745, 7, DATE '2021-09-22', 'yeezy', 'oreo', 'black', 40, 26);
INSERT INTO Shoes (Shoe_ID, Manufacturer_ID, Year_Of_Manufacture, Silhouette_Name, Colorway, Main_color, Size_in_eu, Size_in_cm) VALUES (73849521, 8, DATE '2022-01-05', 'nmd_hu', 'pink glow', 'pink', 38, 24);
INSERT INTO Shoes (Shoe_ID, Manufacturer_ID, Year_Of_Manufacture, Silhouette_Name, Colorway, Main_color, Size_in_eu, Size_in_cm) VALUES (46527381, 9, DATE '2021-04-14', 'yeezy', 'beluga', 'grey', 43, 28);
INSERT INTO Shoes (Shoe_ID, Manufacturer_ID, Year_Of_Manufacture, Silhouette_Name, Colorway, Main_color, Size_in_eu, Size_in_cm) VALUES (73946182, 3, DATE '2020-12-30', 'nmd_hu', 'clear sky', 'blue', 37, 23);
INSERT INTO Shoes (Shoe_ID, Manufacturer_ID, Year_Of_Manufacture, Silhouette_Name, Colorway, Main_color, Size_in_eu, Size_in_cm) VALUES (82736491, 1, DATE '2021-02-10', 'yeezy', 'beluga 2.0', 'grey', 40, 26);
INSERT INTO Shoes (Shoe_ID, Manufacturer_ID, Year_Of_Manufacture, Silhouette_Name, Colorway, Main_color, Size_in_eu, Size_in_cm) VALUES (91638274, 12, DATE '2021-08-20', 'jordan 1', 'lucky green', 'green', 42, 27);
INSERT INTO Shoes (Shoe_ID, Manufacturer_ID, Year_Of_Manufacture, Silhouette_Name, Colorway, Main_color, Size_in_eu, Size_in_cm) VALUES (53741928, 13, DATE '2022-04-01', 'dunk', 'off-white lot 7', 'white', 43, 28);
INSERT INTO Shoes (Shoe_ID, Manufacturer_ID, Year_Of_Manufacture, Silhouette_Name, Colorway, Main_color, Size_in_eu, Size_in_cm) VALUES (29384716, 14, DATE '2021-12-12', 'jordan 1', 'royal blue', 'blue', 44, 29);
INSERT INTO Shoes (Shoe_ID, Manufacturer_ID, Year_Of_Manufacture, Silhouette_Name, Colorway, Main_color, Size_in_eu, Size_in_cm) VALUES (73519482, 15, DATE '2021-07-03', 'dunk', 'forest green', 'green', 45, 30);
INSERT INTO Shoes (Shoe_ID, Manufacturer_ID, Year_Of_Manufacture, Silhouette_Name, Colorway, Main_color, Size_in_eu, Size_in_cm) VALUES (62837495, 1, DATE '2020-11-25', 'yeezy', 'oreo', 'black', 40, 26);
INSERT INTO Shoes (Shoe_ID, Manufacturer_ID, Year_Of_Manufacture, Silhouette_Name, Colorway, Main_color, Size_in_eu, Size_in_cm) VALUES (49182736, 12, DATE '2021-09-28', 'jordan 1', 'taxi', 'yellow', 42, 27);
INSERT INTO Shoes (Shoe_ID, Manufacturer_ID, Year_Of_Manufacture, Silhouette_Name, Colorway, Main_color, Size_in_eu, Size_in_cm) VALUES (17384629, 13, DATE '2021-04-15', 'dunk', 'panda', 'black', 41, 26);
INSERT INTO Shoes (Shoe_ID, Manufacturer_ID, Year_Of_Manufacture, Silhouette_Name, Colorway, Main_color, Size_in_eu, Size_in_cm) VALUES (84571936, 14, DATE '2022-02-22', 'jordan 1', 'lucky green', 'green', 44, 29);
INSERT INTO Shoes (Shoe_ID, Manufacturer_ID, Year_Of_Manufacture, Silhouette_Name, Colorway, Main_color, Size_in_eu, Size_in_cm) VALUES (63917485, 15, DATE '2021-12-03', 'dunk', 'off-white lot 7', 'white', 43, 28);
INSERT INTO Shoes (Shoe_ID, Manufacturer_ID, Year_Of_Manufacture, Silhouette_Name, Colorway, Main_color, Size_in_eu, Size_in_cm) VALUES (29486713, 11, DATE '2021-08-30', 'jordan 1', 'royal blue', 'blue', 44, 29);
INSERT INTO Shoes (Shoe_ID, Manufacturer_ID, Year_Of_Manufacture, Silhouette_Name, Colorway, Main_color, Size_in_eu, Size_in_cm) VALUES (83746591, 12, DATE '2021-05-10', 'dunk', 'forest green', 'green', 45, 30);
INSERT INTO Shoes (Shoe_ID, Manufacturer_ID, Year_Of_Manufacture, Silhouette_Name, Colorway, Main_color, Size_in_eu, Size_in_cm) VALUES (51827436, 13, DATE '2020-11-22', 'jordan 1', 'taxi', 'yellow', 42, 27);
INSERT INTO Shoes (Shoe_ID, Manufacturer_ID, Year_Of_Manufacture, Silhouette_Name, Colorway, Main_color, Size_in_eu, Size_in_cm) VALUES (67341928, 14, DATE '2021-09-20', 'dunk', 'panda', 'black', 41, 26);
INSERT INTO Shoes (Shoe_ID, Manufacturer_ID, Year_Of_Manufacture, Silhouette_Name, Colorway, Main_color, Size_in_eu, Size_in_cm) VALUES (92638471, 15, DATE '2022-04-05', 'jordan 1', 'lucky green', 'green', 44, 29);
INSERT INTO Shoes (Shoe_ID, Manufacturer_ID, Year_Of_Manufacture, Silhouette_Name, Colorway, Main_color, Size_in_eu, Size_in_cm) VALUES (27461839, 5, DATE '2021-01-10', 'yeezy', 'zebra', 'white', 42, 27);
INSERT INTO Shoes (Shoe_ID, Manufacturer_ID, Year_Of_Manufacture, Silhouette_Name, Colorway, Main_color, Size_in_eu, Size_in_cm) VALUES (94726183, 12, DATE '2021-07-20', 'jordan 1', 'lucky green', 'green', 41, 26);
INSERT INTO Shoes (Shoe_ID, Manufacturer_ID, Year_Of_Manufacture, Silhouette_Name, Colorway, Main_color, Size_in_eu, Size_in_cm) VALUES (71829364, 13, DATE '2022-03-08', 'dunk', 'forest green', 'green', 41, 26);
INSERT INTO Shoes (Shoe_ID, Manufacturer_ID, Year_Of_Manufacture, Silhouette_Name, Colorway, Main_color, Size_in_eu, Size_in_cm) VALUES (36471928, 14, DATE '2020-09-15', 'jordan 1', 'taxi', 'yellow', 43, 28);
INSERT INTO Shoes (Shoe_ID, Manufacturer_ID, Year_Of_Manufacture, Silhouette_Name, Colorway, Main_color, Size_in_eu, Size_in_cm) VALUES (57382916, 15, DATE '2021-05-05', 'dunk', 'panda', 'black', 45, 30);
INSERT INTO Shoes (Shoe_ID, Manufacturer_ID, Year_Of_Manufacture, Silhouette_Name, Colorway, Main_color, Size_in_eu, Size_in_cm) VALUES (82936471, 6, DATE '2021-02-10', 'yeezy', 'beluga 2.0', 'grey', 40, 26);
INSERT INTO Shoes (Shoe_ID, Manufacturer_ID, Year_Of_Manufacture, Silhouette_Name, Colorway, Main_color, Size_in_eu, Size_in_cm) VALUES (12736491, 12, DATE '2021-08-20', 'jordan 1', 'lucky green', 'green', 42, 27);
INSERT INTO Shoes (Shoe_ID, Manufacturer_ID, Year_Of_Manufacture, Silhouette_Name, Colorway, Main_color, Size_in_eu, Size_in_cm) VALUES (11638274, 13, DATE '2022-04-01', 'dunk', 'off-white lot 7', 'white', 43, 28);
INSERT INTO Shoes (Shoe_ID, Manufacturer_ID, Year_Of_Manufacture, Silhouette_Name, Colorway, Main_color, Size_in_eu, Size_in_cm) VALUES (13741928, 14, DATE '2021-12-12', 'jordan 1', 'royal blue', 'blue', 44, 29);
INSERT INTO Shoes (Shoe_ID, Manufacturer_ID, Year_Of_Manufacture, Silhouette_Name, Colorway, Main_color, Size_in_eu, Size_in_cm) VALUES (19384716, 15, DATE '2021-07-03', 'dunk', 'forest green', 'green', 45, 30);
INSERT INTO Shoes (Shoe_ID, Manufacturer_ID, Year_Of_Manufacture, Silhouette_Name, Colorway, Main_color, Size_in_eu, Size_in_cm) VALUES (13519482, 7, DATE '2020-11-25', 'yeezy', 'oreo', 'black', 40, 26);
INSERT INTO Shoes (Shoe_ID, Manufacturer_ID, Year_Of_Manufacture, Silhouette_Name, Colorway, Main_color, Size_in_eu, Size_in_cm) VALUES (12837495, 12, DATE '2021-09-28', 'jordan 1', 'taxi', 'yellow', 42, 27);
INSERT INTO Shoes (Shoe_ID, Manufacturer_ID, Year_Of_Manufacture, Silhouette_Name, Colorway, Main_color, Size_in_eu, Size_in_cm) VALUES (19182736, 13, DATE '2021-04-15', 'dunk', 'panda', 'black', 41, 26);
INSERT INTO Shoes (Shoe_ID, Manufacturer_ID, Year_Of_Manufacture, Silhouette_Name, Colorway, Main_color, Size_in_eu, Size_in_cm) VALUES (27384629, 14, DATE '2022-02-22', 'jordan 1', 'lucky green', 'green', 44, 29);
INSERT INTO Shoes (Shoe_ID, Manufacturer_ID, Year_Of_Manufacture, Silhouette_Name, Colorway, Main_color, Size_in_eu, Size_in_cm) VALUES (14571936, 15, DATE '2021-12-03', 'dunk', 'off-white lot 7', 'white', 43, 28);
INSERT INTO Shoes (Shoe_ID, Manufacturer_ID, Year_Of_Manufacture, Silhouette_Name, Colorway, Main_color, Size_in_eu, Size_in_cm) VALUES (13917485, 8, DATE '2021-02-10', 'yeezy', 'beluga 2.0', 'grey', 40, 26);
INSERT INTO Shoes (Shoe_ID, Manufacturer_ID, Year_Of_Manufacture, Silhouette_Name, Colorway, Main_color, Size_in_eu, Size_in_cm) VALUES (09486713, 12, DATE '2021-08-20', 'jordan 1', 'lucky green', 'green', 42, 27);
INSERT INTO Shoes (Shoe_ID, Manufacturer_ID, Year_Of_Manufacture, Silhouette_Name, Colorway, Main_color, Size_in_eu, Size_in_cm) VALUES (03746591, 13, DATE '2022-04-01', 'dunk', 'off-white lot 7', 'white', 43, 28);
INSERT INTO Shoes (Shoe_ID, Manufacturer_ID, Year_Of_Manufacture, Silhouette_Name, Colorway, Main_color, Size_in_eu, Size_in_cm) VALUES (01827436, 14, DATE '2021-12-12', 'jordan 1', 'royal blue', 'blue', 44, 29);
INSERT INTO Shoes (Shoe_ID, Manufacturer_ID, Year_Of_Manufacture, Silhouette_Name, Colorway, Main_color, Size_in_eu, Size_in_cm) VALUES (07341928, 15, DATE '2021-07-03', 'dunk', 'forest green', 'green', 45, 30);
INSERT INTO Shoes (Shoe_ID, Manufacturer_ID, Year_Of_Manufacture, Silhouette_Name, Colorway, Main_color, Size_in_eu, Size_in_cm) VALUES (02638471, 4, DATE '2020-11-25', 'yeezy', 'oreo', 'black', 40, 26);
INSERT INTO Shoes (Shoe_ID, Manufacturer_ID, Year_Of_Manufacture, Silhouette_Name, Colorway, Main_color, Size_in_eu, Size_in_cm) VALUES (07461839, 12, DATE '2021-09-28', 'jordan 1', 'taxi', 'yellow', 42, 27);
INSERT INTO Shoes (Shoe_ID, Manufacturer_ID, Year_Of_Manufacture, Silhouette_Name, Colorway, Main_color, Size_in_eu, Size_in_cm) VALUES (04726183, 13, DATE '2021-04-15', 'dunk', 'panda', 'black', 41, 26);
INSERT INTO Shoes (Shoe_ID, Manufacturer_ID, Year_Of_Manufacture, Silhouette_Name, Colorway, Main_color, Size_in_eu, Size_in_cm) VALUES (01829364, 14, DATE '2022-02-22', 'jordan 1', 'lucky green', 'green', 44, 29);
INSERT INTO Shoes (Shoe_ID, Manufacturer_ID, Year_Of_Manufacture, Silhouette_Name, Colorway, Main_color, Size_in_eu, Size_in_cm) VALUES (06471928, 15, DATE '2021-12-03', 'dunk', 'off-white lot 7', 'white', 43, 28);
INSERT INTO Shoes (Shoe_ID, Manufacturer_ID, Year_Of_Manufacture, Silhouette_Name, Colorway, Main_color, Size_in_eu, Size_in_cm) VALUES (07382916, 1, DATE '2021-08-30', 'yeezy', 'zebra', 'white', 42, 27);
INSERT INTO Shoes (Shoe_ID, Manufacturer_ID, Year_Of_Manufacture, Silhouette_Name, Colorway, Main_color, Size_in_eu, Size_in_cm) VALUES (92936471, 2, DATE '2021-05-10', 'yeezy', 'oreo', 'black', 41, 26);
INSERT INTO Shoes (Shoe_ID, Manufacturer_ID, Year_Of_Manufacture, Silhouette_Name, Colorway, Main_color, Size_in_eu, Size_in_cm) VALUES (01638275, 3, DATE '2020-11-22', 'yeezy', 'beluga', 'grey', 43, 28);
INSERT INTO Shoes (Shoe_ID, Manufacturer_ID, Year_Of_Manufacture, Silhouette_Name, Colorway, Main_color, Size_in_eu, Size_in_cm) VALUES (93741929, 4, DATE '2021-09-20', 'yeezy', 'zebra', 'white', 42, 27);
INSERT INTO Shoes (Shoe_ID, Manufacturer_ID, Year_Of_Manufacture, Silhouette_Name, Colorway, Main_color, Size_in_eu, Size_in_cm) VALUES (99384717, 5, DATE '2022-04-05', 'yeezy', 'oreo', 'black', 41, 26);
INSERT INTO Shoes (Shoe_ID, Manufacturer_ID, Year_Of_Manufacture, Silhouette_Name, Colorway, Main_color, Size_in_eu, Size_in_cm) VALUES (93519483, 6, DATE '2021-01-10', 'yeezy', 'zebra', 'white', 42, 27);
INSERT INTO Shoes (Shoe_ID, Manufacturer_ID, Year_Of_Manufacture, Silhouette_Name, Colorway, Main_color, Size_in_eu, Size_in_cm) VALUES (92837496, 7, DATE '2021-07-20', 'yeezy', 'oreo', 'black', 41, 26);
INSERT INTO Shoes (Shoe_ID, Manufacturer_ID, Year_Of_Manufacture, Silhouette_Name, Colorway, Main_color, Size_in_eu, Size_in_cm) VALUES (99182737, 8, DATE '2022-03-08', 'yeezy', 'beluga', 'grey', 43, 28);
INSERT INTO Shoes (Shoe_ID, Manufacturer_ID, Year_Of_Manufacture, Silhouette_Name, Colorway, Main_color, Size_in_eu, Size_in_cm) VALUES (97384630, 9, DATE '2020-09-15', 'yeezy', 'zebra', 'white', 42, 27);
INSERT INTO Shoes (Shoe_ID, Manufacturer_ID, Year_Of_Manufacture, Silhouette_Name, Colorway, Main_color, Size_in_eu, Size_in_cm) VALUES (94571937, 4, DATE '2021-05-05', 'yeezy', 'oreo', 'black', 41, 26);

--ordertoshop fill
INSERT INTO Order_To_Shop (Order_Number, First_Name, Last_Name, Date_of_birth, Shoe_ID, City_ID) VALUES (10001, 'John', 'Doe', DATE '1985-06-05', 23567421, 1);
INSERT INTO Order_To_Shop (Order_Number, First_Name, Last_Name, Date_of_birth, Shoe_ID, City_ID) VALUES (10002, 'Alice', 'Smith', DATE '1990-02-28', 54761928, 13);
INSERT INTO Order_To_Shop (Order_Number, First_Name, Last_Name, Date_of_birth, Shoe_ID, City_ID) VALUES (10003, 'Michael', 'Johnson', DATE '1987-09-12', 39287461, 12);
INSERT INTO Order_To_Shop (Order_Number, First_Name, Last_Name, Date_of_birth, Shoe_ID, City_ID) VALUES (10004, 'Emily', 'Brown', DATE '1992-03-25', 92837465, 15);
INSERT INTO Order_To_Shop (Order_Number, First_Name, Last_Name, Date_of_birth, Shoe_ID, City_ID) VALUES (10005, 'David', 'Wilson', DATE '1976-11-30', 37629184, 4);
INSERT INTO Order_To_Shop (Order_Number, First_Name, Last_Name, Date_of_birth, Shoe_ID, City_ID) VALUES (10006, 'Sarah', 'Miller', DATE '1985-08-19', 51629387, 3);
INSERT INTO Order_To_Shop (Order_Number, First_Name, Last_Name, Date_of_birth, Shoe_ID, City_ID) VALUES (10007, 'Robert', 'Martinez', DATE '1974-05-23', 73649582, 10);
INSERT INTO Order_To_Shop (Order_Number, First_Name, Last_Name, Date_of_birth, Shoe_ID, City_ID) VALUES (10008, 'Jennifer', 'Davis', DATE '1982-12-07', 82917465, 22);
INSERT INTO Order_To_Shop (Order_Number, First_Name, Last_Name, Date_of_birth, Shoe_ID, City_ID) VALUES (10009, 'Daniel', 'Garcia', DATE '1991-08-03', 19482756, 5);
INSERT INTO Order_To_Shop (Order_Number, First_Name, Last_Name, Date_of_birth, Shoe_ID, City_ID) VALUES (10010, 'Jessica', 'Rodriguez', DATE '1984-04-16', 61593742, 4);
INSERT INTO Order_To_Shop (Order_Number, First_Name, Last_Name, Date_of_birth, Shoe_ID, City_ID) VALUES (10011, 'James', 'Lopez', DATE '1973-10-29', 41739286, 11);
INSERT INTO Order_To_Shop (Order_Number, First_Name, Last_Name, Date_of_birth, Shoe_ID, City_ID) VALUES (10012, 'Maria', 'Hernandez', DATE '1997-02-14', 71938462, 23);
INSERT INTO Order_To_Shop (Order_Number, First_Name, Last_Name, Date_of_birth, Shoe_ID, City_ID) VALUES (10013, 'John', 'Gonzalez', DATE '1986-06-08', 46519283, 12);
INSERT INTO Order_To_Shop (Order_Number, First_Name, Last_Name, Date_of_birth, Shoe_ID, City_ID) VALUES (10014, 'Laura', 'Perez', DATE '1990-09-21', 72839465, 4);
INSERT INTO Order_To_Shop (Order_Number, First_Name, Last_Name, Date_of_birth, Shoe_ID, City_ID) VALUES (10015, 'Christopher', 'Sanchez', DATE '1987-11-17', 74639281, 5);
INSERT INTO Order_To_Shop (Order_Number, First_Name, Last_Name, Date_of_birth, Shoe_ID, City_ID) VALUES (10016, 'Amanda', 'Williams', DATE '1993-04-05', 92748513, 6);
INSERT INTO Order_To_Shop (Order_Number, First_Name, Last_Name, Date_of_birth, Shoe_ID, City_ID) VALUES (10017, 'Ryan', 'Ramirez', DATE '2000-01-02', 20394857, 9);
INSERT INTO Order_To_Shop (Order_Number, First_Name, Last_Name, Date_of_birth, Shoe_ID, City_ID) VALUES (10018, 'Heather', 'Torres', DATE '1988-07-15', 43782915, 6);
INSERT INTO Order_To_Shop (Order_Number, First_Name, Last_Name, Date_of_birth, Shoe_ID, City_ID) VALUES (10019, 'Jason', 'Flores', DATE '1979-12-18', 25483169, 9);
INSERT INTO Order_To_Shop (Order_Number, First_Name, Last_Name, Date_of_birth, Shoe_ID, City_ID) VALUES (10020, 'Megan', 'Gomez', DATE '1995-10-07', 91374652, 8);
INSERT INTO Order_To_Shop (Order_Number, First_Name, Last_Name, Date_of_birth, Shoe_ID, City_ID) VALUES (10021, 'David', 'Gonzalez', DATE '1986-03-24', 78619432, 7);
INSERT INTO Order_To_Shop (Order_Number, First_Name, Last_Name, Date_of_birth, Shoe_ID, City_ID) VALUES (10022, 'Michelle', 'Vasquez', DATE '1977-08-09', 27486319, 18);
INSERT INTO Order_To_Shop (Order_Number, First_Name, Last_Name, Date_of_birth, Shoe_ID, City_ID) VALUES (10023, 'Kevin', 'Butler', DATE '1989-05-11', 15928364, 19);
INSERT INTO Order_To_Shop (Order_Number, First_Name, Last_Name, Date_of_birth, Shoe_ID, City_ID) VALUES (10024, 'Angela', 'Foster', DATE '1994-07-28', 73482951, 19);
INSERT INTO Order_To_Shop (Order_Number, First_Name, Last_Name, Date_of_birth, Shoe_ID, City_ID) VALUES (10025, 'Justin', 'Murray', DATE '1983-02-06', 39827456, 10);
INSERT INTO Order_To_Shop (Order_Number, First_Name, Last_Name, Date_of_birth, Shoe_ID, City_ID) VALUES (10026, 'Brandon', 'Kim', DATE '1980-11-13', 57483926, 10);
INSERT INTO Order_To_Shop (Order_Number, First_Name, Last_Name, Date_of_birth, Shoe_ID, City_ID) VALUES (10027, 'Stephanie', 'Nguyen', DATE '1996-06-30', 65491823, 20);
INSERT INTO Order_To_Shop (Order_Number, First_Name, Last_Name, Date_of_birth, Shoe_ID, City_ID) VALUES (10028, 'Andrew', 'Reyes', DATE '1998-09-08', 83947125, 21);
INSERT INTO Order_To_Shop (Order_Number, First_Name, Last_Name, Date_of_birth, Shoe_ID, City_ID) VALUES (10029, 'Samantha', 'Cook', DATE '1992-12-11', 75839641, 1);
INSERT INTO Order_To_Shop (Order_Number, First_Name, Last_Name, Date_of_birth, Shoe_ID, City_ID) VALUES (10030, 'Joshua', 'Chang', DATE '1987-05-19', 79234618, 15);
INSERT INTO Order_To_Shop (Order_Number, First_Name, Last_Name, Date_of_birth, Shoe_ID, City_ID) VALUES (10031, 'Melissa', 'Patel', DATE '1984-03-08', 97836421, 17);
INSERT INTO Order_To_Shop (Order_Number, First_Name, Last_Name, Date_of_birth, Shoe_ID, City_ID) VALUES (10032, 'Thomas', 'Sullivan', DATE '1975-09-27', 61492837, 3);
INSERT INTO Order_To_Shop (Order_Number, First_Name, Last_Name, Date_of_birth, Shoe_ID, City_ID) VALUES (10033, 'Amy', 'Hill', DATE '1990-12-14', 28347619, 2);
INSERT INTO Order_To_Shop (Order_Number, First_Name, Last_Name, Date_of_birth, Shoe_ID, City_ID) VALUES (10034, 'Eric', 'Hernandez', DATE '1986-08-21', 81246537, 4);
INSERT INTO Order_To_Shop (Order_Number, First_Name, Last_Name, Date_of_birth, Shoe_ID, City_ID) VALUES (10035, 'Rachel', 'Young', DATE '1982-04-03', 49716283, 5);
INSERT INTO Order_To_Shop (Order_Number, First_Name, Last_Name, Date_of_birth, Shoe_ID, City_ID) VALUES (10036, 'Aaron', 'Scott', DATE '1995-11-16', 20394857, 16);
INSERT INTO Order_To_Shop (Order_Number, First_Name, Last_Name, Date_of_birth, Shoe_ID, City_ID) VALUES (10037, 'Nicole', 'Gonzales', DATE '1977-07-25', 16283745, 13);
INSERT INTO Order_To_Shop (Order_Number, First_Name, Last_Name, Date_of_birth, Shoe_ID, City_ID) VALUES (10038, 'Jeremy', 'Baker', DATE '1988-01-10', 73849521, 12);
INSERT INTO Order_To_Shop (Order_Number, First_Name, Last_Name, Date_of_birth, Shoe_ID, City_ID) VALUES (10039, 'Lauren', 'Green', DATE '1983-06-07', 46527381, 14);
INSERT INTO Order_To_Shop (Order_Number, First_Name, Last_Name, Date_of_birth, Shoe_ID, City_ID) VALUES (10040, 'Timothy', 'Hill', DATE '1991-09-29', 73946182, 5);
INSERT INTO Order_To_Shop (Order_Number, First_Name, Last_Name, Date_of_birth, Shoe_ID, City_ID) VALUES (10041, 'Emily', 'Wright', DATE '1994-02-18', 82736491, 1);
INSERT INTO Order_To_Shop (Order_Number, First_Name, Last_Name, Date_of_birth, Shoe_ID, City_ID) VALUES (10042, 'Patrick', 'Lopez', DATE '1986-07-14', 91638274, 13);
INSERT INTO Order_To_Shop (Order_Number, First_Name, Last_Name, Date_of_birth, Shoe_ID, City_ID) VALUES (10043, 'Catherine', 'Lee', DATE '1990-12-03', 53741928, 22);
INSERT INTO Order_To_Shop (Order_Number, First_Name, Last_Name, Date_of_birth, Shoe_ID, City_ID) VALUES (10044, 'Justin', 'Garcia', DATE '1987-05-29', 29384716, 4);
INSERT INTO Order_To_Shop (Order_Number, First_Name, Last_Name, Date_of_birth, Shoe_ID, City_ID) VALUES (10045, 'Vanessa', 'Martinez', DATE '1993-09-16', 73519482, 5);
INSERT INTO Order_To_Shop (Order_Number, First_Name, Last_Name, Date_of_birth, Shoe_ID, City_ID) VALUES (10046, 'Ethan', 'Nguyen', DATE '1981-04-22', 62837495, 17);
INSERT INTO Order_To_Shop (Order_Number, First_Name, Last_Name, Date_of_birth, Shoe_ID, City_ID) VALUES (10047, 'Christina', 'Taylor', DATE '1976-08-11', 49182736, 23);
INSERT INTO Order_To_Shop (Order_Number, First_Name, Last_Name, Date_of_birth, Shoe_ID, City_ID) VALUES (10048, 'Matthew', 'Wilson', DATE '1997-01-27', 17384629, 22);
INSERT INTO Order_To_Shop (Order_Number, First_Name, Last_Name, Date_of_birth, Shoe_ID, City_ID) VALUES (10049, 'Monica', 'Lopez', DATE '1984-03-19', 84571936, 4);
INSERT INTO Order_To_Shop (Order_Number, First_Name, Last_Name, Date_of_birth, Shoe_ID, City_ID) VALUES (10050, 'Gregory', 'Harris', DATE '1995-11-05', 63917485, 5);
INSERT INTO Order_To_Shop (Order_Number, First_Name, Last_Name, Date_of_birth, Shoe_ID, City_ID) VALUES (10051, 'Julia', 'Clark', DATE '1982-06-09', 29486713, 17);
INSERT INTO Order_To_Shop (Order_Number, First_Name, Last_Name, Date_of_birth, Shoe_ID, City_ID) VALUES (10052, 'Mark', 'Young', DATE '1979-12-12', 83746591, 19);
INSERT INTO Order_To_Shop (Order_Number, First_Name, Last_Name, Date_of_birth, Shoe_ID, City_ID) VALUES (10053, 'Katherine', 'Perez', DATE '1988-04-17', 51827436, 2);
INSERT INTO Order_To_Shop (Order_Number, First_Name, Last_Name, Date_of_birth, Shoe_ID, City_ID) VALUES (10054, 'Samuel', 'Miller', DATE '1993-09-30', 67341928, 14);
INSERT INTO Order_To_Shop (Order_Number, First_Name, Last_Name, Date_of_birth, Shoe_ID, City_ID) VALUES (10055, 'Victoria', 'Scott', DATE '1985-02-25', 92638471, 5);
INSERT INTO Order_To_Shop (Order_Number, First_Name, Last_Name, Date_of_birth, Shoe_ID, City_ID) VALUES (10056, 'Benjamin', 'Thomas', DATE '1990-07-08', 27461839, 11);
INSERT INTO Order_To_Shop (Order_Number, First_Name, Last_Name, Date_of_birth, Shoe_ID, City_ID) VALUES (10057, 'Anna', 'Rodriguez', DATE '1977-10-21', 94726183, 10);
INSERT INTO Order_To_Shop (Order_Number, First_Name, Last_Name, Date_of_birth, Shoe_ID, City_ID) VALUES (10058, 'Jeffrey', 'Hernandez', DATE '1986-05-14', 71829364, 10);
INSERT INTO Order_To_Shop (Order_Number, First_Name, Last_Name, Date_of_birth, Shoe_ID, City_ID) VALUES (10059, 'Alyssa', 'Gomez', DATE '1991-08-30', 36471928, 20);
INSERT INTO Order_To_Shop (Order_Number, First_Name, Last_Name, Date_of_birth, Shoe_ID, City_ID) VALUES (10060, 'Dylan', 'Campbell', DATE '1983-01-13', 57382916, 21);
INSERT INTO Order_To_Shop (Order_Number, First_Name, Last_Name, Date_of_birth, Shoe_ID, City_ID) VALUES (10061, 'Emily', 'Thompson', DATE '1994-02-18', 12736491, 21);
INSERT INTO Order_To_Shop (Order_Number, First_Name, Last_Name, Date_of_birth, Shoe_ID, City_ID) VALUES (10062, 'Patrick', 'Morales', DATE '1986-07-14', 11638274, 23);
INSERT INTO Order_To_Shop (Order_Number, First_Name, Last_Name, Date_of_birth, Shoe_ID, City_ID) VALUES (10063, 'Catherine', 'Reyes', DATE '1990-12-03', 13741928, 12);
INSERT INTO Order_To_Shop (Order_Number, First_Name, Last_Name, Date_of_birth, Shoe_ID, City_ID) VALUES (10064, 'Justin', 'Phillips', DATE '1987-05-29', 19384716, 14);
INSERT INTO Order_To_Shop (Order_Number, First_Name, Last_Name, Date_of_birth, Shoe_ID, City_ID) VALUES (10065, 'Vanessa', 'Lewis', DATE '1993-09-16', 13519482, 5);
INSERT INTO Order_To_Shop (Order_Number, First_Name, Last_Name, Date_of_birth, Shoe_ID, City_ID) VALUES (10066, 'Ethan', 'Parker', DATE '1981-04-22', 12837495, 11);
INSERT INTO Order_To_Shop (Order_Number, First_Name, Last_Name, Date_of_birth, Shoe_ID, City_ID) VALUES (10067, 'Christina', 'Evans', DATE '1976-08-11', 19182736, 3);
INSERT INTO Order_To_Shop (Order_Number, First_Name, Last_Name, Date_of_birth, Shoe_ID, City_ID) VALUES (10068, 'Matthew', 'Edwards', DATE '1997-01-27', 27384629, 2);
INSERT INTO Order_To_Shop (Order_Number, First_Name, Last_Name, Date_of_birth, Shoe_ID, City_ID) VALUES (10069, 'Monica', 'Collins', DATE '1984-03-19', 14571936, 4);
INSERT INTO Order_To_Shop (Order_Number, First_Name, Last_Name, Date_of_birth, Shoe_ID, City_ID) VALUES (10070, 'Gregory', 'Richardson', DATE '1995-11-05', 13917485, 6);
INSERT INTO Order_To_Shop (Order_Number, First_Name, Last_Name, Date_of_birth, Shoe_ID, City_ID) VALUES (10071, 'Julia', 'Hill', DATE '1982-06-09', 09486713, 8);
INSERT INTO Order_To_Shop (Order_Number, First_Name, Last_Name, Date_of_birth, Shoe_ID, City_ID) VALUES (10072, 'Mark', 'Flores', DATE '1979-12-12', 03746591, 8);
INSERT INTO Order_To_Shop (Order_Number, First_Name, Last_Name, Date_of_birth, Shoe_ID, City_ID) VALUES (10073, 'Katherine', 'Washington', DATE '1988-04-17', 01827436, 2);
INSERT INTO Order_To_Shop (Order_Number, First_Name, Last_Name, Date_of_birth, Shoe_ID, City_ID) VALUES (10074, 'Samuel', 'Cruz', DATE '1993-09-30', 07341928, 8);
INSERT INTO Order_To_Shop (Order_Number, First_Name, Last_Name, Date_of_birth, Shoe_ID, City_ID) VALUES (10075, 'Victoria', 'Butler', DATE '1985-02-25', 02638471, 9);
INSERT INTO Order_To_Shop (Order_Number, First_Name, Last_Name, Date_of_birth, Shoe_ID, City_ID) VALUES (10076, 'Benjamin', 'Simmons', DATE '1990-07-08', 07461839, 9);
INSERT INTO Order_To_Shop (Order_Number, First_Name, Last_Name, Date_of_birth, Shoe_ID, City_ID) VALUES (10077, 'Anna', 'Russell', DATE '1977-10-21', 04726183, 13);
INSERT INTO Order_To_Shop (Order_Number, First_Name, Last_Name, Date_of_birth, Shoe_ID, City_ID) VALUES (10078, 'Jeffrey', 'Griffin', DATE '1986-05-14', 01829364, 2);
INSERT INTO Order_To_Shop (Order_Number, First_Name, Last_Name, Date_of_birth, Shoe_ID, City_ID) VALUES (10079, 'Alyssa', 'Diaz', DATE '1991-08-30', 06471928, 6);
INSERT INTO Order_To_Shop (Order_Number, First_Name, Last_Name, Date_of_birth, Shoe_ID, City_ID) VALUES (10080, 'Dylan', 'Hayes', DATE '1983-01-13', 07382916, 15);
INSERT INTO Order_To_Shop (Order_Number, First_Name, Last_Name, Date_of_birth, Shoe_ID, City_ID) VALUES (10081, 'Samantha', 'Martinez', DATE '1994-03-18', 92936471, 10);
INSERT INTO Order_To_Shop (Order_Number, First_Name, Last_Name, Date_of_birth, Shoe_ID, City_ID) VALUES (10082, 'Nathan', 'Garcia', DATE '1989-07-14', 01638275, 3);
INSERT INTO Order_To_Shop (Order_Number, First_Name, Last_Name, Date_of_birth, Shoe_ID, City_ID) VALUES (10083, 'Sarah', 'Lopez', DATE '1992-12-03', 93741929, 2);
INSERT INTO Order_To_Shop (Order_Number, First_Name, Last_Name, Date_of_birth, Shoe_ID, City_ID) VALUES (10084, 'Brandon', 'Hernandez', DATE '1988-05-29', 99384717, 4);
INSERT INTO Order_To_Shop (Order_Number, First_Name, Last_Name, Date_of_birth, Shoe_ID, City_ID) VALUES (10085, 'Alexandra', 'Gonzalez', DATE '1990-09-16', 93519483, 21);
INSERT INTO Order_To_Shop (Order_Number, First_Name, Last_Name, Date_of_birth, Shoe_ID, City_ID) VALUES (10086, 'Jonathan', 'Ramirez', DATE '1982-04-22', 92837496, 21);
INSERT INTO Order_To_Shop (Order_Number, First_Name, Last_Name, Date_of_birth, Shoe_ID, City_ID) VALUES (10087, 'Rachel', 'Perez', DATE '1975-08-11', 99182737, 1);
INSERT INTO Order_To_Shop (Order_Number, First_Name, Last_Name, Date_of_birth, Shoe_ID, City_ID) VALUES (10088, 'Jared', 'Sanchez', DATE '1996-01-27', 97384630, 12);
INSERT INTO Order_To_Shop (Order_Number, First_Name, Last_Name, Date_of_birth, Shoe_ID, City_ID) VALUES (10089, 'Hannah', 'Torres', DATE '1983-03-19', 94571937, 4);

--Stores fill
INSERT INTO Stores (Store_ID, City_ID, ZIP_Code, Address) VALUES (1, 1, 2000, '10 Downing Street, London');
INSERT INTO Stores (Store_ID, City_ID, ZIP_Code, Address) VALUES (2, 1, 2000, '20 Whitehall, London');
INSERT INTO Stores (Store_ID, City_ID, ZIP_Code, Address) VALUES (3, 2, 4551, '1 Market Street, Manchester');
INSERT INTO Stores (Store_ID, City_ID, ZIP_Code, Address) VALUES (4, 2, 4551, '5 Piccadilly Gardens, Manchester');
INSERT INTO Stores (Store_ID, City_ID, ZIP_Code, Address) VALUES (5, 3, 75001, '5 Avenue de lOpéra, Paris');
INSERT INTO Stores (Store_ID, City_ID, ZIP_Code, Address) VALUES (6, 3, 75002, '10 Rue du Faubourg Montmartre, Paris');
INSERT INTO Stores (Store_ID, City_ID, ZIP_Code, Address) VALUES (7, 3, 75003, '15 Rue des Rosiers, Paris');
INSERT INTO Stores (Store_ID, City_ID, ZIP_Code, Address) VALUES (8, 4, 10115, '25 Invalidenstraße, Berlin');
INSERT INTO Stores (Store_ID, City_ID, ZIP_Code, Address) VALUES (9, 4, 10117, '5 Unter den Linden, Berlin');
INSERT INTO Stores (Store_ID, City_ID, ZIP_Code, Address) VALUES (10, 5, 44137, '1 Borussiastraße, Dortmund');
INSERT INTO Stores (Store_ID, City_ID, ZIP_Code, Address) VALUES (11, 5, 44139, '5 Westenhellweg, Dortmund');
INSERT INTO Stores (Store_ID, City_ID, ZIP_Code, Address) VALUES (12, 6, 50667, '10 Domkloster, Cologne');
INSERT INTO Stores (Store_ID, City_ID, ZIP_Code, Address) VALUES (13, 6, 50668, '15 Hohenzollernring, Cologne');
INSERT INTO Stores (Store_ID, City_ID, ZIP_Code, Address) VALUES (14, 7, 20121, '1 Piazza del Duomo, Milano');
INSERT INTO Stores (Store_ID, City_ID, ZIP_Code, Address) VALUES (15, 7, 20122, '5 Via Montenapoleone, Milano');
INSERT INTO Stores (Store_ID, City_ID, ZIP_Code, Address) VALUES (16, 8, 10100, '5 Piazza San Carlo, Torino');
INSERT INTO Stores (Store_ID, City_ID, ZIP_Code, Address) VALUES (17, 8, 10121, '10 Via Roma, Torino');
INSERT INTO Stores (Store_ID, City_ID, ZIP_Code, Address) VALUES (18, 9, 28001, '1 Gran Vía, Madrid');
INSERT INTO Stores (Store_ID, City_ID, ZIP_Code, Address) VALUES (19, 9, 28004, '5 Calle de Alcalá, Madrid');
INSERT INTO Stores (Store_ID, City_ID, ZIP_Code, Address) VALUES (20, 9, 28005, '10 Plaza Mayor, Madrid');
INSERT INTO Stores (Store_ID, City_ID, ZIP_Code, Address) VALUES (21, 10, 45003, '1 Plaza de Zocodover, Toledo');
INSERT INTO Stores (Store_ID, City_ID, ZIP_Code, Address) VALUES (22, 10, 45004, '5 Calle de la Ciudad, Toledo');
INSERT INTO Stores (Store_ID, City_ID, ZIP_Code, Address) VALUES (23, 11, 1010, '10 Stephansplatz, Vienna');
INSERT INTO Stores (Store_ID, City_ID, ZIP_Code, Address) VALUES (24, 11, 1020, '15 Praterstraße, Vienna');
INSERT INTO Stores (Store_ID, City_ID, ZIP_Code, Address) VALUES (25, 12, 1051, '5 Ferenciek tere, Budapest');
INSERT INTO Stores (Store_ID, City_ID, ZIP_Code, Address) VALUES (26, 12, 1061, '10 Andrássy út, Budapest');
INSERT INTO Stores (Store_ID, City_ID, ZIP_Code, Address) VALUES (27, 13, 4026, '1 Piac utca, Debrecen');
INSERT INTO Stores (Store_ID, City_ID, ZIP_Code, Address) VALUES (28, 13, 4025, '5 Déri tér, Debrecen');
INSERT INTO Stores (Store_ID, City_ID, ZIP_Code, Address) VALUES (29, 14, 00001, '1 Warsaw Towers, Warsaw');
INSERT INTO Stores (Store_ID, City_ID, ZIP_Code, Address) VALUES (30, 14, 00002, '5 Krakowskie Przedmieœcie, Warsaw');
INSERT INTO Stores (Store_ID, City_ID, ZIP_Code, Address) VALUES (31, 15, 10001, '1 Times Square, New York');
INSERT INTO Stores (Store_ID, City_ID, ZIP_Code, Address) VALUES (32, 15, 10002, '5 Fifth Avenue, New York');
INSERT INTO Stores (Store_ID, City_ID, ZIP_Code, Address) VALUES (33, 15, 10003, '10 Broadway, New York');
INSERT INTO Stores (Store_ID, City_ID, ZIP_Code, Address) VALUES (34, 15, 10004, '15 Wall Street, New York');
INSERT INTO Stores (Store_ID, City_ID, ZIP_Code, Address) VALUES (35, 16, 33132, '10 Biscayne Boulevard, Miami');
INSERT INTO Stores (Store_ID, City_ID, ZIP_Code, Address) VALUES (36, 16, 33131, '5 Brickell Avenue, Miami');
INSERT INTO Stores (Store_ID, City_ID, ZIP_Code, Address) VALUES (37, 17, 94102, '1 Market Street, San Francisco');
INSERT INTO Stores (Store_ID, City_ID, ZIP_Code, Address) VALUES (38, 17, 94103, '5 Mission Street, San Francisco');
INSERT INTO Stores (Store_ID, City_ID, ZIP_Code, Address) VALUES (39, 17, 94104, '10 Montgomery Street, San Francisco');
INSERT INTO Stores (Store_ID, City_ID, ZIP_Code, Address) VALUES (40, 17, 94105, '15 Embarcadero, San Francisco');
INSERT INTO Stores (Store_ID, City_ID, ZIP_Code, Address) VALUES (41, 18, 20004, '1600 Pennsylvania Avenue NW, Washington');
INSERT INTO Stores (Store_ID, City_ID, ZIP_Code, Address) VALUES (42, 18, 20005, '5 K Street NW, Washington');
INSERT INTO Stores (Store_ID, City_ID, ZIP_Code, Address) VALUES (43, 18, 20006, '10 Pennsylvania Avenue NW, Washington');
INSERT INTO Stores (Store_ID, City_ID, ZIP_Code, Address) VALUES (44, 18, 20007, '15 Georgetown, Washington');
INSERT INTO Stores (Store_ID, City_ID, ZIP_Code, Address) VALUES (45, 19, 60601, '1 North State Street, Chicago');
INSERT INTO Stores (Store_ID, City_ID, ZIP_Code, Address) VALUES (46, 19, 60602, '5 Michigan Avenue, Chicago');
INSERT INTO Stores (Store_ID, City_ID, ZIP_Code, Address) VALUES (47, 19, 60603, '10 Wacker Drive, Chicago');
INSERT INTO Stores (Store_ID, City_ID, ZIP_Code, Address) VALUES (48, 19, 60604, '15 LaSalle Street, Chicago');
INSERT INTO Stores (Store_ID, City_ID, ZIP_Code, Address) VALUES (49, 19, 60605, '20 South Clark Street, Chicago');
INSERT INTO Stores (Store_ID, City_ID, ZIP_Code, Address) VALUES (50, 20, 02116, '1 Boston Place, Boston');
INSERT INTO Stores (Store_ID, City_ID, ZIP_Code, Address) VALUES (51, 20, 02110, '5 State Street, Boston');
INSERT INTO Stores (Store_ID, City_ID, ZIP_Code, Address) VALUES (52, 20, 02111, '10 Boylston Street, Boston');
INSERT INTO Stores (Store_ID, City_ID, ZIP_Code, Address) VALUES (53, 20, 02112, '15 Cambridge Street, Boston');
INSERT INTO Stores (Store_ID, City_ID, ZIP_Code, Address) VALUES (54, 21, 1000004, '1 Chiyoda, Tokyo');
INSERT INTO Stores (Store_ID, City_ID, ZIP_Code, Address) VALUES (55, 21, 1000005, '5 Shibuya, Tokyo');
INSERT INTO Stores (Store_ID, City_ID, ZIP_Code, Address) VALUES (56, 21, 1000006, '10 Shinjuku, Tokyo');
INSERT INTO Stores (Store_ID, City_ID, ZIP_Code, Address) VALUES (57, 22, 12345, '1 Corniche Road, Abu Dhabi');
INSERT INTO Stores (Store_ID, City_ID, ZIP_Code, Address) VALUES (58, 22, 54321, '5 Khalifa City, Abu Dhabi');
INSERT INTO Stores (Store_ID, City_ID, ZIP_Code, Address) VALUES (59, 23, 4051, '10 Bahnhofplatz, Basel');
INSERT INTO Stores (Store_ID, City_ID, ZIP_Code, Address) VALUES (60, 23, 4052, '15 Spalenberg, Basel');

--City fill
INSERT INTO City (City_ID, City_name ,Country_ID) VALUES (1, 'London', 184);
INSERT INTO City (City_ID, City_name ,Country_ID) VALUES (2, 'Manchester', 184);
INSERT INTO City (City_ID, City_name ,Country_ID) VALUES (3, 'Paris', 60);
INSERT INTO City (City_ID, City_name ,Country_ID) VALUES (4, 'Berlin', 64);
INSERT INTO City (City_ID, City_name ,Country_ID) VALUES (5, 'Dortmund', 64);
INSERT INTO City (City_ID, City_name ,Country_ID) VALUES (6, 'Cologne', 64);
INSERT INTO City (City_ID, City_name ,Country_ID) VALUES (7, 'Milano', 82);
INSERT INTO City (City_ID, City_name ,Country_ID) VALUES (8, 'Torino', 82);
INSERT INTO City (City_ID, City_name ,Country_ID) VALUES (9, 'Madrid', 162);
INSERT INTO City (City_ID, City_name ,Country_ID) VALUES (10, 'Toledo', 162);
INSERT INTO City (City_ID, City_name ,Country_ID) VALUES (11, 'Vienna', 10);
INSERT INTO City (City_ID, City_name ,Country_ID) VALUES (12, 'Budapest', 74);
INSERT INTO City (City_ID, City_name ,Country_ID) VALUES (13, 'Debrecen', 74);
INSERT INTO City (City_ID, City_name ,Country_ID) VALUES (14, 'Warsaw', 137);
INSERT INTO City (City_ID, City_name ,Country_ID) VALUES (15, 'New York', 185);
INSERT INTO City (City_ID, City_name ,Country_ID) VALUES (16, 'Miami', 185);
INSERT INTO City (City_ID, City_name ,Country_ID) VALUES (17, 'San Francisco', 185);
INSERT INTO City (City_ID, City_name ,Country_ID) VALUES (18, 'Washington', 185);
INSERT INTO City (City_ID, City_name ,Country_ID) VALUES (19, 'Chicago', 185);
INSERT INTO City (City_ID, City_name ,Country_ID) VALUES (20, 'Boston', 185);
INSERT INTO City (City_ID, City_name ,Country_ID) VALUES (21, 'Tokyo', 84);
INSERT INTO City (City_ID, City_name ,Country_ID) VALUES (22, 'Abu Dhabi', 183);
INSERT INTO City (City_ID, City_name ,Country_ID) VALUES (23, 'Basel', 167);

--Order_Shipment fill
INSERT INTO Order_Shipment (Order_Number, Store_from, Store_to) VALUES (10004, 2, 31);
INSERT INTO Order_Shipment (Order_Number, Store_from, Store_to) VALUES (10008, 22, 58);
INSERT INTO Order_Shipment (Order_Number, Store_from, Store_to) VALUES (10014, 31, 9);
INSERT INTO Order_Shipment (Order_Number, Store_from, Store_to) VALUES (10029, 53, 1);
INSERT INTO Order_Shipment (Order_Number, Store_from, Store_to) VALUES (10037, 59, 27);
INSERT INTO Order_Shipment (Order_Number, Store_from, Store_to) VALUES (10049, 46, 8);
INSERT INTO Order_Shipment (Order_Number, Store_from, Store_to) VALUES (10053, 48, 3);
INSERT INTO Order_Shipment (Order_Number, Store_from, Store_to) VALUES (10065, 42, 10);
INSERT INTO Order_Shipment (Order_Number, Store_from, Store_to) VALUES (10079, 51, 12);

--Availabe_Shoes_Instore fill
INSERT INTO Availabe_Shoes_Instore (Shoe_ID, Store_ID) VALUES (23567421, 1);
INSERT INTO Availabe_Shoes_Instore (Shoe_ID, Store_ID) VALUES (54761928, 27);
INSERT INTO Availabe_Shoes_Instore (Shoe_ID, Store_ID) VALUES (39287461, 25);
INSERT INTO Availabe_Shoes_Instore (Shoe_ID, Store_ID) VALUES (92837465, 2);--ship to 31
INSERT INTO Availabe_Shoes_Instore (Shoe_ID, Store_ID) VALUES (37629184, 9);
INSERT INTO Availabe_Shoes_Instore (Shoe_ID, Store_ID) VALUES (51629387, 5);
INSERT INTO Availabe_Shoes_Instore (Shoe_ID, Store_ID) VALUES (73649582, 22);
INSERT INTO Availabe_Shoes_Instore (Shoe_ID, Store_ID) VALUES (82917465, 22);--ship to 58
INSERT INTO Availabe_Shoes_Instore (Shoe_ID, Store_ID) VALUES (19482756, 10);
INSERT INTO Availabe_Shoes_Instore (Shoe_ID, Store_ID) VALUES (61593742, 8);
INSERT INTO Availabe_Shoes_Instore (Shoe_ID, Store_ID) VALUES (41739286, 23);
INSERT INTO Availabe_Shoes_Instore (Shoe_ID, Store_ID) VALUES (71938462, 60);
INSERT INTO Availabe_Shoes_Instore (Shoe_ID, Store_ID) VALUES (46519283, 25);
INSERT INTO Availabe_Shoes_Instore (Shoe_ID, Store_ID) VALUES (72839465, 31);--ship to 9
INSERT INTO Availabe_Shoes_Instore (Shoe_ID, Store_ID) VALUES (74639281, 11);
INSERT INTO Availabe_Shoes_Instore (Shoe_ID, Store_ID) VALUES (92748513, 13);
INSERT INTO Availabe_Shoes_Instore (Shoe_ID, Store_ID) VALUES (20394857, 20);
INSERT INTO Availabe_Shoes_Instore (Shoe_ID, Store_ID) VALUES (43782915, 12);
INSERT INTO Availabe_Shoes_Instore (Shoe_ID, Store_ID) VALUES (25483169, 19);
INSERT INTO Availabe_Shoes_Instore (Shoe_ID, Store_ID) VALUES (91374652, 17);
INSERT INTO Availabe_Shoes_Instore (Shoe_ID, Store_ID) VALUES (78619432, 14);
INSERT INTO Availabe_Shoes_Instore (Shoe_ID, Store_ID) VALUES (27486319, 41);
INSERT INTO Availabe_Shoes_Instore (Shoe_ID, Store_ID) VALUES (15928364, 45);
INSERT INTO Availabe_Shoes_Instore (Shoe_ID, Store_ID) VALUES (73482951, 46);
INSERT INTO Availabe_Shoes_Instore (Shoe_ID, Store_ID) VALUES (39827456, 22);
INSERT INTO Availabe_Shoes_Instore (Shoe_ID, Store_ID) VALUES (57483926, 22);
INSERT INTO Availabe_Shoes_Instore (Shoe_ID, Store_ID) VALUES (65491823, 50);
INSERT INTO Availabe_Shoes_Instore (Shoe_ID, Store_ID) VALUES (83947125, 54);
INSERT INTO Availabe_Shoes_Instore (Shoe_ID, Store_ID) VALUES (75839641, 53);--ship to 1
INSERT INTO Availabe_Shoes_Instore (Shoe_ID, Store_ID) VALUES (79234618, 33);
INSERT INTO Availabe_Shoes_Instore (Shoe_ID, Store_ID) VALUES (97836421, 40);
INSERT INTO Availabe_Shoes_Instore (Shoe_ID, Store_ID) VALUES (61492837, 7);
INSERT INTO Availabe_Shoes_Instore (Shoe_ID, Store_ID) VALUES (28347619, 3);
INSERT INTO Availabe_Shoes_Instore (Shoe_ID, Store_ID) VALUES (81246537, 8);
INSERT INTO Availabe_Shoes_Instore (Shoe_ID, Store_ID) VALUES (49716283, 11);
INSERT INTO Availabe_Shoes_Instore (Shoe_ID, Store_ID) VALUES (20394857, 35);
INSERT INTO Availabe_Shoes_Instore (Shoe_ID, Store_ID) VALUES (16283745, 59);--ship to 27
INSERT INTO Availabe_Shoes_Instore (Shoe_ID, Store_ID) VALUES (73849521, 6);
INSERT INTO Availabe_Shoes_Instore (Shoe_ID, Store_ID) VALUES (46527381, 29);
INSERT INTO Availabe_Shoes_Instore (Shoe_ID, Store_ID) VALUES (73946182, 11);
INSERT INTO Availabe_Shoes_Instore (Shoe_ID, Store_ID) VALUES (82736491, 1);
INSERT INTO Availabe_Shoes_Instore (Shoe_ID, Store_ID) VALUES (91638274, 28);
INSERT INTO Availabe_Shoes_Instore (Shoe_ID, Store_ID) VALUES (53741928, 57);
INSERT INTO Availabe_Shoes_Instore (Shoe_ID, Store_ID) VALUES (29384716,9);
INSERT INTO Availabe_Shoes_Instore (Shoe_ID, Store_ID) VALUES (73519482, 10);
INSERT INTO Availabe_Shoes_Instore (Shoe_ID, Store_ID) VALUES (62837495, 38);
INSERT INTO Availabe_Shoes_Instore (Shoe_ID, Store_ID) VALUES (49182736, 60);
INSERT INTO Availabe_Shoes_Instore (Shoe_ID, Store_ID) VALUES (17384629, 58);
INSERT INTO Availabe_Shoes_Instore (Shoe_ID, Store_ID) VALUES (84571936, 46);--ship to 8
INSERT INTO Availabe_Shoes_Instore (Shoe_ID, Store_ID) VALUES (63917485, 10);
INSERT INTO Availabe_Shoes_Instore (Shoe_ID, Store_ID) VALUES (29486713, 38);
INSERT INTO Availabe_Shoes_Instore (Shoe_ID, Store_ID) VALUES (83746591, 49);
INSERT INTO Availabe_Shoes_Instore (Shoe_ID, Store_ID) VALUES (51827436, 48);--ship to 3
INSERT INTO Availabe_Shoes_Instore (Shoe_ID, Store_ID) VALUES (67341928, 30);
INSERT INTO Availabe_Shoes_Instore (Shoe_ID, Store_ID) VALUES (92638471, 10);
INSERT INTO Availabe_Shoes_Instore (Shoe_ID, Store_ID) VALUES (27461839, 24);
INSERT INTO Availabe_Shoes_Instore (Shoe_ID, Store_ID) VALUES (94726183, 22);
INSERT INTO Availabe_Shoes_Instore (Shoe_ID, Store_ID) VALUES (71829364, 22);
INSERT INTO Availabe_Shoes_Instore (Shoe_ID, Store_ID) VALUES (36471928, 53);
INSERT INTO Availabe_Shoes_Instore (Shoe_ID, Store_ID) VALUES (57382916, 55);
INSERT INTO Availabe_Shoes_Instore (Shoe_ID, Store_ID) VALUES (12736491, 56);
INSERT INTO Availabe_Shoes_Instore (Shoe_ID, Store_ID) VALUES (11638274, 59);
INSERT INTO Availabe_Shoes_Instore (Shoe_ID, Store_ID) VALUES (13741928, 25);
INSERT INTO Availabe_Shoes_Instore (Shoe_ID, Store_ID) VALUES (19384716, 29);
INSERT INTO Availabe_Shoes_Instore (Shoe_ID, Store_ID) VALUES (13519482, 42);--ship to 10
INSERT INTO Availabe_Shoes_Instore (Shoe_ID, Store_ID) VALUES (12837495, 24);
INSERT INTO Availabe_Shoes_Instore (Shoe_ID, Store_ID) VALUES (19182736, 6);
INSERT INTO Availabe_Shoes_Instore (Shoe_ID, Store_ID) VALUES (27384629, 3);
INSERT INTO Availabe_Shoes_Instore (Shoe_ID, Store_ID) VALUES (14571936, 8);
INSERT INTO Availabe_Shoes_Instore (Shoe_ID, Store_ID) VALUES (13917485, 13);
INSERT INTO Availabe_Shoes_Instore (Shoe_ID, Store_ID) VALUES (09486713, 16);
INSERT INTO Availabe_Shoes_Instore (Shoe_ID, Store_ID) VALUES (03746591, 16);
INSERT INTO Availabe_Shoes_Instore (Shoe_ID, Store_ID) VALUES (01827436, 4);
INSERT INTO Availabe_Shoes_Instore (Shoe_ID, Store_ID) VALUES (07341928, 17);
INSERT INTO Availabe_Shoes_Instore (Shoe_ID, Store_ID) VALUES (02638471, 18);
INSERT INTO Availabe_Shoes_Instore (Shoe_ID, Store_ID) VALUES (07461839, 19);
INSERT INTO Availabe_Shoes_Instore (Shoe_ID, Store_ID) VALUES (04726183, 28);
INSERT INTO Availabe_Shoes_Instore (Shoe_ID, Store_ID) VALUES (01829364, 4);
INSERT INTO Availabe_Shoes_Instore (Shoe_ID, Store_ID) VALUES (06471928, 51);--ship to 12
INSERT INTO Availabe_Shoes_Instore (Shoe_ID, Store_ID) VALUES (07382916, 33);
INSERT INTO Availabe_Shoes_Instore (Shoe_ID, Store_ID) VALUES (92936471, 22);
INSERT INTO Availabe_Shoes_Instore (Shoe_ID, Store_ID) VALUES (01638275, 7);
INSERT INTO Availabe_Shoes_Instore (Shoe_ID, Store_ID) VALUES (93741929, 3);
INSERT INTO Availabe_Shoes_Instore (Shoe_ID, Store_ID) VALUES (99384717, 9);
INSERT INTO Availabe_Shoes_Instore (Shoe_ID, Store_ID) VALUES (93519483, 55);
INSERT INTO Availabe_Shoes_Instore (Shoe_ID, Store_ID) VALUES (92837496, 54);
INSERT INTO Availabe_Shoes_Instore (Shoe_ID, Store_ID) VALUES (99182737, 2);
INSERT INTO Availabe_Shoes_Instore (Shoe_ID, Store_ID) VALUES (97384630, 26);
INSERT INTO Availabe_Shoes_Instore (Shoe_ID, Store_ID) VALUES (94571937, 8);

--Manufacture fill
INSERT INTO Manufacture (Manufacturer_ID, Manufacturer_Name, Location_country, Number_of_workers) VALUES (1, 'Adidas_Vietnam', 191, 5420);
INSERT INTO Manufacture (Manufacturer_ID, Manufacturer_Name, Location_country, Number_of_workers) VALUES (2, 'Adidas_Germany', 64, 3210);
INSERT INTO Manufacture (Manufacturer_ID, Manufacturer_Name, Location_country, Number_of_workers) VALUES (3, 'Adidas_China', 36, 9025);
INSERT INTO Manufacture (Manufacturer_ID, Manufacturer_Name, Location_country, Number_of_workers) VALUES (4, 'Adidas_Indonesia', 77, 7710);
INSERT INTO Manufacture (Manufacturer_ID, Manufacturer_Name, Location_country, Number_of_workers) VALUES (5, 'Adidas_USA', 185, 2420);
INSERT INTO Manufacture (Manufacturer_ID, Manufacturer_Name, Location_country, Number_of_workers) VALUES (6, 'Adidas_India', 76, 4895);
INSERT INTO Manufacture (Manufacturer_ID, Manufacturer_Name, Location_country, Number_of_workers) VALUES (7, 'Adidas_Italy', 82, 2005);
INSERT INTO Manufacture (Manufacturer_ID, Manufacturer_Name, Location_country, Number_of_workers) VALUES (8, 'Adidas_UK', 184, 3012);
INSERT INTO Manufacture (Manufacturer_ID, Manufacturer_Name, Location_country, Number_of_workers) VALUES (9, 'Adidas_France', 60, 1170);
INSERT INTO Manufacture (Manufacturer_ID, Manufacturer_Name, Location_country, Number_of_workers) VALUES (10, 'Nike_Indonesia', 77, 1170);
INSERT INTO Manufacture (Manufacturer_ID, Manufacturer_Name, Location_country, Number_of_workers) VALUES (11, 'Nike_China', 36, 10100);
INSERT INTO Manufacture (Manufacturer_ID, Manufacturer_Name, Location_country, Number_of_workers) VALUES (12, 'Nike_Taiwan', 169, 7771);
INSERT INTO Manufacture (Manufacturer_ID, Manufacturer_Name, Location_country, Number_of_workers) VALUES (13, 'Nike_Pakistan', 130, 6820);
INSERT INTO Manufacture (Manufacturer_ID, Manufacturer_Name, Location_country, Number_of_workers) VALUES (14, 'Nike_Philippines', 136, 7895);
INSERT INTO Manufacture (Manufacturer_ID, Manufacturer_Name, Location_country, Number_of_workers) VALUES (15, 'Nike_Malaysia', 102, 8540);

--Order_Shipment fill
INSERT INTO Order_Shipment (Order_Number, Store_from, Store_to) VALUES (10004, 2, 31);
INSERT INTO Order_Shipment (Order_Number, Store_from, Store_to) VALUES (10008, 22, 58);
INSERT INTO Order_Shipment (Order_Number, Store_from, Store_to) VALUES (10014, 31, 9);
INSERT INTO Order_Shipment (Order_Number, Store_from, Store_to) VALUES (10029, 53, 1);
INSERT INTO Order_Shipment (Order_Number, Store_from, Store_to) VALUES (10037, 59, 27);
INSERT INTO Order_Shipment (Order_Number, Store_from, Store_to) VALUES (10049, 46, 8);
INSERT INTO Order_Shipment (Order_Number, Store_from, Store_to) VALUES (10053, 48, 3);
INSERT INTO Order_Shipment (Order_Number, Store_from, Store_to) VALUES (10065, 42, 10);
INSERT INTO Order_Shipment (Order_Number, Store_from, Store_to) VALUES (10079, 51, 12);

--Availabe_Shoes_Instore fill
INSERT INTO Availabe_Shoes_Instore (Shoe_ID, Store_ID) VALUES (23567421, 1);
INSERT INTO Availabe_Shoes_Instore (Shoe_ID, Store_ID) VALUES (54761928, 27);
INSERT INTO Availabe_Shoes_Instore (Shoe_ID, Store_ID) VALUES (39287461, 25);
INSERT INTO Availabe_Shoes_Instore (Shoe_ID, Store_ID) VALUES (92837465, 2);--ship to 31
INSERT INTO Availabe_Shoes_Instore (Shoe_ID, Store_ID) VALUES (37629184, 9);
INSERT INTO Availabe_Shoes_Instore (Shoe_ID, Store_ID) VALUES (51629387, 5);
INSERT INTO Availabe_Shoes_Instore (Shoe_ID, Store_ID) VALUES (73649582, 22);
INSERT INTO Availabe_Shoes_Instore (Shoe_ID, Store_ID) VALUES (82917465, 22);--ship to 58
INSERT INTO Availabe_Shoes_Instore (Shoe_ID, Store_ID) VALUES (19482756, 10);
INSERT INTO Availabe_Shoes_Instore (Shoe_ID, Store_ID) VALUES (61593742, 8);
INSERT INTO Availabe_Shoes_Instore (Shoe_ID, Store_ID) VALUES (41739286, 23);
INSERT INTO Availabe_Shoes_Instore (Shoe_ID, Store_ID) VALUES (71938462, 60);
INSERT INTO Availabe_Shoes_Instore (Shoe_ID, Store_ID) VALUES (46519283, 25);
INSERT INTO Availabe_Shoes_Instore (Shoe_ID, Store_ID) VALUES (72839465, 31);--ship to 9
INSERT INTO Availabe_Shoes_Instore (Shoe_ID, Store_ID) VALUES (74639281, 11);
INSERT INTO Availabe_Shoes_Instore (Shoe_ID, Store_ID) VALUES (92748513, 13);
INSERT INTO Availabe_Shoes_Instore (Shoe_ID, Store_ID) VALUES (20394857, 20);
INSERT INTO Availabe_Shoes_Instore (Shoe_ID, Store_ID) VALUES (43782915, 12);
INSERT INTO Availabe_Shoes_Instore (Shoe_ID, Store_ID) VALUES (25483169, 19);
INSERT INTO Availabe_Shoes_Instore (Shoe_ID, Store_ID) VALUES (91374652, 17);
INSERT INTO Availabe_Shoes_Instore (Shoe_ID, Store_ID) VALUES (78619432, 14);
INSERT INTO Availabe_Shoes_Instore (Shoe_ID, Store_ID) VALUES (27486319, 41);
INSERT INTO Availabe_Shoes_Instore (Shoe_ID, Store_ID) VALUES (15928364, 45);
INSERT INTO Availabe_Shoes_Instore (Shoe_ID, Store_ID) VALUES (73482951, 46);
INSERT INTO Availabe_Shoes_Instore (Shoe_ID, Store_ID) VALUES (39827456, 22);
INSERT INTO Availabe_Shoes_Instore (Shoe_ID, Store_ID) VALUES (57483926, 22);
INSERT INTO Availabe_Shoes_Instore (Shoe_ID, Store_ID) VALUES (65491823, 50);
INSERT INTO Availabe_Shoes_Instore (Shoe_ID, Store_ID) VALUES (83947125, 54);
INSERT INTO Availabe_Shoes_Instore (Shoe_ID, Store_ID) VALUES (75839641, 53);--ship to 1
INSERT INTO Availabe_Shoes_Instore (Shoe_ID, Store_ID) VALUES (79234618, 33);
INSERT INTO Availabe_Shoes_Instore (Shoe_ID, Store_ID) VALUES (97836421, 40);
INSERT INTO Availabe_Shoes_Instore (Shoe_ID, Store_ID) VALUES (61492837, 7);
INSERT INTO Availabe_Shoes_Instore (Shoe_ID, Store_ID) VALUES (28347619, 3);
INSERT INTO Availabe_Shoes_Instore (Shoe_ID, Store_ID) VALUES (81246537, 8);
INSERT INTO Availabe_Shoes_Instore (Shoe_ID, Store_ID) VALUES (49716283, 11);
INSERT INTO Availabe_Shoes_Instore (Shoe_ID, Store_ID) VALUES (20394857, 35);
INSERT INTO Availabe_Shoes_Instore (Shoe_ID, Store_ID) VALUES (16283745, 59);--ship to 27
INSERT INTO Availabe_Shoes_Instore (Shoe_ID, Store_ID) VALUES (73849521, 6);
INSERT INTO Availabe_Shoes_Instore (Shoe_ID, Store_ID) VALUES (46527381, 29);
INSERT INTO Availabe_Shoes_Instore (Shoe_ID, Store_ID) VALUES (73946182, 11);
INSERT INTO Availabe_Shoes_Instore (Shoe_ID, Store_ID) VALUES (82736491, 1);
INSERT INTO Availabe_Shoes_Instore (Shoe_ID, Store_ID) VALUES (91638274, 28);
INSERT INTO Availabe_Shoes_Instore (Shoe_ID, Store_ID) VALUES (53741928, 57);
INSERT INTO Availabe_Shoes_Instore (Shoe_ID, Store_ID) VALUES (29384716,9);
INSERT INTO Availabe_Shoes_Instore (Shoe_ID, Store_ID) VALUES (73519482, 10);
INSERT INTO Availabe_Shoes_Instore (Shoe_ID, Store_ID) VALUES (62837495, 38);
INSERT INTO Availabe_Shoes_Instore (Shoe_ID, Store_ID) VALUES (49182736, 60);
INSERT INTO Availabe_Shoes_Instore (Shoe_ID, Store_ID) VALUES (17384629, 58);
INSERT INTO Availabe_Shoes_Instore (Shoe_ID, Store_ID) VALUES (84571936, 46);--ship to 8
INSERT INTO Availabe_Shoes_Instore (Shoe_ID, Store_ID) VALUES (63917485, 10);
INSERT INTO Availabe_Shoes_Instore (Shoe_ID, Store_ID) VALUES (29486713, 38);
INSERT INTO Availabe_Shoes_Instore (Shoe_ID, Store_ID) VALUES (83746591, 49);
INSERT INTO Availabe_Shoes_Instore (Shoe_ID, Store_ID) VALUES (51827436, 48);--ship to 3
INSERT INTO Availabe_Shoes_Instore (Shoe_ID, Store_ID) VALUES (67341928, 30);
INSERT INTO Availabe_Shoes_Instore (Shoe_ID, Store_ID) VALUES (92638471, 10);
INSERT INTO Availabe_Shoes_Instore (Shoe_ID, Store_ID) VALUES (27461839, 24);
INSERT INTO Availabe_Shoes_Instore (Shoe_ID, Store_ID) VALUES (94726183, 22);
INSERT INTO Availabe_Shoes_Instore (Shoe_ID, Store_ID) VALUES (71829364, 22);
INSERT INTO Availabe_Shoes_Instore (Shoe_ID, Store_ID) VALUES (36471928, 53);
INSERT INTO Availabe_Shoes_Instore (Shoe_ID, Store_ID) VALUES (57382916, 55);
INSERT INTO Availabe_Shoes_Instore (Shoe_ID, Store_ID) VALUES (12736491, 56);
INSERT INTO Availabe_Shoes_Instore (Shoe_ID, Store_ID) VALUES (11638274, 59);
INSERT INTO Availabe_Shoes_Instore (Shoe_ID, Store_ID) VALUES (13741928, 25);
INSERT INTO Availabe_Shoes_Instore (Shoe_ID, Store_ID) VALUES (19384716, 29);
INSERT INTO Availabe_Shoes_Instore (Shoe_ID, Store_ID) VALUES (13519482, 42);--ship to 10
INSERT INTO Availabe_Shoes_Instore (Shoe_ID, Store_ID) VALUES (12837495, 24);
INSERT INTO Availabe_Shoes_Instore (Shoe_ID, Store_ID) VALUES (19182736, 6);
INSERT INTO Availabe_Shoes_Instore (Shoe_ID, Store_ID) VALUES (27384629, 3);
INSERT INTO Availabe_Shoes_Instore (Shoe_ID, Store_ID) VALUES (14571936, 8);
INSERT INTO Availabe_Shoes_Instore (Shoe_ID, Store_ID) VALUES (13917485, 13);
INSERT INTO Availabe_Shoes_Instore (Shoe_ID, Store_ID) VALUES (09486713, 16);
INSERT INTO Availabe_Shoes_Instore (Shoe_ID, Store_ID) VALUES (03746591, 16);
INSERT INTO Availabe_Shoes_Instore (Shoe_ID, Store_ID) VALUES (01827436, 4);
INSERT INTO Availabe_Shoes_Instore (Shoe_ID, Store_ID) VALUES (07341928, 17);
INSERT INTO Availabe_Shoes_Instore (Shoe_ID, Store_ID) VALUES (02638471, 18);
INSERT INTO Availabe_Shoes_Instore (Shoe_ID, Store_ID) VALUES (07461839, 19);
INSERT INTO Availabe_Shoes_Instore (Shoe_ID, Store_ID) VALUES (04726183, 28);
INSERT INTO Availabe_Shoes_Instore (Shoe_ID, Store_ID) VALUES (01829364, 4);
INSERT INTO Availabe_Shoes_Instore (Shoe_ID, Store_ID) VALUES (06471928, 51);--ship to 12
INSERT INTO Availabe_Shoes_Instore (Shoe_ID, Store_ID) VALUES (07382916, 33);
INSERT INTO Availabe_Shoes_Instore (Shoe_ID, Store_ID) VALUES (92936471, 22);
INSERT INTO Availabe_Shoes_Instore (Shoe_ID, Store_ID) VALUES (01638275, 7);
INSERT INTO Availabe_Shoes_Instore (Shoe_ID, Store_ID) VALUES (93741929, 3);
INSERT INTO Availabe_Shoes_Instore (Shoe_ID, Store_ID) VALUES (99384717, 9);
INSERT INTO Availabe_Shoes_Instore (Shoe_ID, Store_ID) VALUES (93519483, 55);
INSERT INTO Availabe_Shoes_Instore (Shoe_ID, Store_ID) VALUES (92837496, 54);
INSERT INTO Availabe_Shoes_Instore (Shoe_ID, Store_ID) VALUES (99182737, 2);
INSERT INTO Availabe_Shoes_Instore (Shoe_ID, Store_ID) VALUES (97384630, 26);
INSERT INTO Availabe_Shoes_Instore (Shoe_ID, Store_ID) VALUES (94571937, 8);

--Continent fill
INSERT INTO Continent (Continent_ID, Continent_name) VALUES (1, 'Africa');
INSERT INTO Continent (Continent_ID, Continent_name) VALUES (2, 'Antarctica');
INSERT INTO Continent (Continent_ID, Continent_name) VALUES (3, 'Asia');
INSERT INTO Continent (Continent_ID, Continent_name) VALUES (4, 'Europe');
INSERT INTO Continent (Continent_ID, Continent_name) VALUES (5, 'North America');
INSERT INTO Continent (Continent_ID, Continent_name) VALUES (6, 'Australia');
INSERT INTO Continent (Continent_ID, Continent_name) VALUES (7, 'South America');

--Country fill
INSERT INTO Country (Country_ID, Country_name, Capital_city, Continent_ID) VALUES (1, 'Afghanistan', 'Kabul', 3);
INSERT INTO Country (Country_ID, Country_name, Capital_city, Continent_ID) VALUES(2, 'Albania', 'Tirana', 4);
INSERT INTO Country (Country_ID, Country_name, Capital_city, Continent_ID) VALUES(3, 'Algeria', 'Algiers', 1);
INSERT INTO Country (Country_ID, Country_name, Capital_city, Continent_ID) VALUES(4, 'Andorra', 'Andorra la Vella', 4);
INSERT INTO Country (Country_ID, Country_name, Capital_city, Continent_ID) VALUES(5, 'Angola', 'Luanda', 1);
INSERT INTO Country (Country_ID, Country_name, Capital_city, Continent_ID) VALUES(6, 'Antigua and Barbuda', 'Saint Johns', 5);
INSERT INTO Country (Country_ID, Country_name, Capital_city, Continent_ID) VALUES(7, 'Argentina', 'Buenos Aires', 7);
INSERT INTO Country (Country_ID, Country_name, Capital_city, Continent_ID) VALUES(8, 'Armenia', 'Yerevan', 3);
INSERT INTO Country (Country_ID, Country_name, Capital_city, Continent_ID) VALUES(9, 'Australia', 'Canberra', 6);
INSERT INTO Country (Country_ID, Country_name, Capital_city, Continent_ID) VALUES(10, 'Austria', 'Vienna', 4);
INSERT INTO Country (Country_ID, Country_name, Capital_city, Continent_ID) VALUES(11, 'Azerbaijan', 'Baku', 3);
INSERT INTO Country (Country_ID, Country_name, Capital_city, Continent_ID) VALUES(12, 'Bahamas', 'Nassau', 5);
INSERT INTO Country (Country_ID, Country_name, Capital_city, Continent_ID) VALUES(13, 'Bahrain', 'Manama', 3);
INSERT INTO Country (Country_ID, Country_name, Capital_city, Continent_ID) VALUES(14, 'Bangladesh', 'Dhaka', 3);
INSERT INTO Country (Country_ID, Country_name, Capital_city, Continent_ID) VALUES(15, 'Barbados', 'Bridgetown', 5);
INSERT INTO Country (Country_ID, Country_name, Capital_city, Continent_ID) VALUES(16, 'Belarus', 'Minsk', 4);
INSERT INTO Country (Country_ID, Country_name, Capital_city, Continent_ID) VALUES(17, 'Belgium', 'Brussels', 4);
INSERT INTO Country (Country_ID, Country_name, Capital_city, Continent_ID) VALUES(18, 'Belize', 'Belmopan', 5);
INSERT INTO Country (Country_ID, Country_name, Capital_city, Continent_ID) VALUES(19, 'Benin', 'Porto-Novo', 1);
INSERT INTO Country (Country_ID, Country_name, Capital_city, Continent_ID) VALUES(20, 'Bhutan', 'Thimphu', 3);
INSERT INTO Country (Country_ID, Country_name, Capital_city, Continent_ID) VALUES (21, 'Bolivia', 'Sucre', 7);
INSERT INTO Country (Country_ID, Country_name, Capital_city, Continent_ID) VALUES (22, 'Bosnia and Herzegovina', 'Sarajevo', 4);
INSERT INTO Country (Country_ID, Country_name, Capital_city, Continent_ID) VALUES (23, 'Botswana', 'Gaborone', 1);
INSERT INTO Country (Country_ID, Country_name, Capital_city, Continent_ID) VALUES (24, 'Brazil', 'Brasília', 7);
INSERT INTO Country (Country_ID, Country_name, Capital_city, Continent_ID) VALUES (25, 'Brunei', 'Bandar Seri Begawan', 3);
INSERT INTO Country (Country_ID, Country_name, Capital_city, Continent_ID) VALUES (26, 'Bulgaria', 'Sofia', 4);
INSERT INTO Country (Country_ID, Country_name, Capital_city, Continent_ID) VALUES (27, 'Burkina Faso', 'Ouagadougou', 1);
INSERT INTO Country (Country_ID, Country_name, Capital_city, Continent_ID) VALUES (28, 'Burundi', 'Gitega', 1);
INSERT INTO Country (Country_ID, Country_name, Capital_city, Continent_ID) VALUES (29, 'Cabo Verde', 'Praia', 1);
INSERT INTO Country (Country_ID, Country_name, Capital_city, Continent_ID) VALUES (30, 'Cambodia', 'Phnom Penh', 3);
INSERT INTO Country (Country_ID, Country_name, Capital_city, Continent_ID) VALUES (31, 'Cameroon', 'Yaoundé', 1);
INSERT INTO Country (Country_ID, Country_name, Capital_city, Continent_ID) VALUES (32, 'Canada', 'Ottawa', 5);
INSERT INTO Country (Country_ID, Country_name, Capital_city, Continent_ID) VALUES (33, 'Central African Republic', 'Bangui', 1);
INSERT INTO Country (Country_ID, Country_name, Capital_city, Continent_ID) VALUES (34, 'Chad', 'NDjamena', 1);
INSERT INTO Country (Country_ID, Country_name, Capital_city, Continent_ID) VALUES (35, 'Chile', 'Santiago', 7);
INSERT INTO Country (Country_ID, Country_name, Capital_city, Continent_ID) VALUES (36, 'China', 'Beijing', 3);
INSERT INTO Country (Country_ID, Country_name, Capital_city, Continent_ID) VALUES (37, 'Colombia', 'Bogotá', 7);
INSERT INTO Country (Country_ID, Country_name, Capital_city, Continent_ID) VALUES (38, 'Comoros', 'Moroni', 1);
INSERT INTO Country (Country_ID, Country_name, Capital_city, Continent_ID) VALUES (39, 'Congo, Democratic Republic of the', 'Kinshasa', 1);
INSERT INTO Country (Country_ID, Country_name, Capital_city, Continent_ID) VALUES (40, 'Congo, Republic of the', 'Brazzaville', 1);
INSERT INTO Country (Country_ID, Country_name, Capital_city, Continent_ID) VALUES (41, 'Costa Rica', 'San José', 5);
INSERT INTO Country (Country_ID, Country_name, Capital_city, Continent_ID) VALUES (42, 'Croatia', 'Zagreb', 4);
INSERT INTO Country (Country_ID, Country_name, Capital_city, Continent_ID) VALUES (43, 'Cuba', 'Havana', 5);
INSERT INTO Country (Country_ID, Country_name, Capital_city, Continent_ID) VALUES (44, 'Cyprus', 'Nicosia', 3);
INSERT INTO Country (Country_ID, Country_name, Capital_city, Continent_ID) VALUES (45, 'Czech Republic', 'Prague', 4);
INSERT INTO Country (Country_ID, Country_name, Capital_city, Continent_ID) VALUES (46, 'Denmark', 'Copenhagen', 4);
INSERT INTO Country (Country_ID, Country_name, Capital_city, Continent_ID) VALUES (47, 'Djibouti', 'Djibouti', 1);
INSERT INTO Country (Country_ID, Country_name, Capital_city, Continent_ID) VALUES (48, 'Dominica', 'Roseau', 5);
INSERT INTO Country (Country_ID, Country_name, Capital_city, Continent_ID) VALUES (49, 'Dominican Republic', 'Santo Domingo', 5);
INSERT INTO Country (Country_ID, Country_name, Capital_city, Continent_ID) VALUES (50, 'Ecuador', 'Quito', 7);
INSERT INTO Country (Country_ID, Country_name, Capital_city, Continent_ID) VALUES (51, 'Egypt', 'Cairo', 1);
INSERT INTO Country (Country_ID, Country_name, Capital_city, Continent_ID) VALUES (52, 'El Salvador', 'San Salvador', 5);
INSERT INTO Country (Country_ID, Country_name, Capital_city, Continent_ID) VALUES (53, 'Equatorial Guinea', 'Malabo', 1);
INSERT INTO Country (Country_ID, Country_name, Capital_city, Continent_ID) VALUES (54, 'Eritrea', 'Asmara', 1);
INSERT INTO Country (Country_ID, Country_name, Capital_city, Continent_ID) VALUES (55, 'Estonia', 'Tallinn', 4);
INSERT INTO Country (Country_ID, Country_name, Capital_city, Continent_ID) VALUES (56, 'Eswatini', 'Mbabane', 1);
INSERT INTO Country (Country_ID, Country_name, Capital_city, Continent_ID) VALUES (57, 'Ethiopia', 'Addis Ababa', 1);
INSERT INTO Country (Country_ID, Country_name, Capital_city, Continent_ID) VALUES (58, 'Fiji', 'Suva', 6);
INSERT INTO Country (Country_ID, Country_name, Capital_city, Continent_ID) VALUES (59, 'Finland', 'Helsinki', 4);
INSERT INTO Country (Country_ID, Country_name, Capital_city, Continent_ID) VALUES (60, 'France', 'Paris', 4);
INSERT INTO Country (Country_ID, Country_name, Capital_city, Continent_ID) VALUES (61, 'Gabon', 'Libreville', 1);
INSERT INTO Country (Country_ID, Country_name, Capital_city, Continent_ID) VALUES (62, 'Gambia', 'Banjul', 1);
INSERT INTO Country (Country_ID, Country_name, Capital_city, Continent_ID) VALUES (63, 'Georgia', 'Tbilisi', 3);
INSERT INTO Country (Country_ID, Country_name, Capital_city, Continent_ID) VALUES (64, 'Germany', 'Berlin', 4);
INSERT INTO Country (Country_ID, Country_name, Capital_city, Continent_ID) VALUES (65, 'Ghana', 'Accra', 1);
INSERT INTO Country (Country_ID, Country_name, Capital_city, Continent_ID) VALUES (66, 'Greece', 'Athens', 4);
INSERT INTO Country (Country_ID, Country_name, Capital_city, Continent_ID) VALUES (67, 'Grenada', 'Saint Georges', 5);
INSERT INTO Country (Country_ID, Country_name, Capital_city, Continent_ID) VALUES (68, 'Guatemala', 'Guatemala City', 5);
INSERT INTO Country (Country_ID, Country_name, Capital_city, Continent_ID) VALUES (69, 'Guinea', 'Conakry', 1);
INSERT INTO Country (Country_ID, Country_name, Capital_city, Continent_ID) VALUES (70, 'Guinea-Bissau', 'Bissau', 1);
INSERT INTO Country (Country_ID, Country_name, Capital_city, Continent_ID) VALUES (71, 'Guyana', 'Georgetown', 7);
INSERT INTO Country (Country_ID, Country_name, Capital_city, Continent_ID) VALUES (72, 'Haiti', 'Port-au-Prince', 5);
INSERT INTO Country (Country_ID, Country_name, Capital_city, Continent_ID) VALUES (73, 'Honduras', 'Tegucigalpa', 5);
INSERT INTO Country (Country_ID, Country_name, Capital_city, Continent_ID) VALUES (74, 'Hungary', 'Budapest', 4);
INSERT INTO Country (Country_ID, Country_name, Capital_city, Continent_ID) VALUES (75, 'Iceland', 'Reykjavik', 4);
INSERT INTO Country (Country_ID, Country_name, Capital_city, Continent_ID) VALUES (76, 'India', 'New Delhi', 3);
INSERT INTO Country (Country_ID, Country_name, Capital_city, Continent_ID) VALUES (77, 'Indonesia', 'Jakarta', 3);
INSERT INTO Country (Country_ID, Country_name, Capital_city, Continent_ID) VALUES (78, 'Iran', 'Tehran', 3);
INSERT INTO Country (Country_ID, Country_name, Capital_city, Continent_ID) VALUES (79, 'Iraq', 'Baghdad', 3);
INSERT INTO Country (Country_ID, Country_name, Capital_city, Continent_ID) VALUES (80, 'Ireland', 'Dublin', 4);
INSERT INTO Country (Country_ID, Country_name, Capital_city, Continent_ID) VALUES (81, 'Israel', 'Jerusalem', 3);
INSERT INTO Country (Country_ID, Country_name, Capital_city, Continent_ID) VALUES (82, 'Italy', 'Rome', 4);
INSERT INTO Country (Country_ID, Country_name, Capital_city, Continent_ID) VALUES (83, 'Jamaica', 'Kingston', 5);
INSERT INTO Country (Country_ID, Country_name, Capital_city, Continent_ID) VALUES (84, 'Japan', 'Tokyo', 3);
INSERT INTO Country (Country_ID, Country_name, Capital_city, Continent_ID) VALUES (85, 'Jordan', 'Amman', 3);
INSERT INTO Country (Country_ID, Country_name, Capital_city, Continent_ID) VALUES (86, 'Kazakhstan', 'Nur-Sultan', 3);
INSERT INTO Country (Country_ID, Country_name, Capital_city, Continent_ID) VALUES (87, 'Kenya', 'Nairobi', 1);
INSERT INTO Country (Country_ID, Country_name, Capital_city, Continent_ID) VALUES (88, 'Kiribati', 'South Tarawa', 6);
INSERT INTO Country (Country_ID, Country_name, Capital_city, Continent_ID) VALUES (89, 'Kuwait', 'Kuwait City', 3);
INSERT INTO Country (Country_ID, Country_name, Capital_city, Continent_ID) VALUES (90, 'Kyrgyzstan', 'Bishkek', 3);
INSERT INTO Country (Country_ID, Country_name, Capital_city, Continent_ID) VALUES (91, 'Laos', 'Vientiane', 3);
INSERT INTO Country (Country_ID, Country_name, Capital_city, Continent_ID) VALUES (92, 'Latvia', 'Riga', 4);
INSERT INTO Country (Country_ID, Country_name, Capital_city, Continent_ID) VALUES (93, 'Lebanon', 'Beirut', 3);
INSERT INTO Country (Country_ID, Country_name, Capital_city, Continent_ID) VALUES (94, 'Lesotho', 'Maseru', 1);
INSERT INTO Country (Country_ID, Country_name, Capital_city, Continent_ID) VALUES (95, 'Liberia', 'Monrovia', 1);
INSERT INTO Country (Country_ID, Country_name, Capital_city, Continent_ID) VALUES (96, 'Libya', 'Tripoli', 1);
INSERT INTO Country (Country_ID, Country_name, Capital_city, Continent_ID) VALUES (97, 'Liechtenstein', 'Vaduz', 4);
INSERT INTO Country (Country_ID, Country_name, Capital_city, Continent_ID) VALUES (98, 'Lithuania', 'Vilnius', 4);
INSERT INTO Country (Country_ID, Country_name, Capital_city, Continent_ID) VALUES (99, 'Luxembourg', 'Luxembourg', 4);
INSERT INTO Country (Country_ID, Country_name, Capital_city, Continent_ID) VALUES (100, 'Madagascar', 'Antananarivo', 1);
INSERT INTO Country (Country_ID, Country_name, Capital_city, Continent_ID) VALUES (101, 'Malawi', 'Lilongwe', 1);
INSERT INTO Country (Country_ID, Country_name, Capital_city, Continent_ID) VALUES (102, 'Malaysia', 'Kuala Lumpur', 3);
INSERT INTO Country (Country_ID, Country_name, Capital_city, Continent_ID) VALUES (103, 'Maldives', 'Malé', 3);
INSERT INTO Country (Country_ID, Country_name, Capital_city, Continent_ID) VALUES (104, 'Mali', 'Bamako', 1);
INSERT INTO Country (Country_ID, Country_name, Capital_city, Continent_ID) VALUES (105, 'Malta', 'Valletta', 4);
INSERT INTO Country (Country_ID, Country_name, Capital_city, Continent_ID) VALUES (106, 'Marshall Islands', 'Majuro', 6);
INSERT INTO Country (Country_ID, Country_name, Capital_city, Continent_ID) VALUES (107, 'Mauritania', 'Nouakchott', 1);
INSERT INTO Country (Country_ID, Country_name, Capital_city, Continent_ID) VALUES (108, 'Mauritius', 'Port Louis', 1);
INSERT INTO Country (Country_ID, Country_name, Capital_city, Continent_ID) VALUES (109, 'Mexico', 'Mexico City', 5);
INSERT INTO Country (Country_ID, Country_name, Capital_city, Continent_ID) VALUES (110, 'Micronesia', 'Palikir', 6);
INSERT INTO Country (Country_ID, Country_name, Capital_city, Continent_ID) VALUES (111, 'Moldova', 'Chi?inãu', 4);
INSERT INTO Country (Country_ID, Country_name, Capital_city, Continent_ID) VALUES (112, 'Monaco', 'Monaco', 4);
INSERT INTO Country (Country_ID, Country_name, Capital_city, Continent_ID) VALUES (113, 'Mongolia', 'Ulaanbaatar', 3);
INSERT INTO Country (Country_ID, Country_name, Capital_city, Continent_ID) VALUES (114, 'Montenegro', 'Podgorica', 4);
INSERT INTO Country (Country_ID, Country_name, Capital_city, Continent_ID) VALUES (115, 'Morocco', 'Rabat', 1);
INSERT INTO Country (Country_ID, Country_name, Capital_city, Continent_ID) VALUES (116, 'Mozambique', 'Maputo', 1);
INSERT INTO Country (Country_ID, Country_name, Capital_city, Continent_ID) VALUES (117, 'Myanmar (Burma)', 'Naypyidaw', 3);
INSERT INTO Country (Country_ID, Country_name, Capital_city, Continent_ID) VALUES (118, 'Namibia', 'Windhoek', 1);
INSERT INTO Country (Country_ID, Country_name, Capital_city, Continent_ID) VALUES (119, 'Nauru', 'Yaren', 6);
INSERT INTO Country (Country_ID, Country_name, Capital_city, Continent_ID) VALUES (120, 'Nepal', 'Kathmandu', 3);
INSERT INTO Country (Country_ID, Country_name, Capital_city, Continent_ID) VALUES (121, 'Netherlands', 'Amsterdam', 4);
INSERT INTO Country (Country_ID, Country_name, Capital_city, Continent_ID) VALUES (122, 'New Zealand', 'Wellington', 6);
INSERT INTO Country (Country_ID, Country_name, Capital_city, Continent_ID) VALUES (123, 'Nicaragua', 'Managua', 5);
INSERT INTO Country (Country_ID, Country_name, Capital_city, Continent_ID) VALUES (124, 'Niger', 'Niamey', 1);
INSERT INTO Country (Country_ID, Country_name, Capital_city, Continent_ID) VALUES (125, 'Nigeria', 'Abuja', 1);
INSERT INTO Country (Country_ID, Country_name, Capital_city, Continent_ID) VALUES (126, 'North Korea', 'Pyongyang', 3);
INSERT INTO Country (Country_ID, Country_name, Capital_city, Continent_ID) VALUES (127, 'North Macedonia', 'Skopje', 4);
INSERT INTO Country (Country_ID, Country_name, Capital_city, Continent_ID) VALUES (128, 'Norway', 'Oslo', 4);
INSERT INTO Country (Country_ID, Country_name, Capital_city, Continent_ID) VALUES (129, 'Oman', 'Muscat', 3);
INSERT INTO Country (Country_ID, Country_name, Capital_city, Continent_ID) VALUES (130, 'Pakistan', 'Islamabad', 3);
INSERT INTO Country (Country_ID, Country_name, Capital_city, Continent_ID) VALUES (131, 'Palau', 'Ngerulmud', 6);
INSERT INTO Country (Country_ID, Country_name, Capital_city, Continent_ID) VALUES (132, 'Panama', 'Panama City', 5);
INSERT INTO Country (Country_ID, Country_name, Capital_city, Continent_ID) VALUES (133, 'Papua New Guinea', 'Port Moresby', 6);
INSERT INTO Country (Country_ID, Country_name, Capital_city, Continent_ID) VALUES (134, 'Paraguay', 'Asunción', 7);
INSERT INTO Country (Country_ID, Country_name, Capital_city, Continent_ID) VALUES (135, 'Peru', 'Lima', 7);
INSERT INTO Country (Country_ID, Country_name, Capital_city, Continent_ID) VALUES (136, 'Philippines', 'Manila', 3);
INSERT INTO Country (Country_ID, Country_name, Capital_city, Continent_ID) VALUES (137, 'Poland', 'Warsaw', 4);
INSERT INTO Country (Country_ID, Country_name, Capital_city, Continent_ID) VALUES (138, 'Portugal', 'Lisbon', 4);
INSERT INTO Country (Country_ID, Country_name, Capital_city, Continent_ID) VALUES (139, 'Qatar', 'Doha', 3);
INSERT INTO Country (Country_ID, Country_name, Capital_city, Continent_ID) VALUES (140, 'Romania', 'Bucharest', 4);
INSERT INTO Country (Country_ID, Country_name, Capital_city, Continent_ID) VALUES (141, 'Russia', 'Moscow', 3);
INSERT INTO Country (Country_ID, Country_name, Capital_city, Continent_ID) VALUES (142, 'Rwanda', 'Kigali', 1);
INSERT INTO Country (Country_ID, Country_name, Capital_city, Continent_ID) VALUES (143, 'Saint Kitts and Nevis', 'Basseterre', 5);
INSERT INTO Country (Country_ID, Country_name, Capital_city, Continent_ID) VALUES (144, 'Saint Lucia', 'Castries', 5);
INSERT INTO Country (Country_ID, Country_name, Capital_city, Continent_ID) VALUES (145, 'Saint Vincent and the Grenadines', 'Kingstown', 5);
INSERT INTO Country (Country_ID, Country_name, Capital_city, Continent_ID) VALUES (146, 'Samoa', 'Apia', 6);
INSERT INTO Country (Country_ID, Country_name, Capital_city, Continent_ID) VALUES (147, 'San Marino', 'San Marino', 4);
INSERT INTO Country (Country_ID, Country_name, Capital_city, Continent_ID) VALUES (148, 'Sao Tome and Principe', 'S?o Tomé', 1);
INSERT INTO Country (Country_ID, Country_name, Capital_city, Continent_ID) VALUES (149, 'Saudi Arabia', 'Riyadh', 3);
INSERT INTO Country (Country_ID, Country_name, Capital_city, Continent_ID) VALUES (150, 'Senegal', 'Dakar', 1);
INSERT INTO Country (Country_ID, Country_name, Capital_city, Continent_ID) VALUES (151, 'Serbia', 'Belgrade', 4);
INSERT INTO Country (Country_ID, Country_name, Capital_city, Continent_ID) VALUES (152, 'Seychelles', 'Victoria', 1);
INSERT INTO Country (Country_ID, Country_name, Capital_city, Continent_ID) VALUES (153, 'Sierra Leone', 'Freetown', 1);
INSERT INTO Country (Country_ID, Country_name, Capital_city, Continent_ID) VALUES (154, 'Singapore', 'Singapore', 3);
INSERT INTO Country (Country_ID, Country_name, Capital_city, Continent_ID) VALUES (155, 'Slovakia', 'Bratislava', 4);
INSERT INTO Country (Country_ID, Country_name, Capital_city, Continent_ID) VALUES (156, 'Slovenia', 'Ljubljana', 4);
INSERT INTO Country (Country_ID, Country_name, Capital_city, Continent_ID) VALUES (157, 'Solomon Islands', 'Honiara', 6);
INSERT INTO Country (Country_ID, Country_name, Capital_city, Continent_ID) VALUES (158, 'Somalia', 'Mogadishu', 1);
INSERT INTO Country (Country_ID, Country_name, Capital_city, Continent_ID) VALUES (159, 'South Africa', 'Pretoria', 1);
INSERT INTO Country (Country_ID, Country_name, Capital_city, Continent_ID) VALUES (160, 'South Korea', 'Seoul', 3);
INSERT INTO Country (Country_ID, Country_name, Capital_city, Continent_ID) VALUES (161, 'South Sudan', 'Juba', 1);
INSERT INTO Country (Country_ID, Country_name, Capital_city, Continent_ID) VALUES (162, 'Spain', 'Madrid', 4);
INSERT INTO Country (Country_ID, Country_name, Capital_city, Continent_ID) VALUES (163, 'Sri Lanka', 'Colombo', 3);
INSERT INTO Country (Country_ID, Country_name, Capital_city, Continent_ID) VALUES (164, 'Sudan', 'Khartoum', 1);
INSERT INTO Country (Country_ID, Country_name, Capital_city, Continent_ID) VALUES (165, 'Suriname', 'Paramaribo', 7);
INSERT INTO Country (Country_ID, Country_name, Capital_city, Continent_ID) VALUES (166, 'Sweden', 'Stockholm', 4);
INSERT INTO Country (Country_ID, Country_name, Capital_city, Continent_ID) VALUES (167, 'Switzerland', 'Bern', 4);
INSERT INTO Country (Country_ID, Country_name, Capital_city, Continent_ID) VALUES (168, 'Syria', 'Damascus', 3);
INSERT INTO Country (Country_ID, Country_name, Capital_city, Continent_ID) VALUES (169, 'Taiwan', 'Taipei', 3);
INSERT INTO Country (Country_ID, Country_name, Capital_city, Continent_ID) VALUES (170, 'Tajikistan', 'Dushanbe', 3);
INSERT INTO Country (Country_ID, Country_name, Capital_city, Continent_ID) VALUES (171, 'Tanzania', 'Dodoma', 1);
INSERT INTO Country (Country_ID, Country_name, Capital_city, Continent_ID) VALUES (172, 'Thailand', 'Bangkok', 3);
INSERT INTO Country (Country_ID, Country_name, Capital_city, Continent_ID) VALUES (173, 'Timor-Leste', 'Dili', 6);
INSERT INTO Country (Country_ID, Country_name, Capital_city, Continent_ID) VALUES (174, 'Togo', 'Lomé', 1);
INSERT INTO Country (Country_ID, Country_name, Capital_city, Continent_ID) VALUES (175, 'Tonga', 'Nukualofa', 6);
INSERT INTO Country (Country_ID, Country_name, Capital_city, Continent_ID) VALUES (176, 'Trinidad and Tobago', 'Port of Spain', 5);
INSERT INTO Country (Country_ID, Country_name, Capital_city, Continent_ID) VALUES (177, 'Tunisia', 'Tunis', 1);
INSERT INTO Country (Country_ID, Country_name, Capital_city, Continent_ID) VALUES (178, 'Turkey', 'Ankara', 3);
INSERT INTO Country (Country_ID, Country_name, Capital_city, Continent_ID) VALUES (179, 'Turkmenistan', 'Ashgabat', 3);
INSERT INTO Country (Country_ID, Country_name, Capital_city, Continent_ID) VALUES (180, 'Tuvalu', 'Funafuti', 6);
INSERT INTO Country (Country_ID, Country_name, Capital_city, Continent_ID) VALUES (181, 'Uganda', 'Kampala', 1);
INSERT INTO Country (Country_ID, Country_name, Capital_city, Continent_ID) VALUES (182, 'Ukraine', 'Kyiv', 4);
INSERT INTO Country (Country_ID, Country_name, Capital_city, Continent_ID) VALUES (183, 'United Arab Emirates', 'Abu Dhabi', 3);
INSERT INTO Country (Country_ID, Country_name, Capital_city, Continent_ID) VALUES (184, 'United Kingdom', 'London', 4);
INSERT INTO Country (Country_ID, Country_name, Capital_city, Continent_ID) VALUES (185, 'United States', 'Washington D.C.', 5);
INSERT INTO Country (Country_ID, Country_name, Capital_city, Continent_ID) VALUES (186, 'Uruguay', 'Montevideo', 7);
INSERT INTO Country (Country_ID, Country_name, Capital_city, Continent_ID) VALUES (187, 'Uzbekistan', 'Tashkent', 3);
INSERT INTO Country (Country_ID, Country_name, Capital_city, Continent_ID) VALUES (188, 'Vanuatu', 'Port Vila', 6);
INSERT INTO Country (Country_ID, Country_name, Capital_city, Continent_ID) VALUES (189, 'Vatican City (Holy See)', 'Vatican City', 4);
INSERT INTO Country (Country_ID, Country_name, Capital_city, Continent_ID) VALUES (190, 'Venezuela', 'Caracas', 7);
INSERT INTO Country (Country_ID, Country_name, Capital_city, Continent_ID) VALUES (191, 'Vietnam', 'Hanoi', 3);
INSERT INTO Country (Country_ID, Country_name, Capital_city, Continent_ID) VALUES (192, 'Yemen', 'Sanaa', 3);
INSERT INTO Country (Country_ID, Country_name, Capital_city, Continent_ID) VALUES (193, 'Zambia', 'Lusaka', 1);
INSERT INTO Country (Country_ID, Country_name, Capital_city, Continent_ID) VALUES (194, 'Zimbabwe', 'Harare', 1);