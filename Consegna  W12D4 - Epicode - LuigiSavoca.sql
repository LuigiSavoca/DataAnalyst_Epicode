
-- Creazione Database
CREATE DATABASE NegozioGiocattoli;
USE NegozioGiocattoli;

-- Creazione e inserimento dati - Tabella Category
/*PEr prima cosa ho creato e inserito i dati sulle tabelle Category e Region per poi passare a Product e Sales che sono le entità deboli visto che hanno delle FK*/

CREATE TABLE Category (
Category_ID INT AUTO_INCREMENT
, Category_Name VARCHAR(255)
,PRIMARY KEY (Category_ID)
);

INSERT INTO Category (Category_ID, Category_Name) VALUES
(1, 'Action Figures'),
(2, 'Vehicles'),
(3, 'Dolls'),
(4, 'Building Blocks'),
(5, 'Plush Toys'),
(6, 'Puzzles'),
(7, 'Electronics'),
(8, 'Board Games'),
(9, 'Creative Toys'),
(10, 'Stuffed Animals');

-- Creazione e inserimento dati - Tabella Region

CREATE TABLE Region (
Region_ID INT AUTO_INCREMENT
, Region_Name VARCHAR(255)
, City  VARCHAR(255)
, Address  VARCHAR(255)
,PRIMARY KEY (Region_ID)
);

INSERT INTO Region (Region_ID, Region_Name, City, Address)
VALUES
    (1, 'Italy', 'Rome', 'Piazza del Popolo, Rome, Italy'),
    (2, 'Italy', 'Milan', 'Piazza del Duomo, Milan, Italy'),
    (3, 'Italy', 'Venice', 'Piazza San Marco, Venice, Italy'),
    (4, 'Italy', 'Florence', 'Piazza del Duomo, Florence, Italy'),
    (5, 'Italy', 'Naples', 'Via Toledo, Naples, Italy'),
    (6, 'France', 'Paris', 'Champs-Élysées, Paris, France'),
    (7, 'France', 'Lyon', 'Place Bellecour, Lyon, France'),
    (8, 'France', 'Marseille', 'Vieux-Port, Marseille, France'),
    (9, 'France', 'Nice', 'Promenade des Anglais, Nice, France'),
    (10, 'France', 'Bordeaux', 'Place de la Bourse, Bordeaux, France'),
    (11, 'England', 'London', 'Piccadilly Circus, London, England'),
    (12, 'England', 'Manchester', 'Deansgate, Manchester, England'),
    (13, 'England', 'Birmingham', 'Victoria Square, Birmingham, England'),
    (14, 'England', 'Liverpool', 'Albert Dock, Liverpool, England'),
    (15, 'England', 'Edinburgh', 'Royal Mile, Edinburgh, Scotland'),
    (16, 'America', 'New York', 'Times Square, New York, USA'),
    (17, 'America', 'Los Angeles', 'Hollywood Boulevard, Los Angeles, USA'),
    (18, 'America', 'Chicago', 'Millennium Park, Chicago, USA'),
    (19, 'America', 'San Francisco', 'Golden Gate Bridge, San Francisco, USA'),
    (20, 'America', 'Miami', 'South Beach, Miami, USA'),
    (21, 'Spain', 'Madrid', 'Puerta del Sol, Madrid, Spain'),
    (22, 'Spain', 'Barcelona', 'La Rambla, Barcelona, Spain'),
    (23, 'Spain', 'Seville', 'Plaza de España, Seville, Spain'),
    (24, 'Spain', 'Valencia', 'Plaza del Ayuntamiento, Valencia, Spain'),
    (25, 'Spain', 'Malaga', 'Alcazaba of Malaga, Malaga, Spain');
    

-- Creazione e inserimento dati - Tabella Product

CREATE TABLE Product (
Product_ID INT AUTO_INCREMENT
, Category_ID INT
, Product_Name VARCHAR(255)
, ListPrice DECIMAL (10,2)
, StandardCost DECIMAL (10,2)
,PRIMARY KEY (Product_ID)
,FOREIGN KEY (Category_ID) REFERENCES Category (Category_ID)
);

