USE NutrientsDB;

ALTER TABLE Cheese ADD CaloriesInCal INT NOT NULL;
GO
UPDATE Cheese SET CaloriesInCal = (Calories/1000) Where CaloriesInCal = 0
GO

CREATE INDEX calories_index 
    ON Cheese(CaloriesInCal)
    INCLUDE (Proteins, Fat)
    ON [PRIMARY];