-- Output

-- Full output: 

SELECT Timetable.Timetable_id, Faculty.Faculty_name, Subject_timing.subject_time, Subject.Subject_name, Lecture.lecture_name, Student.student_name
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

-- Faculti info:

SELECT 