INSERT INTO Product (Product_ID, Category_ID, Product_Name, ListPrice, StandardCost)
VALUES
(1, 1, 'Superhero Action Figure', 19.99, 12.50),
(2, 2, 'Race Car Vehicle', 29.99, 18.75),
(3, 3, 'Baby Doll with Accessories', 24.99, 15.00),
(4, 4, 'Building Blocks Set', 49.99, 30.00),
(5, 5, 'Plush Teddy Bear', 14.99, 8.50),
(6, 6, 'Puzzle Set - 500 Pieces', 12.99, 7.00),
(7, 7, 'Remote Control Drone', 89.99, 55.00),
(8, 8, 'Classic Chess Set', 19.99, 12.00),
(9, 9, 'Art Craft Kit', 22.99, 13.50),
(10, 10, 'Stuffed Elephant', 18.99, 10.00),
(11, 1, 'Action Hero Set', 24.99, 14.50),
(12, 2, 'Police Car Toy', 34.99, 20.00),
(13, 3, 'Fashion Doll with Wardrobe', 29.99, 18.00),
(14, 4, 'Mega Building Blocks', 59.99, 35.00),
(15, 5, 'Plush Bunny Rabbit', 12.99, 7.50),
(16, 6, '3D Puzzle - Eiffel Tower', 15.99, 9.00),
(17, 7, 'Interactive Robot Toy', 79.99, 50.00),
(18, 8, 'Scrabble Board Game', 14.99, 9.99),
(19, 9, 'DIY Craft Supplies Box', 19.99, 12.00),
(20, 10, 'Plush Panda Bear', 16.99, 10.50),
(21, 1, 'Superhero Playset', 27.99, 16.50),
(22, 2, 'Monster Truck', 39.99, 23.00),
(23, 3, 'Princess Doll Set', 35.99, 22.00),
(24, 4, 'Building Blocks Deluxe', 69.99, 40.00),
(25, 5, 'Soft Plush Cat Toy', 9.99, 5.50),
(26, 6, 'Puzzle 1000 Pieces', 18.99, 11.00),
(27, 7, 'Flying Toy Helicopter', 69.99, 42.00),
(28, 8, 'Checkers Game Set', 12.99, 8.00),
(29, 9, 'Creative Art Studio Kit', 24.99, 14.99),
(30, 10, 'Stuffed Giraffe', 20.99, 13.00),
(31, 1, 'Super Villain Action Figure', 21.99, 13.00),
(32, 2, 'Construction Truck Toy', 34.99, 20.50),
(33, 3, 'Baby Doll with Stroller', 27.99, 17.00),
(34, 4, 'Large Building Blocks Set', 79.99, 45.00),
(35, 5, 'Plush Lion', 18.50, 10.25),
(36, 6, 'Jigsaw Puzzle - 1000 Pieces', 22.99, 13.00),
(37, 7, 'RC Car with Controller', 49.99, 30.00),
(38, 8, 'Monopoly Board Game', 24.99, 15.00),
(39, 9, 'DIY Crafting Jewelry Kit', 19.99, 12.00),
(40, 10, 'Stuffed Dog Toy', 17.99, 11.00),
(41, 1, 'Space Hero Action Figure', 29.99, 17.00),
(42, 2, 'Speed Boat Toy', 54.99, 33.00),
(43, 3, 'Barbie Doll and Accessories', 29.99, 19.50),
(44, 4, 'Advanced Building Blocks Kit', 89.99, 55.00),
(45, 5, 'Plush Rabbit Toy', 14.99, 8.25),
(46, 6, '3D Puzzle - Globe', 19.99, 12.50),
(47, 7, 'Interactive Dinosaur Toy', 99.99, 60.00),
(48, 8, 'Clue Board Game', 19.99, 12.00),
(49, 9, 'Painting Kit for Kids', 23.99, 14.99),
(50, 10, 'Stuffed Koala Bear', 15.99, 9.99);
-- Creazione e inserimento dati - Tabella Sales

