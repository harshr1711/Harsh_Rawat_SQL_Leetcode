# Write your MySQL query statement below
Select st.student_id , st.student_name , su.subject_name , count(ex.subject_name) as attended_exams from Students as st
Cross Join Subjects as su left join Examinations as ex
on st.student_id = ex.student_id and su.subject_name = ex.subject_name
Group by st.student_id, st.student_name, su.subject_name
Order by st.student_id, su.subject_name;