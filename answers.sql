-- CREATE DATABASE education_db;

-- create table Course (
--     course_id INT PRIMARY KEY AUTO_INCREMENT,
--     course_name VARCHAR(100) NOT NULL UNIQUE,
--     duration VARCHAR(50),
--     fee INT
-- );

-- create table Student (
--     student_id INT PRIMARY KEY AUTO_INCREMENT,
--     student_name VARCHAR(100) NOT NULL,
--     email VARCHAR(100) UNIQUE,
--     age INT,
--     gender VARCHAR(20),
--     mark INT,
--     course_id INT,
--     FOREIGN KEY (course_id) REFERENCES Course(course_id)
-- );

-- insert into Course (course_name, duration, fee)
-- values
-- ('Python Full Stack', '6 Months', 30000),
-- ('Java Full Stack', '6 Months', 35000),
-- ('Data Science', '8 Months', 45000),
-- ('Web Development', '4 Months', 25000);

-- select*from Course;

-- insert into Student (student_name, email, age, gender, mark, course_id)
-- values
-- ('Arun', 'arun@gmail.com', 21, 'Male', 85, 1),
-- ('Anu', 'anu@gmail.com', 22, 'Female', 92, 1),
-- ('Rahul', 'rahul@gmail.com', 20, 'Male', 78, 2),
-- ('Meera', 'meera@gmail.com', 23, 'Female', 88, 1),
-- ('Vishnu', 'vishnu@gmail.com', 24, 'Male', 95, 3),
-- ('Asha', 'asha@gmail.com', 19, 'Female', 72, 2),
-- ('Nikhil', 'nikhil@gmail.com', 25, 'Male', 81, 3),
-- ('Sneha', 'sneha@gmail.com', 21, 'Female', 90, 1),
-- ('Adithya', 'adithya@gmail.com', 26, 'Male', 68, 4),
-- ('Diya', 'diya@gmail.com', 18, 'Female', 87, 2);

-- select * from Student where mark>80 order by mark desc;

-- select max(mark) as highest_mark,min(mark) as lowest_mark,avg(mark) as avg_mark from Student;

-- select * from Student order by mark desc limit 5;

-- select student_name,mark from Student where age between 18 and 25 order by age;

-- select course_name,count(student_id) as student_count
-- from Course 
-- join Student 
-- on Course.course_id=Student.course_id
-- group by course_name;

-- select course_name,count(student_id) as student_count from Course join Student 
-- on Course.course_id=Student.course_id
-- group by course_name
-- having count(student_id)>2;

-- select student_name, mark, course_name from Student
-- inner join Course
-- on Student.course_id=Course.course_id;

-- select course_name, student_name, mark from Course
-- left join Student
-- on Course.course_id=Student.course_id;

-- select student_name, mark from Student
-- where mark > (select avg(mark)from Student);

-- select student_name, mark, course_name from Student
-- join Course
-- on Student.course_id = Course.course_id
-- where mark = (select max(mark)from Student where mark<(select max(mark) from Student));