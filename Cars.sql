CREATE DATABASE CarsShowroom;


CREATE TABLE Categories (
    ID INT PRIMARY KEY IDENTITY,
    Category VARCHAR(30) NOT NULL
);

CREATE TABLE Engines (
    ID INT PRIMARY KEY IDENTITY,
    Engine VARCHAR(30) NOT NULL
);

CREATE TABLE Cars (
    ID INT PRIMARY KEY IDENTITY,
    Brand VARCHAR(30) NOT NULL,
    Model VARCHAR(30) NOT NULL,
    CategoryID INT FOREIGN KEY REFERENCES Categories(ID),
    EngineID INT FOREIGN KEY REFERENCES Engines(ID),
    Color VARCHAR(20),
    Year INT,
    Price DECIMAL(10, 2)
);

CREATE TABLE Clients (
    ID INT PRIMARY KEY IDENTITY,
    FirstName VARCHAR(30) NOT NULL,
    LastName VARCHAR(30) NOT NULL,
    GSM VARCHAR(10)
);

CREATE TABLE Sales (
    ID INT PRIMARY KEY IDENTITY,
    CarID INT FOREIGN KEY REFERENCES Cars(ID),
    ClientID INT FOREIGN KEY REFERENCES Clients(ID),
    SaleDate DATE    
);

INSERT INTO Categories (Category)
VALUES ('Ван'), ('Джип'), ('Кабрио'), ('Комби'), ('Купе'), ('Миниван'),
      ('Пикап'), ('Седан'), ('Стреч лимузина'), ('Хечбек');

INSERT INTO Engines (Engine)
VALUES ('Бензинов'), ('Дизелов'), ('Електрически'),
    ('Хибриден'), ('Plug-In хибрид');

INSERT INTO Cars (Brand, Model, CategoryID, EngineID, Color, Year, Price)
VALUES
    ('VW', 'Golf', 1, 1, 'Черен', 2022, 20000),
    ('Audi', 'A3', 2, 2, 'Металик', 2021, 25000),
    ('BMW', '3 Series', 2, 1, 'Син', 2020, 30000),
    ('Mercedes-Benz', 'C-Class', 2, 1, 'Бял', 2022, 35000),
    ('Toyota', 'Corolla', 1, 3, 'Металик', 2021, 22000),
    ('Audi', 'A5', 1, 1, 'Черен', 2020, 32000),
    ('BMW', '6 Series', 1, 2, 'Черен', 2019, 35000),
    ('Audi', 'A8', 3, 1, 'Тъмно сив', 2023, 75000),
    ('Mercedes-Benz', 'G 500', 2, 3, 'Черен', 2022, 68000),
    ('Peugeot', '308', 1, 2, 'Червен', 2022, 23000);

INSERT INTO Clients (FirstName, LastName, GSM)
VALUES
    ('Иван', 'Радославов', '0888123456'),
    ('Петър', 'Димитров', '0899123456'),
    ('Ирена', 'Костадинова', '0877123456'),
    ('Пламен', 'Петров', '0885123456'),
    ('Георги', 'Георгиев', '0897123456'),
    ('Васил', 'Поптодоров', '0886123456'),
    ('Николай', 'Павлов', '0876123456'),
    ('София', 'Димитрова', '0896123456'),
    ('Ангел', 'Петров', '0884123456'),
    ('Красен', 'Костов', '0875123456');

INSERT INTO Sales (CarID, ClientID, SaleDate)
VALUES
    (6, 8, '2022-01-16'),
    (2, 3, '2022-02-09'),
    (5, 1, '2022-11-30'),
    (7, 4, '2022-04-19'),
    (1, 6, '2023-05-21');
