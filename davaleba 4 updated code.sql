drop table Customers;
drop table Orders;
drop table shippings;


CREATE TABLE Student(
	Student_id INT PRIMARY KEY NOT NULL,
	Student_name VARCHAR(50) NOT NULL,
	Lastname VARCHAR(50) NOT NULL,
	Student_id_num INT UNIQUE NOT NULL,
	Email VARCHAR(70) UNIQUE NOT NULL,
	Address VARCHAR NOT NULL,
	Birth_day DATE NOT NULL,
	Sex VARCHAR NOT NULL
);
--INSERT INTO Student (Student_id, Name, Lastname, Student_id_num, Email, Address, Birth_day, Sex)

CREATE TABLE Student_info(
	Student_id INT NOT NULL,
	Address_2 VARCHAR(50),
	Home_num VARCHAR(30),
	FOREIGN KEY(Student_id) REFERENCES Student(Student_id)
);

CREATE TABLE Lecture(
	Lecture_id INT PRIMARY KEY NOT NULL,
	lecture_name VARCHAR(50) NOT NULL,
	Lastname VARCHAR(50) NOT NULL,
	Lecture_id_num INT UNIQUE NOT NULL,
	Email VARCHAR(70) UNIQUE NOT NULL,
	Address VARCHAR NOT NULL,
	Birth_day DATE NOT NULL,
	Sex VARCHAR NOT NULL,
	Bank_account VARCHAR(24) UNIQUE NOT NULL,
	Position VARCHAR(100) NOT NULL
);
--INSERT INTO Lecture (Lecture_id, Name, Lastname, Lecture_id_num, Email, Address, Birth_day, Sex, Bank_account, Position)

CREATE TABLE Lecture_info(
	Lecture_id INT NOT NULL,
	Address_2 VARCHAR(50),
	Home_num VARCHAR(30),
	FOREIGN KEY(Lecture_id) REFERENCES Lecture(Lecture_id)
);

CREATE TABLE Staff(
	Staff_id INT PRIMARY KEY NOT NULL,
	Name VARCHAR(50) NOT NULL,
	Lastname VARCHAR(50) NOT NULL,
	Staff_id_num INT UNIQUE NOT NULL,
	Email VARCHAR(70) UNIQUE NOT NULL,
	Address VARCHAR NOT NULL,
	Birth_day DATE NOT NULL,
	Sex VARCHAR NOT NULL,
	Bank_account VARCHAR(24) UNIQUE NOT NULL,
	Position VARCHAR(100) NOT NULL
);
--INSERT INTO Staff (Staff_id, Name, Lastname, Staff_id_num, Email, Address, Birth_day, Sex, Bank_account, Position)

CREATE TABLE Staff_of(
	Staff_id INT NOT NULL,
	Faculty_id INT NOT NULL,
	FOREIGN KEY(Staff_id) REFERENCES Staff(Staff_id),
	FOREIGN KEY(Faculty_id) REFERENCES Faculty(Faculty_id)
);

CREATE TABLE Subject(
	Subject_id INT PRIMARY KEY NOT NULL,
	Subject_name VARCHAR(50) NOT NULL
);
--INSERT INTO Subject(Subject_id, Subject_name)

CREATE TABLE Subject_timing(
	Time_id INT PRIMARY KEY NOT NULL,
	Subject_name INT NOT NULL,
	Subject_time TIME NOT NULL,
	FOREIGN KEY (Subject_name) REFERENCES Subject(Subject_id)
);
--INSERT INTO Subject_timing(Time_id, Subject_name, Subject_time)

CREATE TABLE Faculty(
	Faculty_id INT PRIMARY KEY NOT NULL,
	Faculty_name VARCHAR(50) NOT NULL
);

--INSERT INTO Faculty(Faculty_id, Faculty_name)

CREATE TABLE On_faculty(
	On_faculty_id INT PRIMARY KEY NOT NULL,
	Faculty_id INT NOT NULL,
	Subject_id INT NOT NULL,
	FOREIGN KEY(Faculty_id) REFERENCES Faculty(Faculty_id),
	FOREIGN KEY(Subject_id) REFERENCES Subject(Subject_id)
);
--INSERT INTO On_faculty(On_faculty_id, Faculty_id, Subject_id)

CREATE TABLE Timetable(
	Timetable_id INT PRIMARY KEY NOT NULL,
	Faculty_id INT NOT NULL,
	Time_id INT NOT NULL,
	Subject_id INT NOT NULL,
	Lecture_id INT NOT NULL,
	Student_id INT NOT NULL,
	FOREIGN KEY (Faculty_id) REFERENCES Faculty(Faculty_id),
	FOREIGN KEY (Time_id) REFERENCES Subject_timing(Time_id),
	FOREIGN KEY (Subject_id) REFERENCES Subject(Subject_id),
	FOREIGN KEY (Lecture_id) REFERENCES Lecture(Lecture_id),
	FOREIGN KEY (Student_id) REFERENCES Student(Student_id)
);
--INSERT INTO Timetable(Timetable_id, Faculty_id, Subject_id, Lecture_id, Student_id)