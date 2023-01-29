-- davaleba 4


--;srudentis monacemebi
CREATE TABLE Student(
  ID_student INT PRIMARY KEY NOT NULL,
  Name VARCHAR(50) NOT NULL,
  Lastname VARCHAR(50) NOT NULL,
  PersonalNumber INT NOT NULL UNIQUE,
  Email VARCHAR(70) NOT NULL UNIQUE,
  Address VARCHAR(100) NOT NULL,
  Bday date NOT NULL,
  Sex VARCHAR(10) NOT NULL,
  Address2 VARCHAR(50),
  HomeNumber VARCHAR(10)
);
--;8 of 10 values  => INSERT INTO Student(ID, Name, Lastname, PersonalNumber, Email, Address, Bday, Sex)
--;10 0f 10 values => INSERT INTO Student(ID, Name, Lastname, PersonalNumber, Email, Address, Bday, Sex, Address2, HomeNumber)

--;lectoris monacemebi
CREATE TABLE Lecturer(
  ID_lecturer INT PRIMARY KEY NOT NULL,
  Name VARCHAR(50) NOT NULL,
  Lastname VARCHAR(50) NOT NULL,
  PersonalNumber INT NOT NULL UNIQUE,
  Email VARCHAR(70) NOT NULL UNIQUE,
  Address VARCHAR(100) NOT NULL,
  Bday date NOT NULL,
  Sex VARCHAR(10) NOT NULL,
  BankAccount VARCHAR(25) NOT NULL UNIQUE,
  Position VARCHAR(50) NOT NULL,
  Address2 VARCHAR(50),
  HomeNumber VARCHAR(10)    
);
--; 10 of 12 values => INSERT INTO(ID, Name, Lastname, PersonalNumber, Email, Address, Bday, Sex, BankAccount, Position)
--; 12 of 12 values => INSERT INTO(ID, Name, Lastname, PersonalNumber, Email, Address, Bday, Sex, BankAccount, Position, Address2, HomeNumber)

--;sagani
CREATE TABLE Subject(
  ID_subject INT PRIMARY KEY NOT NULL,
  Name VARCHAR(50) NOT NULL UNIQUE,
);

--;fakulteti
CREATE TABLE Faculty(
  ID_faculty INT PRIMARY KEY NOT NULL,
  Name VARCHAR NOT NULL UNIQUE,
);



