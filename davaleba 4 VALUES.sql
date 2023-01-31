INSERT INTO Student (Student_id, Student_name, Lastname, Student_id_num, Email, Address, Birth_day, Sex)
VALUES	(1, 'joni', 'sturua', 01001089305, 'jako.sturua@gmail.com', 'Tbilisi, gldani, VI m/r', '1997-08-13', 'male'),
		(2, 'Jane', 'Doe', 654000, 'janedoe@example.com', '456 Oak Ave', '1998-02-14', 'Female'),
		(3, 'Jim', 'Smith', 111111, 'jimsmith@example.com', '789 Pine Rd', '1997-03-21', 'Male'),
		(4, 'Sarah', 'Johnson', 222222, 'sarahjohnson@example.com', '246 Maple St', '1996-04-01', 'Female'),
		(5, 'Michael', 'Brown', 333333, 'michaelbrown@example.com', '135 Cedar Blvd', '1995-05-16', 'Male'),
		(6, 'Emily', 'Davis', 444444, 'emilydavis@example.com', '768 Oak Rd', '1994-06-23', 'Female'),
		(7, 'William', 'Miller', 555555, 'williammiller@example.com', '369 Maple Ave', '1993-07-04', 'Male'),
		(8, 'Ashley', 'Wilson', 666666, 'ashleywilson@example.com', '159 Pine St', '1992-08-11', 'Female'),
		(9, 'David', 'Anderson', 01253647, 'davidanderson@example.com', '753 Cedar Rd', '1991-09-17', 'Male'),
		(10, 'Jessica', 'Thomas', 0100136587, 'jessicathomas@example.com', '246 Oak Blvd', '1990-10-25', 'Female');


INSERT INTO Lecture (Lecture_id, Lecture_name, Lastname, Lecture_id_num, Email, Address, Birth_day, Sex, Bank_account, Position, Address_2, Home_num)
VALUES	(1, 'John', 'Doe', 12345678901, 'johndoe@example.com', '123 Main St', '1980-01-01', 'Male', '1234567890123456', 'Professor', 'Apt 1', '555-555-1212'),
	  	(2, 'Jane', 'Doe', 23456789012, 'janedoe@example.com', '456 Oak Ave', '1981-02-14', 'Female', '234567890123456', 'math Professor', 'Apt 2', '555-555-1213'),
	  	(3, 'Jim', 'Smith', 34567890123, 'jimsmith@example.com', '789 Pine Rd', '1982-03-21', 'Male', '34567890123456', 'english Professor', 'Apt 3', '555-555-1214'),
   	   	(4, 'Sarah', 'Johnson', 45678901234, 'sarahjohnson@example.com', '246 Maple St', '1983-04-01', 'Female', '4567890123456', 'IT Professor', 'Apt 4', '555-555-1215'),
	   	(5, 'Michael', 'Brown', 56789012345, 'michaelbrown@example.com', '135 Cedar Blvd', '1984-05-16', 'Male', '567890123456', 'history Professor', 'Apt 5', '555-555-1216');


INSERT INTO Subject (Subject_id, Subject_name)
VALUES (1, 'Math'),
       (2, 'Science'),
       (3, 'History'),
       (4, 'English'),
       (5, 'Geography');


INSERT INTO Faculty(Faculty_id, Faculty_name)
VALUES	(1, 'Science'),
		(2, 'Arts'),
		(3, 'Commerce');


INSERT INTO Subject_timing(Time_id, Subject_name, Subject_time)
VALUES 	(1, 1, '10:00:00'),
		(2, 1, '12:00:00'),
		(3, 2, '14:00:00'),
		(4, 2, '15:30:00'),
		(5, 3, '09:00:00'),
		(6, 3, '13:45:00'),
		(7, 4, '11:30:00'),
		(8, 4, '16:00:00'),
		(9, 5, '12:00:00');


INSERT INTO On_faculty(On_faculty_id, Faculty_id, Subject_id)
VALUES	(1, 1, 1),
		(2, 1, 2),
		(3, 1, 4),
		(4, 2, 2),
		(5, 2, 3),
		(6, 3, 1),
		(7, 3, 4);

INSERT INTO Timetable(Timetable_id, time_id, Faculty_id, Subject_id, Lecture_id, Student_id)
VALUES(1, 1, 1, 1, 3, 5);



SELECT Timetable.Timetable_id, Faculty.Faculty_name, Subject_timing.Time_id, Subject.Subject_name, Lecture.lecture_name, Student.student_name
FROM Timetable

JOIN Faculty
ON Timetable.Faculty_id = Faculty.Faculty_id

JOIN Subject
ON Timetable.Subject_id = Subject.Subject_id

JOIN Subject_timing
ON Timetable.Time_id = Subject_timing.Time_id

JOIN Lecture
ON Timetable.Lecture_id = Lecture.Lecture_id

JOIN Student
ON Timetable.Student_id = Student.Student_id