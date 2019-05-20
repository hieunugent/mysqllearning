USE people;
-- create table student (
--  id INT AUTO_INCREMENT primary key ,
--  first_name VARCHAR(100)
-- );

-- create table papers(
-- title VARCHAR(100),
-- grade INT,
-- student_id INT,
-- foreign key(student_id)
-- 		references student(id)
--         ON delete CASCADE
-- );

-- INSERT INTO student (first_name) VALUES 
-- ('Caleb'), 
-- ('Samantha'), 
-- ('Raj'), 
-- ('Carlos'), 
-- ('Lisa');
--  
-- INSERT INTO papers (student_id, title, grade ) VALUES
-- (1, 'My First Book Report', 60),
-- (1, 'My Second Book Report', 75),
-- (2, 'Russian Lit Through The Ages', 94),
-- (2, 'De Montaigne and The Art of The Essay', 98),
-- (4, 'Borges and Magical Realism', 89);

-- SELECT  first_name, title, grade 
-- FROM STUDENT 
-- inner join papers 
-- on student.id = papers.student_id 
-- order by grade desc;
-- SELECT  first_name, title, grade 
-- FROM STUDENT 
-- right join papers 
-- on student.id = papers.student_id 
-- order by grade desc;
-- SELECT  first_name, title, grade 
-- FROM STUDENT 
-- left join papers 
-- on student.id = papers.student_id;

-- SELECT  first_name, 
-- IFNULL(title, 'MISSING'),
-- IFNULL( grade,0) 
-- FROM STUDENT 
-- left join papers 
-- on student.id = papers.student_id;

SELECT first_name,
		ifnull(avg(grade),0) AS average,
        Case
           when avg(grade) >= 75 then 'passing'
           ELSE 'failing'
        end as passing_status
        from student 
        left join papers
        on student.id = papers.student_id
        group by student.id
        order by average desc;

