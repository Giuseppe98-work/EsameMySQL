CREATE DATABASE ToysGroup_DB;
 -- DROP DATABASE ToysGroup_DB;
USE ToysGroup_DB;

CREATE TABLE CATEGORY (
	  Category_ID INT AUTO_INCREMENT PRIMARY KEY
    , Category_Name VARCHAR(100) NOT NULL);
    
    INSERT INTO CATEGORY (Category_Name) VALUES
('Action Figures')
, ('LEGO')
, ('Dolls')
, ('Educational Toys')
, ('Puzzles & Board Games')
, ('Videogames')
, ('Plush Toys')
, ('Outdoor Toys')
, ('Arts & Crafts')
, ('Toy Vehicles');


CREATE TABLE PRODUCT (
    Product_ID INT AUTO_INCREMENT PRIMARY KEY
   , Category_ID INT
   , Product_Name VARCHAR(100) NOT NULL
   , Standard_Cost DECIMAL(10, 2)
   , List_Price DECIMAL (10, 2)
   , FOREIGN KEY (Category_ID) REFERENCES CATEGORY(Category_ID)
);


INSERT INTO PRODUCT (Category_ID, Product_Name, Standard_Cost, List_Price) VALUES
  (1, 'Superman Action Figure', 12.99, 24.99)
, (1, 'Wolverine Action Figure', 25.50, 49.99)
, (1, 'Mazinga Action Figure', 15.75, 32.99)
, (1, 'Darth Vader Action Figure', 9.99, 19.99)
, (2, 'LEGO City Set', 35.00, 69.99)
, (2, 'LEGO Star Wars', 45.50, 89.99)
, (2, 'LEGO Technic', 60.00, 119.99)
, (2, 'LEGO Creator', 22.99, 49.99)
, (3, 'Barbie', 19.99, 39.99)
, (3, 'Ciccio Bello', 120.00, 240.00)
, (3, 'Bratz', 14.50, 29.99)
, (3, 'Peppa Pig', 27.00, 54.99)
, (4, 'English Interactive Book', 18.50, 37.99)
, (4, 'Math Learning Toy', 12.00, 24.99)
, (4, 'Alphabet Blocks', 8.75, 17.99)
, (4, 'Science Experiment Kit', 23.99, 47.99)
, (5, 'Jigsaw Puzzle', 9.99, 19.99)
, (5, 'Chess Set', 15.50, 30.00)
, (5, 'Villanous Gameboard', 20.00, 40.00)
, (5, 'Pokèmon Card Game', 6.99, 14.99)
, (6, 'Spiderman 2 PS5', 499.99, 799.99)
, (6, 'Final Fantasy X Switch', 299.99, 599.99)
, (6, 'Horizon Zero Dawn PS5', 499.99, 799.99)
, (6, 'Resident Evil 4 XBOX', 40.00, 79.99)
, (7, 'Teddy Bear', 12.50, 24.99)
, (7, 'Plush Minecraft Villager', 9.99, 19.99)
, (7, 'Plush Sdentato', 15.00, 29.99)
, (7, 'Plush Umbreon', 18.00, 36.99)
, (8, 'Outdoor Basketball', 20.00, 39.99)
, (8, 'Frisbee', 7.99, 15.99)
, (8, 'Soccer Ball', 10.99, 21.99)
, (8, 'Camping Tent', 49.99, 99.99)
, (9, 'Crafting Kit', 12.50, 24.99)
, (9, 'Drawing Set', 8.00, 16.99)
, (9, 'Color Set', 5.99, 12.99)
, (9, 'Model Building Kit', 16.00, 32.00)
, (10, 'Toy Car', 8.99, 17.99)
, (10, 'Remote Control Car', 25.00, 49.99)
, (10, 'Toy Train Set', 35.00, 69.99)
, (10, 'Toy Airplane', 14.99, 29.99)
, (1, 'Spider-Man Action Figure', 11.99, 23.99)
, (2, 'LEGO Friends Set', 29.99, 59.99)
, (3, 'Doll with Clothes', 18.50, 37.99)
, (4, 'Learning Clock', 12.00, 24.99)
, (5, 'Scrabble Game', 15.50, 31.99)
, (6, 'Gaming Mouse', 25.00, 49.99)
, (7, 'Plush Lion', 20.00, 39.99)
, (8, 'Inflatable Pool', 39.99, 79.99)
, (9, 'Bead Craft Kit', 10.00, 20.00)
, (10, 'Toy Helicopter', 11.50, 22.99);



