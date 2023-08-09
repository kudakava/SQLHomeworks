SELECT * 
FROM Shopping_List 
ORDER BY price DESC
LIMIT 1;

SELECT * 
FROM Shopping_List  
ORDER BY price ASC
LIMIT 1;

SELECT AVG(Price) AS average_price
FROM Shopping_list;

SELECT count(Product_Name) from Fridge;

SELECT count(Product_Name) from Shopping_List;

SELECT sum(Quantity) from Fridge;