CREATE TABLE Sales (
Sales_ID INT AUTO_INCREMENT
, OrderDate DATE 
, Product_ID INT 
, Region_ID INT 
, Quantity INT 
, Sales_Amount DECIMAL (10,2)
, PRIMARY KEY (Sales_ID)
, FOREIGN KEY (Product_ID) REFERENCES Product (Product_ID)
, FOREIGN KEY (Region_ID) REFERENCES Region (Region_ID)
);

INSERT INTO Sales (Sales_ID, OrderDate, Product_ID, Region_ID, Quantity, Sales_Amount)
VALUES
(1, '2024-01-12', 1, 1, 3, 59.97),
(2, '2024-02-15', 2, 4, 2, 59.98),
(3, '2024-03-10', 3, 6, 1, 24.99),
(4, '2024-04-22', 4, 5, 5, 249.95),
(5, '2024-05-18', 5, 9, 4, 59.96),
(6, '2024-06-14', 6, 7, 3, 38.97),
(7, '2024-07-05', 7, 2, 1, 89.99),
(8, '2024-08-01', 8, 3, 2, 39.98),
(9, '2024-09-10', 9, 6, 1, 22.99),
(10, '2024-10-20', 10, 8, 2, 37.98),
(11, '2024-01-25', 11, 1, 2, 49.98),
(12, '2024-02-18', 12, 5, 3, 104.97),
(13, '2024-03-20', 13, 10, 4, 119.96),
(14, '2024-04-09', 14, 2, 5, 299.95),
(15, '2024-05-12', 15, 7, 1, 12.99),
(16, '2024-06-01', 16, 3, 2, 31.98),
(17, '2024-07-15', 17, 8, 4, 319.96),
(18, '2024-08-10', 18, 1, 1, 14.99),
(19, '2024-09-05', 19, 4, 3, 59.97),
(20, '2024-10-10', 20, 5, 2, 33.98),
(21, '2024-01-12', 21, 6, 3, 83.97),
(22, '2024-02-20', 22, 9, 4, 159.96),
(23, '2024-03-18', 23, 10, 5, 179.95),
(24, '2024-04-22', 24, 2, 1, 69.99),
(25, '2024-05-15', 25, 5, 3, 29.97),
(26, '2024-06-10', 26, 7, 2, 37.98),
(27, '2024-07-25', 27, 3, 4, 279.96),
(28, '2024-08-05', 28, 6, 1, 12.99),
(29, '2024-09-12', 29, 4, 2, 49.98),
(30, '2024-10-05', 30, 8, 3, 62.97),
(31, '2024-01-15', 31, 1, 1, 21.99),
(32, '2024-02-28', 32, 6, 3, 104.97),
(33, '2024-03-10', 33, 2, 5, 139.95),
(34, '2024-04-18', 34, 5, 4, 159.96),
(35, '2024-05-06', 35, 10, 2, 37.00),
(36, '2024-06-03', 36, 7, 1, 22.99),
(37, '2024-07-08', 37, 3, 3, 149.97),
(38, '2024-08-16', 38, 9, 4, 99.96),
(39, '2024-09-20', 39, 2, 2, 39.98),
(40, '2024-10-13', 40, 4, 3, 53.97),
(41, '2024-01-21', 41, 1, 1, 29.99),
(42, '2024-02-07', 42, 8, 5, 174.95),
(43, '2024-03-25', 43, 6, 2, 59.00),
(44, '2024-04-11', 44, 5, 1, 79.99),
(45, '2024-05-18', 45, 7, 3, 44.97),
(46, '2024-06-22', 46, 9, 2, 39.98),
(47, '2024-07-30', 47, 10, 1, 99.99),
(48, '2024-08-18', 48, 2, 3, 62.97),
(49, '2024-09-14', 49, 5, 4, 95.96),
(50, '2024-10-02', 50, 4, 5, 79.95),
(51, '2024-01-10', 1, 8, 2, 39.98),
(52, '2024-02-05', 2, 3, 1, 29.99),
(53, '2024-03-15', 3, 9, 3, 69.97),
(54, '2024-04-28', 4, 5, 4, 89.96),
(55, '2024-05-03', 5, 10, 2, 33.98),
(56, '2024-06-21', 6, 6, 3, 38.97),
(57, '2024-07-07', 7, 1, 1, 21.99),
(58, '2024-08-09', 8, 7, 5, 399.95),
(59, '2024-09-17', 9, 3, 2, 45.98),
(60, '2024-10-21', 10, 5, 1, 16.99),
(61, '2024-01-18', 11, 4, 3, 74.97),
(62, '2024-02-10', 12, 2, 4, 139.96),
(63, '2024-03-28', 13, 7, 2, 59.98),
(64, '2024-04-19', 14, 8, 3, 89.97),
(65, '2024-05-10', 15, 5, 1, 12.99),
(66, '2024-06-15', 16, 6, 4, 51.96),
(67, '2024-07-04', 17, 3, 5, 139.95),
(68, '2024-08-12', 18, 1, 3, 44.97),
(69, '2024-09-11', 19, 4, 2, 49.98),
(70, '2024-10-30', 20, 7, 1, 99.99),
(71, '2024-01-24', 21, 3, 4, 95.96),
(72, '2024-02-22', 22, 9, 3, 69.97),
(73, '2024-03-30', 23, 10, 2, 45.98),
(74, '2024-04-04', 24, 6, 1, 69.99),
(75, '2024-05-02', 25, 5, 3, 29.97),
(76, '2024-06-08', 26, 2, 2, 41.98),
(77, '2024-07-17', 27, 8, 4, 139.96),
(78, '2024-08-22', 28, 1, 1, 12.99),
(79, '2024-09-03', 29, 7, 3, 74.97),
(80, '2024-10-15', 30, 4, 2, 41.98),
(81, '2024-01-14', 1, 10, 4, 83.96),
(82, '2024-02-04', 2, 5, 1, 34.99),
(83, '2024-03-12', 3, 3, 2, 59.98),
(84, '2024-04-06', 4, 8, 5, 349.95),
(85, '2024-05-20', 5, 6, 3, 44.97),
(86, '2024-06-05', 6, 2, 1, 12.99),
(87, '2024-07-13', 7, 9, 4, 99.96),
(88, '2024-08-25', 8, 10, 2, 39.98),
(89, '2024-09-21', 9, 7, 1, 22.99),
(90, '2024-10-03', 10, 5, 3, 51.97),
(91, '2024-01-07', 11, 8, 4, 79.96),
(92, '2024-02-12', 12, 1, 5, 124.95),
(93, '2024-03-02', 13, 4, 3, 74.97),
(94, '2024-04-13', 14, 2, 2, 69.98),
(95, '2024-05-07', 15, 10, 4, 67.96),
(96, '2024-06-18', 16, 6, 1, 19.99),
(97, '2024-07-19', 17, 1, 3, 89.97),
(98, '2024-08-04', 18, 9, 5, 119.95),
(99, '2024-09-26', 19, 3, 2, 41.98),
(100, '2024-10-09', 20, 8, 4, 63.96);

