SELECT * FROM products.newtable2;

START TRANSACTION;

INSERT INTO newtable2(ProductID, Name, Category, Price, Stock)
	values(201, "Laptop", "Electronics", 1200, 50),
    (202, "Chair", "Furniture", 150, 200),
    (203, "Smartphone", "Electronics", 800, 100),
    (204, "Table", "Furniture", 300, 80),
    (205, "Monitor", "Electronics", 400, 70),
    (206, "Desk", "Furniture", 250, 90);
 
ROLLBACK;

SELECT Name FROM products.newtable2
WHERE Category = 'Electronics';

SELECT * FROM products.newtable2
WHERE Price > 500;

SELECT Name, Stock FROM products.newtable2
WHERE Category = 'Furniture';


