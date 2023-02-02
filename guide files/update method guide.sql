--update guide

UPDATE TABLE NAME  SET
VALUE = 'value',
VALUE2 = 'value2'
...
WHERE (VALUE_ID) = --id number u want to update

-- example

CREATE TABLE user(
	id int not null primary key,
	user_name varchar,
	user_surname varchar,
	user_age int
);

insert into user(id, user_name, user_surname, user_age)
values(1, 'name', 'lastname', 24)

--| 1 | name | lastname | 24 |

update user set
user_name = 'giorgi',
user_age = 20,
where id = 1

--| 1 | giorgi | lastname | 20 |