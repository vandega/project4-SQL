// davaleba_4

TABLE Student{
  ID int [pk, NOT NULL]
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
  ID int [pk, NOT NULL]
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
  ID int [pk, NOT NULL]
  Name varchar [NOT NULL]
  Surname varchar [NOT NULL]
  Personal_num int [NOT NULL]
  Email varhcar [NOT NULL]
  Address varchar [NOT NULL]
  Bday data [NOT NULL]
  Sex varhcar [NOT NULL]
  BankAccNum varchar [NOT NULL]
  Address2 varchar
  HomeNumber varchar
}

TABLE Subject{
  ID int [pk, NOT NULL]
  Name varhcar [NOT NULL]
}

TABLE Faculty{
  ID int [pk, NOT NULL]
  NAME varchar [NOT NULL]
}

TABLE






