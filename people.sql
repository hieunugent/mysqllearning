
CREATE table people(
last_name  VARCHAR(100),
first_name varchar(100),
create_At timestamp default now(),
dob DATE,
tob TIME
);
insert into people (last_name, first_name, dob, tob) VALUE('NGUYEN','HIEU', '1988-06-26', '10:30:10');