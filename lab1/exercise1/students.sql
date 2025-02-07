SELECT * FROM testschema.newtable;

START TRANSACTION;

INSERT INTO newtable(StudentID, Name, Major, GPA, Year)
	values(101, "John", "CS", 3.5, 2023),
    (102, "Emma", "Math", 3.8, 2022),
    (103, "Liam", "CS", 2.9, 2024),
    (104, "Olivia", "Physics", 3.6, 2023),
    (105, "Sophia", "Math", 3.2, 2022),
    (106, "Noah", "CS", 3.7, 2023);
 
ROLLBACK;

SELECT * FROM testschema.newtable
WHERE Major = 'CS' AND GPA > 3.0;

SELECT * FROM testschema.newtable
WHERE Year = 2023;

SELECT * FROM testschema.newtable
WHERE Major = 'Math' AND GPA < 3.5;

