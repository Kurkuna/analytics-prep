-- SQL-Ex: SELECT (обучающий этап)

-- Задача 27
SELECT maker, AVG(hd) FROM PC
JOIN Product ON Product.model = PC.model
WHERE maker IN (SELECT maker FROM Product WHERE type = 'Printer')
GROUP BY maker


-- Задача 28
SELECT COUNT(*) FROM (
SELECT maker
FROM Product
GROUP BY maker
HAVING COUNT(model)=1
) Y

-- Задача 29
SELECT 
a.point, a.date, a.inc, Outcome_o.out
FROM Income_o a
LEFT JOIN Outcome_o
ON a.point=Outcome_o.point AND a.date=Outcome_o.date
UNION
SELECT 
b.point, b.date, Income_o.inc, b.out
FROM Outcome_o b
LEFT JOIN Income_o
ON Income_o.point=b.point AND Income_o.date=b.date
WHERE Income_o.inc IS NULL


-- Задача 30 
SELECT point, date, SUM(out), SUM(inc)
FROM (
SELECT point, date, NULL as out, inc
FROM Income
UNION ALL
SELECT point, date, out, NULL AS inc
FROM Outcome
) t
GROUP BY point, date