-- Esercizio 1: Verificare che i campi definiti come PK siano univoci. 
/* Per verificare che i campi definiti siano delle Chiavi primarie, in base alla seguente query, non dovrò mai avere nessun risultato che sia maggiore di 1 */
SELECT
Category_ID AS Chiave_Primaria
, COUNT(*) AS CheckPK
FROM
category
GROUP BY
Category_ID
HAVING
COUNT(*) > 1;

SELECT
Product_ID  AS Chiave_Primaria
, COUNT(*) AS CheckPK
FROM
product
GROUP BY
Product_ID
HAVING
COUNT(*) > 1;

SELECT
Region_ID AS Chiave_Primaria
, COUNT(*) AS CheckPK
FROM
region
GROUP BY
Region_ID
HAVING
COUNT(*) > 1;

SELECT
Sales_ID AS Chiave_Primaria
, COUNT(*) AS CheckPK
FROM
sales
GROUP BY
Sales_ID
HAVING
COUNT(*) > 1;

-- Esercizio 2: Esporre l’elenco dei soli prodotti venduti e per ognuno di questi il fatturato totale per anno.
/*Ho effettuato una JOIN e selezionato il nome dei prodotti, l'anno di vendita utlizzando la funzione YEAR e la somma di tutto il fatturato,
 facendo un GROUP BY su Prodotto e Anno (in questo caso ho solo vendite effettuate nel 2024)*/
 
