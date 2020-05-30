

--JOINS

--1 Write a query to return all the rows from user_new table and role tables where there is matching user_new.role_id value in both the usernew and role tables. 
--Display role.name and user_new.name in ascending order.

select * from user_new INNER JOIN role ON user_new.role_id = role.id
ORDER BY user_new.name ASC, role.name ASC;

--2 Write a query to return all rows from the user_new table and only those rows from the role table where the joined fields are equal. 
--Display role.name and user_new in ascending order.

select * from user_new LEFT JOIN role ON user_new.role_id = role.id
ORDER BY user_new.name ASC, role.name ASC;

--3 Write a query to return all names from the user_new table where there is matching user_new.role_id value in both the user_new and role tables.

select user_new.name from user_new INNER JOIN role
ON user_new.role_id = role.id;

--4 Write a query to return all user_new.phonenumber, user_new.emailid, profile.batch, department.name, profile.designation, experience.company_name from user_new table where there is matching
--profile id in both user_new and profile table,
--profile.degree_id and degree.id from profile and degree table,
--degree.department_id and department.id in degree and department
--profile.id and experience.profile_id in experience and profile table
--where user_name.name = "ProGrad" and experience.currentValue=3

SELECT user_new.phonenumber, user_new.emailid, profile.batch, department.name, profile.designation, experience.company_name 
FROM user_new INNER JOIN profile
ON user_new.role_id = profile.id
INNER JOIN degree
ON profile.degree_id = degree.id
INNER JOIN department
ON degree.department_id = department.id
INNER JOIN experience 
ON profile.id = experience.profile_id
WHERE user_new.emailid LIKE 'yash%'; 

--5 Write a query to return all user_new.name, skill.name from user_new table where there are matching ids in the tables in the 
--order with constraints given below
--role
--profile
--profile_skills
--where role.name="Alumini"
--Display by user_new.name and skill.name

Select user_new.name , role.name FROM 
user_new INNER JOIN role ON
user_new.role_id = role.id
INNER JOIN profile ON
user_new.profile_id = profile.id
INNER JOIN profile_skills7 ON
profile.id = profile_skills.skill_id
where role.name LIKE 'guide';

--6 Write a query to return all user_new.name, experience.company_name from user_new where there are matching ids in the tables
--role 
--profile
--experience
--where role.name = "Alumni"
--Display in the order user_name.name followed by experience.company_name

select user_new.name, role.name, experience.company_name 
from User_new INNER JOIN role ON
user_new.role_id = role.id INNER JOIN profile ON
user_new.id = profile.id INNER JOIN experience ON 
experience.profile_id = profile.id
WHERE role.name LIKE 'guide'
ORDER BY user_new.name, experience.company_name;

--7 Write a query to return all user_new.name, experience.company_name from user_new where there are matching ids in the tables
--role
--profile
--experience
--where role.name = "Alumini"
--Display in the order user_name.name followed by experience.company_name

SELECT user_new.name, experience.company_name, role.name
FROM user_new INNER JOIN role ON
user_new.role_id = role.id INNER JOIN profile ON
user_new.id = profile.id INNER JOIN experience ON 
experience.profile_id = profile.id
WHERE role.name LIKE 'guide'
ORDER BY user_new.name, experience.company_name;;

--8 Write a query to return all user_new.name, experience.company_name from user_new where there are matching ids in the tables
--role
--profile
--experience
--where role.name='Alumni' and experience.currentValue=1
--Display in the order of user_new.name;

SELECT user_new.emailid FROM 
user_new INNER JOIN role ON 
user_new.role_id = role.id
INNER JOIN profile ON 
user_new.profile_id = profile.id
INNER JOIN experience ON
experience.profile_id = profile.id
WHERE role.name LIKE 'Alumni' AND experience7.currentvalue=1
ORDER BY user_new.name;


--9 Write a query to return all user_new.name, experience.company_name from user_new where there are matching ids in the tables
--role
--profile
--experience
--where role.name='Alumni' and experience.currentValue=1 and profile.batch='2008'
--Display in the order of user_new.name;

