create table student(
student_id int primary key,
student_name varchar(255),
age int,
email varchar(255)
); 
insert into student (student_id, student_name, age,  email )
values (1,'Nguyen Quang An', 18, 'an@yahoo.com'), 
(2, 'Nguyen Cong Vinh', 20, 'vinh@gmail.com'),
(3, 'Nguyen van quyen', 19, 'quyen@gmail.com'),
(4, 'Pham Thanh Binh', 25, 'binh@gmail.com'),
(5, 'Nguyen Van Tai Em', 30, 'em@gmail.com');

create table classes(
class_id int primary key,
class_name varchar(255)
);
insert into classes values(1,'C0706L'),(2,'Co0708H');

create table classstudent(
student_id int, 
classes_id int,
foreign key(student_id) references student(student_id),
foreign key(classes_id) references classes(class_id)
);

insert into classstudent values 
(1,1),(2,1),(3,2),(4,2),(5,2);

create table subjects(
subject_id int primary key,
subject_name varchar(255)
);

insert into subjects values (1,'SQL'),(2,'JAVA'),(3,'C'),(4,'VISUAL BASIC');


create table marks(
mark int,
subject_id int,
student_id int,
foreign key(subject_id) references subjects(subject_id),
foreign key(student_id) references student(student_id)
);

insert into marks values (8,1,1),(4,2,2),(9,1,1),(7,1,3),(3,1,4),(5,2,5),(8,3,3),(1,3,5),(3,2,4);