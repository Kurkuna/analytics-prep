-- SQL-Ex: SELECT (обучающий этап)

-- Задача 11
SELECT AVG(speed) AS a_speed
FROM PC

-- Задача 12
SELECT AVG(speed) 
FROM Laptop
WHERE price >1000

-- Задача 13
SELECT AVG(speed) 
FROM PC
JOIN Product
ON Product.model = PC.model AND Product.maker= 'A'


-- Задача 14 
SELECT Classes.class, name, country
FROM Ships
JOIN Classes 
ON Classes.class = Ships.class
WHERE numGuns > 9


-- Задача 15
SELECT hd
FROM PC
GROUP BY hd
HAVING COUNT(hd)>1

-- Задача 16
SELECT DISTINCT a1.model, a2.model, a1.speed, a1.ram
FROM PC a1
JOIN PC a2 ON a1.speed = a2.speed AND a1.ram = a2.ram
WHERE a1.model > a2.model


-- Задача 17
SELECT  DISTINCT type, Laptop.model, speed
FROM Laptop
JOIN Product
ON Product.model = Laptop.model
WHERE speed < (SELECT MIN(speed) FROM PC)


-- Задача 18
SELECT DISTINCT maker, price FROM Product
JOIN Printer
ON Printer.model = Product.model
WHERE color = 'y' AND price IN (SELECT MIN(price) FROM Printer WHERE color='y')

-- Задача 19
SELECT maker, AVG(screen)
FROM Product
JOIN Laptop 
ON Laptop.model = Product.model
GROUP BY maker


-- Задача 20
SELECT maker, COUNT(model)
FROM Product
WHERE type = 'PC'
GROUP BY maker
HAVING COUNT(model) >= 3