SELECT user_new.name, experience.company_name FROM user_new
INNER JOIN role ON  
user_new.role_id = role.id
INNER JOIN profile ON 
user_new.profile_id = profile.id
INNER JOIN experience ON
experience.profile_id = profile.id
WHERE role.name LIKE 'Alumni' AND experience.currentvalue=1 AND profile.batch='For'
ORDER BY user_new.name;

--10 Write a query to return all user_new.name, user_new.emailid, user_new.phonenumber, profile.address from user_new where there are matching ids in the tables
--role
--profile
--where role.name='Alumni' and user_new.profile_id is not null
--Display in the order of user_new.name;
--TRY WITHOUT WHERE CONDITION TO CHECK OUTPUT

Select user_new.name, user_new.emailid, user_new.phonenumber, profile.address FROM
user_new FULL JOIN role ON
user_new.role_id = role.id
FULL JOIN profile ON 
user_new.profile_id = profile.id
WHERE role.name LIKE 'Alumni' AND user_new.profile_id IS NOT NULL
ORDER BY user_new.name;

--11 Write a query to return all user_new.name, user_new.emailid, user_new.phonenumber, profile.address from user_new where there are matching ids in the tables
--role
--profile
--where role.name='Alumni' and profile.batch='2008'
--Display in the order of user_new.name;

Select user_new.name, user_new.emailid, user_new.phonenumber, profile.address FROM
user_new INNER JOIN role ON
user_new.role_id = role.id
INNER JOIN profile ON 
user_new.profile_id = profile.id
WHERE role.name LIKE 'Alumni' AND profile.batch='En'
ORDER BY user_new.name;


--12 Write a query to return all user_new.name, user_new.emailid, user_new.phonenumber, profile.address from user_new where there are matching ids in the tables
--role
--profile
--degree
--where role.name='Alumni' and degree.name='BSC_CT'
--Display in the order of user_new.name;

Select user_new.name, user_new.emailid, user_new.phonenumber, profile.address FROM
user_new INNER JOIN role ON
user_new.role_id = role.id
INNER JOIN profile ON 
user_new.profile_id = profile.id
INNER JOIN degree ON
profile.degree_id = degree.id
WHERE role.name LIKE 'Alumni' AND degree.name='ECE'
ORDER BY user_new.name;

--13 Write a query to return alluser_new.name, user_new.emailid, user_new.phonenumber, profile.address from user_new where there are matching ids in the tables
--role
--profile
--degree
--department
--where role.name='Alumni' and department.name='CSE'
--Display in the order of user_new.name;

Select user_new.name, user_new.emailid, user_new.phonenumber, profile.address FROM
user_new INNER JOIN role ON
user_new.role_id = role.id
INNER JOIN profile ON 
user_new.profile_id = profile.id
INNER JOIN degree ON
profile.degree_id = degree.id
INNER JOIN department ON
degree.department_id = department.id
WHERE role.name LIKE 'Alumni' AND department.name='IT'
ORDER BY user_new.name;

--14 Write a query to return all user_new.name, higher_degree.university_name from user_new where there are matching ids in the tables
--role
--profile
--higher_degree
--department
--where role.name='Alumni' and higher_degree.degree_name is not null
--Display in the order of user_new.name,higher_degree.university_name

Select user_new.name AS USERNAME, user_new.emailid AS USER_EMAIL, user_new.phonenumber, profile.address AS PROFILE_ADDRESS FROM
user_new FULL JOIN role ON
user_new.role_id = role.id
FULL JOIN profile ON 
user_new.profile_id = profile.id
FULL JOIN higher_degree ON
profile.id = higher_degree.id
WHERE role.name LIKE 'Alumni' AND higher_degree.degree_name IS NOT NULL
ORDER BY user_new.name, higher_degree.university_name;

--15 Write a query to return all user_new.name, higher_degree.university_name from user_new where there are matching ids in the tables
--role
--profile
--higher_degree
--department
--where role.name='Alumni' and higher_degree.degree_name is not null
--Display in the order of user_new.name,higher_degree.university_name

