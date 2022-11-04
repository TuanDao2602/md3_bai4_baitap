use quanlysinhvien;

-- 1
select *
from subject sb 
where sb.Credit=  (SELECT MAX(Credit) FROM subject);
-- 2
select sb.SubId,sb.SubName,sb.Credit,sb.Credit,m.Mark as 'điểm cao nhất'
from subject sb join mark m on sb.SubId = m.SubId
where m.Mark =(select max(Mark)from mark);

-- 3
select st.StudentId,st.StudentName,st.Address,st.Phone,st.Status,st.ClassId,avg(Mark) as ' điểm trung bình '
from student st join mark m on st.StudentId = m.StudentId
group by StudentId
order by avg(Mark)desc;


