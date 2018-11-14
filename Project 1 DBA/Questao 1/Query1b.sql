USE NutrientsDB;

CREATE PARTITION FUNCTION NutrientsDB_PartitionRange (int)
AS RANGE LEFT FOR VALUES (50, 100);

CREATE PARTITION SCHEME NutrientsDB_PartitionScheme
AS PARTITION NutrientsDB_PartitionRange
TO ([PRIMARY], NutrientsDB_Part2, NutrientsDB_Part3);

CREATE TABLE Cheese (cheeseID INT NOT NULL PRIMARY KEY, 
					 Type varchar(255),
					 Calories INT NOT NULL,
					 Proteins INT NOT NULL,
					 Carbohidrates INT NOT NULL,
					 Fat INT NOT NULL,)
ON NutrientsDB_PartitionScheme (cheeseID);