Select user_new.name  AS USERNAME , higher_degree.university_name AS HD FROM
user_new FULL JOIN role ON
user_new.role_id = role.id
FULL JOIN profile ON 
user_new.profile_id = profile.id
FULL JOIN higher_degree ON
profile.id = higher_degree.id
WHERE role.name LIKE 'Alumni' AND higher_degree.degree_name IS NOT NULL
ORDER BY user_new.name, higher_degree.university_name;

--16 Write a query to return all user_new.name, user_new.emailid, user_new.phonenumber, profile.address from user_new where there are matching ids in the tables
--role
--profile
--degree
--department
--higher_degree
--where role.name='Alumni' and higher_degree.university_name='Texas University'
--Display in the order of user_new.name;

Select user_new.name  AS USERNAME, user_new.emailid, user_new.phonenumber, profile.address FROM
user_new FULL JOIN role ON
user_new.role_id = role.id
FULL JOIN profile ON 
user_new.profile_id = profile.id
FULL JOIN degree ON
profile.degree_id = degree.id
FULL JOIN department ON
department.id = degree.department_id
FULL JOIN higher_degree ON
degree.id = higher_degree.id
WHERE role.name LIKE 'designer' AND higher_degree.degree_name = 'BE'
ORDER BY user_new.name;

--17 Write a query to return all user_new.name, profile.batch from user_new where there are matching ids in the tables
--role
--profile
--where role.name='Alumni' and profile.gender='female'
--Display in the order of user_new.name;

SELECT user_new.name, profile.batch FROM user_new7
INNER JOIN role ON
user_new.role_id = role.id
INNER JOIN profile ON
user_new.profile_id = profile.id
WHERE role.name = 'Alumni' AND profile.gender = 'Female'
ORDER BY user_new.name;

--18 Write a query to return all user_new.name, profile.batch, degree.name from user_new where there are matching ids in the tables
--role
--profile
--degree
--where role.name='Alumni' and profile.gender='female'
--Display in the order of user_new.name;

SELECT user_new.name, profile.batch, degree.name FROM user_new
INNER JOIN role ON
user_new.role_id = role.id
INNER JOIN profile ON
user_new.profile_id = profile.id
INNER JOIN degree ON
profile.degree_id = degree.id
WHERE role.name = 'Alumni' AND profile.gender = 'Female'
ORDER BY user_new.name;

--19 Write a query to return all user_new.name, profile.batch, degree.name, department.name from user_new where there are matching ids in the tables
--role
--profile
--degree
--department
--where role.name='Alumni' and profile.gender='female'
--Display in the order of user_new.name;

SELECT user_new.name, profile.batch, degree.name, department.name FROM user_new
INNER JOIN role ON
user_new.role_id = role.id
INNER JOIN profile ON
user_new.profile_id = profile.id
INNER JOIN degree ON
profile.degree_id = degree.id
INNER JOIN department ON
degree.department_id = department.id
WHERE role.name = 'Alumni' AND profile.gender = 'Female'
ORDER BY user_new.name;

--20 Write a query to return all degree.name, department.name from degree where there are matching ids in the tables
--department
--Display in the order of degree.name;

SELECT degree.name AS DEGREE_NAME, department.name AS DEPT_NAME from degree 
INNER JOIN department ON
degree.department_id = department.id
ORDER BY degree.name;

--21 Write a query to return all user_new.name, profile.designation from user_new where there are matching ids in the tables
--role
--profile
--where role.name='Alumni' and profile.gender='male'
--Display in the order of user_new.name;

SELECT user_new.name, profile.designation FROM user_new
INNER JOIN role ON
user_new.role_id = role.id
INNER JOIN profile ON
user_new.profile_id = profile.id
WHERE role.name = 'Alumni' AND profile.gender = 'Male'
ORDER BY user_new.name;

