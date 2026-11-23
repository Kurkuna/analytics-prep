-- SQL-Ex: SELECT (обучающий этап)

-- Задача 21
SELECT maker, MAX(price) FROM Product
RIGHT JOIN PC
ON Product.model = PC.model
GROUP BY maker


-- Задача 22
SELECT speed, AVG(price) FROM PC
GROUP BY speed
HAVING speed >600

-- Задача 23
SELECT DISTINCT maker 
FROM Product JOIN PC ON Product.model = PC.model 
AND PC.speed >= 750
INTERSECT
SELECT DISTINCT maker 
FROM Product JOIN Laptop ON Product.model = Laptop.model 
AND Laptop.speed >= 750


-- Задача 24 
SELECT DISTINCT model FROM 
(
SELECT model, price FROM PC
UNION ALL
SELECT model, price FROM Laptop
UNION ALL
SELECT model, price FROM Printer
) x
WHERE x.price IN (SELECT MAX(y.price) FROM (
SELECT price FROM PC
UNION ALL
SELECT price FROM Laptop
UNION ALL
SELECT price FROM Printer
) y
)


-- Задача 25
WITH test AS (
SELECT DISTINCT maker,type,ram,speed FROM PC
JOIN Product ON Product.model = PC.model
WHERE ram IN (SELECT MIN(ram) FROM PC)
)
SELECT DISTINCT maker FROM test
WHERE speed IN (SELECT MAX(speed) FROM test)
AND maker IN(SELECT maker FROM Product WHERE type='Printer')

-- Задача 26
WITH test AS (
SELECT price FROM PC
JOIN Product ON Product.model = PC.model
WHERE maker = 'A'
UNION ALL
SELECT price FROM Laptop
JOIN Product ON Product.model = Laptop.model
WHERE maker = 'A'
)
SELECT AVG(price) FROM test