CREATE TABLE REGION (
    Geography_Key INT AUTO_INCREMENT PRIMARY KEY
    , State_Name VARCHAR(100) NOT NULL
    , City_Name VARCHAR(100) NOT NULL
    );


INSERT INTO REGION (State_Name, City_Name) VALUES

  ('United Kingdom', 'London')
, ('Germany', 'Berlin')
, ('France', 'Paris')
, ('Italy', 'Rome')
, ('Spain', 'Madrid')
, ('Netherlands', 'Amsterdam')
, ('Austria', 'Vienna')
, ('Poland', 'Warsaw')
, ('Belgium', 'Brussels')
, ('Czech Republic', 'Prague')
, ('China', 'Beijing')
, ('Japan', 'Tokyo')
, ('India', 'New Delhi')
, ('Thailand', 'Bangkok')  
, ('Singapore', 'Singapore')
, ('Indonesia', 'Jakarta')
, ('Malaysia', 'Kuala Lumpur')
, ('Philippines', 'Manila')
, ('Vietnam', 'Ho Chi Minh City')
, ('United States', 'New York')
, ('Brazil', 'São Paulo')  
, ('Canada', 'Toronto')
, ('Mexico', 'Mexico City')
, ('Argentina', 'Buenos Aires')
, ('Peru', 'Lima')  
, ('Colombia', 'Bogotá')
, ('Venezuela', 'Caracas')
, ('Ecuador', 'Quito')
, ('Paraguay', 'Asunción')
, ('Australia', 'Sydney')
, ('South Africa', 'Cape Town')  
, ('New Zealand', 'Auckland')
, ('Russia', 'Moscow')  
, ('United Arab Emirates', 'Dubai')  
, ('Sweden', 'Stockholm')
, ('Norway', 'Oslo')
, ('Finland', 'Helsinki')
, ('Switzerland', 'Zurich')
, ('Denmark', 'Copenhagen')
, ('Kazakhstan', 'Almaty') 
, ('Turkey', 'Istanbul')
, ('Saudi Arabia', 'Riyadh')
, ('Israel', 'Tel Aviv')
, ('Argentina', 'Buenos Aires');


CREATE TABLE SALES (
      Sales_ID INT AUTO_INCREMENT PRIMARY KEY
	, Product_ID INT
    , Geography_Key INT
	, Product_Name VARCHAR(100) NOT NULL
    , Order_Date DATE NOT NULL
    , Quantity INT NOT NULL
    , FOREIGN KEY (Product_ID) REFERENCES PRODUCT(Product_ID)
    , FOREIGN KEY (Geography_Key) REFERENCES REGION(Geography_Key)
);



INSERT INTO SALES (Product_ID, Geography_Key, Product_Name, Order_Date, Quantity) VALUES
  (4, 17, 'Darth Vader Action Figure', '2024-01-04', 5)
