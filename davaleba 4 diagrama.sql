// davaleba_4

TABLE Students{
  Student_ID int [pk, NOT NULL]
  Name varchar [NOT NULL]
  Surname varchar [NOT NULL]
  Personal_num int [NOT NULL]
  Email varhcar [NOT NULL]
  Address varchar [NOT NULL]
  Bday data [NOT NULL]
  Sex varhcar [NOT NULL]
  Address2 varchar
  HomeNumber varchar
}

TABLE Lecturer{
  Lecture_ID int [pk, NOT NULL]
  Name varhcar [NOT NULL]
  Surname varchar [NOT NULL]
  Personal_num int [NOT NULL]
  Email varhcar [NOT NULL]
  Address varhcar [NOT NULL]
  Bday data [NOT NULL]
  Sex varhcar [NOT NULL]
  BankAccNum varchar [NOT NULL]
  Position varhcar [NOT NULL]
  Address2 varhcar
  HomeNumber varhcar 
}

TABLE Managment{
  Managment_ID int [pk, NOT NULL]
  Name varchar [NOT NULL]
  Surname varchar [NOT NULL]
  Personal_num int [NOT NULL]
  Email varhcar [NOT NULL]
  Address varchar [NOT NULL]
  Bday data [NOT NULL]
  Sex varhcar [NOT NULL]
  Position varchar [NOT NULL]
  BankAccNum varchar [NOT NULL]
  Address2 varchar
  HomeNumber varchar
}

TABLE Subject{
  Subject_ID int [pk, NOT NULL]
  Subject_Name varhcar [NOT NULL]
}

TABLE Faculty{
  Faculty_ID int [pk, NOT NULL]
  NAME varchar [NOT NULL]
}

TABLE on_faculty{
  numeral_ID INT [pk, NOT NULL]
  Faculty_ID INT [NOT NULL]
  Subject_ID INT [NOT NULL]
}
// ^^^^^^^^^^^^^^^^^^^^^
ref: Subject.Subject_ID > on_faculty.Subject_ID
ref: Faculty.Faculty_ID > on_faculty.Faculty_ID
//ref: Students.Student_ID > Faculty.Faculty_ID
ref: Lecturer.Lecture_ID > Subject.Subject_ID

TABLE Timetable{
  timetable_id INT [pk, NOT NULL]
  Subject_ID INT // from Subject
  Lecture_ID INT // from Lecturer
  Student_ID INT // from Student
}
// ^^^^^^^^^^^^^^^^^^^^^
ref: Subject.Subject_ID > Timetable.Subject_ID
ref: Lecturer.Lecture_ID > Timetable.Lecture_ID
ref: Students.Student_ID > Timetable.Student_ID

TABLE Managment_of{
  Mng_id INT [pk, NOT NULL]
  Faculty_ID INT [NOT NULL]
  Managment_ID INT [NOT NULL]
}

// for Managment_of
ref: Managment.Managment_ID > Managment_of.Managment_ID
ref: Faculty.Faculty_ID > Managment_of.Faculty_ID

TABLE Subject_time{
    time_id INT [pk, NOT NULL]
    Subject_Name INT [NOT NULL]
    Time TIME [NOT NULL]
}

ref: Subject_time.Subject_Name > Subject.Subject_Name











