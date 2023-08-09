SELECT * FROM Shopping_List
WHERE Product_Name LIKE 'A%';

SELECT Fridge.Product_Name
FROM Shopping_List
JOIN Fridge
ON Fridge.ID = Shopping_List.ID;

SELECT SL.Product_Name
FROM Shopping_List SL
LEFT JOIN Fridge F 
ON SL.Product_Name = F.Product_Name
WHERE F.Product_Name IS NULL;