, (9, 35, 'Barbie', '2023-12-15', 4)
, (16, 22, 'Science Experiment Kit', '2023-11-25', 1)
, (7, 12, 'LEGO Technic', '2023-10-05', 1)
, (29, 11, 'Outdoor Basketball', '2024-03-22', 2)
, (1, 32, 'Superman Action Figure', '2024-02-01', 2)
, (12, 9, 'Peppa Pig', '2023-11-12', 2)
,(19, 12, 'Villanous Gameboard', '2024-04-11', 2)
, (10, 36, 'Ciccio Bello', '2023-10-19', 1)
, (18, 41, 'Chess Set', '2024-07-30', 3)
, (25, 16, 'Teddy Bear', '2023-12-01', 6)
, (28, 21, 'Plush Umbreon', '2024-06-13', 4)
, (33, 25, 'Crafting Kit', '2024-02-15', 2)
, (15, 24, 'Alphabet Blocks', '2023-11-14', 3)
, (3, 44, 'Mazinga Action Figure', '2024-04-03', 1)
, (22, 31, 'Final Fantasy X Switch', '2023-12-22', 2)
, (5, 43, 'LEGO City Set', '2024-01-11', 1)
, (43, 33, 'Toy Car', '2024-08-10', 3)
, (11, 22, 'Bratz', '2023-11-23', 3)
, (17, 8, 'Jigsaw Puzzle', '2023-10-10', 2)
, (14, 28, 'Math Learning Toy', '2023-11-25', 1)
, (30, 40, 'Frisbee', '2023-09-19', 1)
, (6, 17, 'LEGO Star Wars', '2024-02-08', 2)
, (40, 44, 'Toy Airplane', '2024-09-12', 5)
, (33, 25, 'Crafting Kit', '2024-03-05', 3)
, (2, 15, 'Wolverine Action Figure', '2024-01-15', 3)
, (12, 9, 'Peppa Pig', '2023-11-12', 2)
, (9, 35, 'Barbie', '2024-11-09', 4)
, (34, 19, 'Drawing Set', '2024-03-07', 5)
, (13, 4, 'English Interactive Book', '2023-12-04', 4)
, (26, 18, 'Plush Minecraft Villager', '2023-10-25', 2)
, (34, 19, 'Drawing Set', '2024-02-04', 5)
, (24, 26, 'Resident Evil 4 XBOX', '2023-12-29', 4)
, (17, 8, 'Jigsaw Puzzle', '2023-11-10', 2)
, (10, 36, 'Ciccio Bello', '2023-12-06', 1)
, (7, 12, 'LEGO Technic', '2023-09-09', 1)
, (8, 39, 'LEGO Creator', '2024-01-25', 3)
, (11, 22, 'Bratz', '2024-05-20', 3)
, (9, 35, 'Barbie', '2024-03-13', 4)
, (21, 1, 'Spiderman 2 PS5', '2024-03-01', 1)
, (16, 22, 'Science Experiment Kit', '2023-10-19', 1)
, (29, 11, 'Outdoor Basketball', '2023-12-03', 2)
, (5, 39, 'LEGO City Set', '2024-01-01', 1)
, (24, 26, 'Resident Evil 4 XBOX', '2024-03-17', 4)
, (43, 33, 'Toy Car', '2024-06-02', 3)
, (18, 41, 'Chess Set', '2024-08-22', 3)
, (4, 17, 'Darth Vader Action Figure', '2024-05-18', 5)
, (6, 17, 'LEGO Star Wars', '2024-07-11', 2)
, (33, 25, 'Crafting Kit', '2024-09-03', 2)
, (2, 15, 'Wolverine Action Figure', '2024-03-22', 3)
, (16, 22, 'Science Experiment Kit', '2023-12-02', 1)
, (15, 24, 'Alphabet Blocks', '2024-01-20', 3)
, (3, 11, 'Mazinga Action Figure', '2024-06-05', 1)
, (27, 12, 'Plush Sdentato', '2023-12-17', 3)
, (19, 12, 'Villanous Gameboard', '2024-07-22', 2)
, (13, 4, 'English Interactive Book', '2024-02-03', 4)
, (21, 1, 'Spiderman 2 PS5', '2023-11-18', 1)
, (14, 28, 'Math Learning Toy', '2023-12-14', 1)
, (33, 25, 'Crafting Kit', '2024-09-03', 2)
, (16, 22, 'Science Experiment Kit', '2024-03-16', 1)
, (18, 41, 'Chess Set', '2024-07-11', 3)
, (30, 40, 'Frisbee', '2023-11-22', 1)
, (24, 26, 'Resident Evil 4 XBOX', '2023-10-08', 4)
, (26, 18, 'Plush Minecraft Villager', '2024-03-01', 2)
, (5, 40, 'LEGO City Set', '2024-09-15', 1)
, (4, 17, 'Darth Vader Action Figure', '2023-09-30', 5)
, (12, 9, 'Peppa Pig', '2024-08-21', 2)
, (11, 22, 'Bratz', '2023-12-09', 3)
, (30, 40, 'Frisbee', '2024-04-15', 1)
, (3, 19, 'Mazinga Action Figure', '2024-11-05', 1)
, (34, 20, 'Drawing Set', '2024-02-18', 5)
, (2, 15, 'Wolverine Action Figure', '2023-10-23', 3)
, (18, 41, 'Chess Set', '2024-04-02', 3)
, (6, 17, 'LEGO Star Wars', '2024-06-11', 2)
, (27, 25, 'Plush Sdentato', '2024-07-13', 3)
, (1, 32, 'Superman Action Figure', '2024-01-08', 2)
, (10, 36, 'Ciccio Bello', '2024-04-10', 1);




-- USE ToysGroup_DB;
-- DROP DATABASE ToysGroup_DB;

/* Svolgimento 

1. Verificare che i campi definiti come PK siano univoci. */



SELECT
      count(Category_ID) AS Numero_Categorie
    , count( DISTINCT Category_ID) AS Categorie_Uniche
From Category
WHERE Category_ID is not null;

SELECT
      count(Product_ID) AS Numero_Prodotti
    , count( DISTINCT Product_ID) AS Prodotti_Unici
From Product
WHERE Product_ID is not null;

