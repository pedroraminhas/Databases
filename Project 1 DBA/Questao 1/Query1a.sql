CREATE DATABASE NutrientsDB ON
PRIMARY (
		NAME='NutrientsDB_Part1',
		FILENAME='C:\Users\Public\NutrientsDB_Part1.mdf',
		SIZE=50MB,MAXSIZE=1GB,FILEGROWTH=5MB),
FILEGROUP NutrientsDB_Part2 (
		NAME='NutrientsDB_Part2',
		FILENAME ='C:\Users\Public\NutrientsDB_Part2.ndf',
		SIZE = 100MB,MAXSIZE=UNLIMITED,FILEGROWTH=50%),
FILEGROUP NutrientsDB_Part3 (
		NAME='NutrientsDB_Part3',
		FILENAME ='C:\Users\Public\NutrientsDB_Part3.ndf',
		SIZE = 50MB,MAXSIZE=UNLIMITED,FILEGROWTH=50%)
LOG ON (
		NAME = 'NutrientsDB_Log',
		FILENAME = 'C:\Users\Public\Nutrients_Log.ldf',
		SIZE=25MB,MAXSIZE = 250MB,FILEGROWTH = 50%);