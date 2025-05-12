select * from courseRegistration

select id, date_registered from courseRegistration
select id, grade_received from courseRegistration
select course_id, grade_received from courseRegistration
select student_id, grade_received from courseRegistration
select id, date_registered, grade_received from courseRegistration 

select * from courseRegistration where grade_received = 'B' 
select * from courseRegistration where grade_received = 'A'
select * from courseRegistration where grade_received = 'A-'
select * from courseRegistration where date_registered > '2023-10-01'
select * from courseRegistration where date_registered <= '2023-10-01'

select * from courseRegistration where grade_received = 'B' or grade_received = 'C'
select * from courseRegistration where grade_received = 'A-' or grade_received = 'B'
select * from courseRegistration where grade_received = 'A' or grade_received = 'A-'
select * from courseRegistration where (grade_received = 'A' or grade_received = 'A-') and date_registered < '2023-09-15'
select * from courseRegistration where (grade_received = 'A' or grade_received = 'A-' or grade_received = 'B') and date_registered > '2023-09-15'

select * from courseRegistration where course_id != 'C011' and course_id != 'C022'
select * from courseRegistration where grade_received != 'B' and grade_received != 'C'
select * from courseRegistration where course_id != 'C049' or grade_received != 'C'
select * from courseRegistration where course_id != 'C036' or grade_received != 'B+'
select * from courseRegistration where (date_registered = '2023-10-26') and (grade_received != 'B' and grade_received != 'C')


select * from course

select id,title from course
select title,semester_offered from course
select faculty_id,credits from course
select title,faculty_id,credits from course
select title,credits,semester_offered from course

select * from course where semester_offered= 'Summer'
select title,faculty_id,semester_offered from course where credits= 4
select title,credits from course where semester_offered= 'Fall'
select title,faculty_id,credits,semester_offered from course where title = 'De-engineered static forecast'
select * from course where credits=2

select * from course where credits =2 or credits=3
select * from course where credits =2 and semester_offered='Fall'
select * from course where credits =2 and semester_offered='Summer'
select * from course where credits =2 and semester_offered='Spring'
select * from course where semester_offered='Spring' or semester_offered='Summer'

select * from course where semester_offered!='Spring' and semester_offered!='Summer' 
select * from course where semester_offered!='Fall' and credits!=4
select * from course where semester_offered!='Summer' and credits!= 2
select * from course where semester_offered!='Spring' and (credits!= 2 and credits!=3)
select * from course where (semester_offered!='Spring' and semester_offered!='Summer') and credits!=3


select * from student

select name,year_of_admission from student
select department_id,name from student
select name,department_id,year_of_admission from student
select name,email from student
select name,email,year_of_admission from student

select * from student where year_of_admission >=2021
select * from student where year_of_admission <2021
select * from student where department_id = 'D49'
select * from student where department_id = 'D04'
select * from student where name like 'A%'

select * from student where year_of_admission >=2021 and year_of_admission <=2023
select * from student where year_of_admission <2021 or year_of_admission >=2023
select * from student where name like 'A%' or name like 'M%'
select * from student where department_id = 'D49' or department_id = 'D05'
select * from student where name like 'A%' and year_of_admission <= 2021 

select * from student where year_of_admission !=2021 and year_of_admission !=2023
select * from student where year_of_admission !=2020 and year_of_admission !=2021
select * from student where name not like 'A%' and year_of_admission != 2021
select * from student where name not like 'A%' and name not like 'D%'
select * from student where (name not like 'A%' and name not like 'D%') and (email not like 'a%' and email not like 'd%')


select * from department 

select name as department_name,building from department 
select head_of_dept,name as department_name from department
select name,building,established_year from department
select id as department_id, name as department_name from department
select id as department_id, name as department_name, building from department

select * from department where established_year > 2010
select * from department where established_year <= 2010
select * from department where building = 'Block B'
select * from department where head_of_dept like 'N%'
select * from department where head_of_dept like 'Nicole%'

select * from department where established_year > 2010 and (building = 'Block D' or building = 'Block A')
select * from department where established_year < 2005 and (building = 'Block D' or building = 'Block A')
select * from department where head_of_dept like 'D%' or head_of_dept like 'E%'
select * from department where (head_of_dept like 'D%' or head_of_dept like 'E%') and building = 'Block L'
select * from department where (head_of_dept like 'D%' or head_of_dept like 'E%') and (building = 'Block L' or building = 'Block A')

select * from department where (head_of_dept like not 'B%' or head_of_dept like not 'E%') and building = 'Block L' or building = 'Block A'
select * from department where (head_of_dept like not 'B%' or head_of_dept like not 'E%') and building = 'Block L' or building = 'Block B'
select * from department where established_year > 2010 and (building != 'Block D' or building != 'Block A')
select * from department where established_year < 2015 and (building != 'Block D' and building != 'Block A')
select * from department where name != 'Join Department' 

select * from faculty

select name,title from faculty
select name,email,title from faculty
select name,email,mob_no from faculty
select name,title,mob_no from faculty
select id,title,mob_no from faculty

select * from faculty where title = 'Associate Prof.'
select * from faculty where name like 'J%'
select * from faculty where email like '%@yahoo.com'
select * from faculty where name like 'Robert%'
select * from faculty where title = 'Professor'

select * from faculty where name like 'Robert%' or name like 'Jessica%'
select * from faculty where title ='Asst. Professor' and name = 'Carlos Castro'
select * from faculty where name like 'Suzanne%' and mob_no = 9874542589
select * from faculty where title = 'Asst. Professor' or title = 'Professor' 
select * from faculty where name like 'R%' or name like 'J%'

select * from faculty where name like '%Holland' and title!= 'Asst. Professor'
select * from faculty where title ='Asst. Professor' and name != 'Carlos Castro'
select * from faculty where name like 'Suzanne%' and mob_no = 9874542589
select * from faculty where title != 'Asst. Professor' and title != 'Professor' 
select * from faculty where name like '%R%' or not name like 'J%'