--22 Write a query to return all user_new.name, profile.designation from user_new where there are matching ids in the tables
--role
--profile
--experience
--where role.name='Alumni' and experience.currentValue=1 and experience.company_name='TCS'
--Display in the order of user_new.name;

SELECT user_new.name, profile.designation FROM user_new
INNER JOIN role ON
user_new.role_id = role.id
INNER JOIN profile ON
user_new.profile_id = profile.id
INNER JOIN experience ON
experience.profile_id = profile.id
WHERE role.name = 'Alumni' AND experience.currentvalue=1 AND experience.company_name = 'CTS'
ORDER BY user_new.name;

--23 Write a query to return all user_new.name, querytable.content from user_new where there are matching ids in the tables
--querytable
--Display in the order of user_new.name;

SELECT user_new.name, querytable.content FROM user_new
INNER JOIN querytable ON
user_new.id = querytable.user_id
ORDER BY user_new.name;

--24 Write a query to return all user_new.name, querytable.content from user_new where there are matching ids in the tables
--querytable
--where parent_id is not null
--Display in the order of user_new.name;

SELECT user_new.name, querytable.content FROM user_new
FULL JOIN querytable ON
user_new.id = querytable.user_id
WHERE querytable.parent_id IS NOT NULL
ORDER BY user_new.name;

--25 Write a query to return all user_new.name, post.content from user_new where there are matching ids in the tables
--post
--Display in the order of user_new.name;

SELECT user_new.name, post.content FROM user_new
INNER JOIN post ON
user_new.id = post.user_id
ORDER BY user_new.name;

--26 Write a query to return all user_new.name, post.content from user_new where there are matching ids in the tables
--post
--where post_type.name='Technology'
--Display in the order of user_new.name,post.dateof;

SELECT user_new.name, post.content FROM user_new
INNER JOIN post ON
user_new.id = post.user_id
INNER JOIN post_type ON
post.type_id = post_type.id
WHERE post_type.name = 'business'
ORDER BY user_new.name, post.dateof;

--27 Write a query to return all user_new.name, post.content from user_new where there are matching ids in the tables
--post
--where post.dateof='2013'
--Display in the order of user_new.name, post.dateof, post.content;

select user_new.name, post.dateof, post.content FROM user_new
INNER JOIN post ON
user_new.id = post.user_id
WHERE post.dateof LIKE '______20'
ORDER BY user_new.name , post.dateof, post.content;

--28 Write a query to return all user_new.name, department.name from user_new where there are matching ids in the tables
--role
--profile
--degree
--department
--profile_skills
--skill
--where skill.name='Programming'
--Display in the order of user_new.name;

Select user_new.name  AS USERNAME, department.name FROM
user_new INNER JOIN role ON
user_new.role_id = role7.id
INNER JOIN profile ON 
user_new.profile_id = profile.id
INNER JOIN degree ON
profile.degree_id = degree.id
INNER JOIN department ON
department.id = degree.department_id
INNER JOIN profile_skills ON
profile.id = profile_skills.skill_id
INNER JOIN skill ON
skill.id = profile_skills.skill_id
WHERE skill.name = 'learn'
ORDER BY user_new.name;

--29 Write a query to return all user_new.name, event.name from user_new where there are matching ids in the tables
--event
--where role.name='Alumni'
--Display in the order of user_new.name,event.dateof
--Display event in descending order.

SELECT user_new.name, event.name FROM user_new
INNER JOIN event ON
user_new.id = event.organiser_id
INNER JOIN role ON
user_new.role_id = role.id
WHERE role.name = 'guide'
ORDER BY user_new.name, event.dateof, event.name DESC;

--30 Write a query to return all user_new.name, event.name from user_new where there are a matching ids in the tables
--event
--role
--where role.name='Alumni'
--Display in the order of user_new.name,event.dateof

SELECT user_new.name, event.name FROM user_new
INNER JOIN event ON
user_new.id = event.organiser_id
INNER JOIN role ON
user_new.role_id = role.id
WHERE role.name = 'guide'
ORDER BY user_new.name, event.dateof;