SELECT
      count(Geography_Key) AS Numero_Stati
    , count( DISTINCT Geography_Key) AS Stati_Unici
From region
WHERE Geography_Key is not null;

SELECT
      count(Sales_ID) AS Numero_Vendite
    , count( DISTINCT Sales_ID) AS Vendite_Uniche
From sales
WHERE Sales_ID is not null;



SELECT
	  TABLE_SCHEMA AS 'Database'																					
    , TABLE_NAME AS Table1
    , REFERENCED_TABLE_NAME AS 'Table2_(reference table)'
    , COLUMN_NAME AS 'Table1_column'
    , REFERENCED_COLUMN_NAME AS 'Table2_column_(reference table)'
FROM
    information_schema.key_column_usage
WHERE
    referenced_table_name IS NOT NULL;
    
    /* Questa query è stata scritta a seguito di una mia ricerca, mi sembra molto utile per capire le relazioni tra le entità e da quali chiavi sono veicolate */
    
    
    
  -- 2.Esporre l’elenco dei soli prodotti venduti e per ognuno di questi il fatturato totale per anno.  
    
  SELECT
	PRODUCT.Product_ID
  , PRODUCT.Product_Name AS Prodotto
  , SUM(PRODUCT.List_Price * SALES.Quantity) AS Fatturato
  , YEAR(Order_date)
  FROM
  PRODUCT
  JOIN
  SALES
  ON
  PRODUCT.Product_ID = SALES.Product_ID
  GROUP BY
  PRODUCT.Product_ID , YEAR(Order_date) 
  ORDER BY
  PRODUCT.Product_ID , YEAR(Order_date) 
  ;
  
  -- 3. Esporre il fatturato totale per stato e per anno. Ordina il risultato per data e per fatturato decrescente. 
  
SELECT
  REGION.Geography_Key
, State_Name
, SUM(PRODUCT.List_Price * SALES.Quantity) AS Fatturato
, YEAR(Order_date)
FROM
Sales
INNER JOIN
REGION
ON
Sales.Geography_Key = REGION.Geography_Key
INNER JOIN
PRODUCT
ON
PRODUCT.Product_ID = SALES.Product_ID
GROUP BY
REGION.Geography_Key, YEAR(Order_date)
ORDER BY
YEAR(Order_date), SUM(PRODUCT.List_Price * SALES.Quantity) DESC;

-- 4. Rispondere alla seguente domanda: qual è la categoria di articoli maggiormente richiesta dal mercato?
 
SELECT
  category.Category_ID 
, Category_Name AS NomeCategoria
, SUM(Quantity) AS Quantità
FROM
sales
INNER JOIN
PRODUCT
ON
sales.Product_ID = PRODUCT.Product_ID
INNER JOIN
category
ON
PRODUCT.Category_ID = category.Category_ID
GROUP BY
category.Category_ID
ORDER BY
SUM(Quantity) DESC
;

-- 5. Rispondere alla seguente domanda: quali sono, se ci sono, i prodotti invenduti? Proponi due approcci risolutivi differenti.  

SELECT
*
FROM
PRODUCT
LEFT JOIN
SALES
ON
SALES.Product_ID = PRODUCT.Product_ID
WHERE 
Sales_ID is NULL
;

SELECT
  PRODUCT.Product_ID	
, PRODUCT.Product_Name																			
, COALESCE(SALES.Sales_ID, 'Not Sold') as Sales_ID
, COALESCE(SUM(Quantity), 0) as Quantità
FROM
PRODUCT
LEFT JOIN
SALES
ON
SALES.Product_ID = PRODUCT.Product_ID 
GROUP BY
PRODUCT.Product_Name, PRODUCT.Product_ID, SALES.Sales_ID
HAVING 
Sales_ID IS NULL
ORDER BY
Quantità ASC
;


/* Quì ho preferito utilizzare la funzione "COALESCE" effettuando una doppia verifica sia sulla vendita "Sales_ID" sia sulla Quantità venduta
(Quantity), per avere un'aggregazione più "parlante" qualora volessimo rimuovere la restrizione inserita con "HAVING Sales_ID IS NULL" 
al fine di voler visualizzare anche i prodotti venduti con il relativo Sales_ID e Quantità */

-- 6. Esporre l’elenco dei prodotti con la rispettiva ultima data di vendita (la data di vendita più recente).

SELECT
  Product_Name
, Quantity
, MAX(Order_Date) as UltimaData
FROM
SALES
GROUP BY Product_Name, Quantity
ORDER BY (MAX(Order_Date)) DESC
;