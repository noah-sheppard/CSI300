SELECT * FROM products.newtable3;

START TRANSACTION;

INSERT INTO newtable3(OrderID, CustomerName, Product, Quantity, Date)
	values(301, "Alice", "Laptop", 1, "2025 - 01 - 10"),
    (302, "Bob", "Chair", 4, "2025 - 01 - 12"),
    (303, "Charlie", "Table", 2, "2025 - 01 - 15"),
    (304, "Diana", "Laptop", 3, "2025 - 01 - 17"),
    (305, "Emily", "Smartphone", 5, "2025 - 01 - 20"),
    (306, "Frank", "Monitor", 1, "2025 - 01 - 22");

ROLLBACK;

SELECT * FROM products.newtable3
WHERE Quantity > 2;

SELECT CustomerName FROM products.newtable3
WHERE Product = "Laptop";


