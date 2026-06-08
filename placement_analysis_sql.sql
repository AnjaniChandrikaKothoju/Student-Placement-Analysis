SELECT * FROM placement_project.placement_data;

select count(*) from placement_data;

select count(*) from placement_data where Placement_Status='Placed';

select avg(Salary_LPA) from placement_data where Placement_Status='Placed';

select max(Salary_LPA) highest_salary from placement_data; 

select Department,count(*) Placed_Students from placement_data 
where Placement_Status='Placed' group by Department;

select Student_ID, CGPA from placement_data where CGPA>8;

select Internships,count(*) No_of_students from placement_data group by Internships; 

select * from placement_data order by Salary_LPA desc limit 3;

select Department,max(Salary_LPA) AS Highest_Package from placement_data group by Department;

select Student_Id,Department,Internships from placement_data where Internships>2;

select Student_ID,CGPA,Aptitude_Score from placement_data where CGPA > 7 and Aptitude_Score > 65;

select Department, round(sum(case when Placement_Status='Placed' then 1 else 0 end)*100/count(*),2)
as Placement_Rate from placement_data group by Department; 