SELECT
p.Product_Name AS Prodotti
, YEAR(s.OrderDate) AS Anno
, SUM(s.Sales_Amount) AS Fatturato
FROM
sales AS s
JOIN
product AS p
ON
p.product_ID = s.product_ID
GROUP BY
p.Product_Name
, YEAR(s.OrderDate)
ORDER BY
p.Product_Name;

-- Esercizio 3: Esporre il fatturato totale per stato per anno. Ordina il risultato per data e per fatturato decrescente.
/*Anche qui come nell'esercizio 2 ho eseguito una JOIN e filtrato tutto con un GROUP BY ma questa volta ho selezionato la tabella del nome Stato, utilizzando alla fine
una ORDER BY per mettere in ordine decrescente sia la Data di vendita che il fatturato per stato (anche qui ho solo il 2024)*/

SELECT
r.Region_Name AS Stato
, YEAR(s.OrderDate) AS Anno
, SUM(s.Sales_Amount) AS Fatturato
FROM
region AS r
JOIN
sales AS s
ON
r.region_ID = s.sales_ID
GROUP BY
r.Region_Name
, YEAR( OrderDate)
ORDER BY
YEAR(OrderDate) DESC
, SUM(s.Sales_Amount) DESC;

-- Esercizio 4: Rispondere alla seguente domanda: qual è la categoria di articoli maggiormente richiesta dal mercato? 
/* Effettuato due JOIN per collegare le entità che contengono le colonne che mi interessavano e in fine dopo aver raggruppato per categoria, 
ho utilizzato sull'order by un DESC, ed un LIMIT affinchè mi comparisse un solo risultato)*/

SELECT
c.Category_ID AS ID_Categoria
, c.Category_Name AS Nome_Categoria
, SUM(s.Sales_Amount) AS Venduto
FROM
sales AS s
JOIN
product AS p
ON
s.Product_ID = p.Product_ID
JOIN
category AS c
ON
p.Category_ID = c.Category_ID
GROUP BY
c.Category_ID
ORDER BY
SUM(s.Sales_Amount) DESC
LIMIT 1;

-- Esercizio 5: Rispondere alla seguente domanda: quali sono, se ci sono, i prodotti invenduti? Proponi due approcci risolutivi differenti. 
/*Per svolgere l'esercizio possiamo usare due metodi, il primo tramite una LEFT JOIN tra la tabella Product e Sales specificando con il WHERE di avere Prdocut_ID della sales nullo,
se dalla query non vedremo risultati significherà che tutti i prodotti sono stati venduti almeno una volta, al contrario dovremo avere uno o più risultati in base
ai prodotti che saranno presenti sulla tabella Product e non sulla tabella Sales*/

SELECT
p.Product_ID AS Prodotto_ID
, p.Product_Name AS Giocattolo
FROM
product AS p
LEFT JOIN
sales AS s
ON
p.Product_ID = s.Product_ID
WHERE
s.Product_ID IS NULL;

/* Il secondo metodo che possiamo utilizzare per svolgere l'esercizio 5 è il conteggio delle vendite per il prodotto presente nella tabella Product 
e verificare quelle che hanno il COUNT = 0.
Anche in questo caso non avremo nessun risultato come in quello precedente */

SELECT
p.Product_ID
,p.Product_Name
,COUNT(s.sales_ID) AS Vendite
FROM
product AS p
LEFT JOIN
sales AS s
ON
p.product_ID = s.product_ID
GROUP BY
Product_ID
HAVING
COUNT(s.sales_ID) = 0;


-- Esercizio 6: Esporre l’elenco dei prodotti con la rispettiva ultima data di vendita (la data di vendita più recente).

SELECT
p.Product_Name As Prodotto
, MAX(OrderDate) AS Data
FROM
product AS p
JOIN
sales AS s
ON
p.Product_ID = s.Product_ID
GROUP BY
p.Product_Name 
ORDER BY
MAX(OrderDate) DESC;




