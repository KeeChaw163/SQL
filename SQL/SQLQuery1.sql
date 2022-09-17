USE student
GO
CREATE INDEX xsxm_index
ON 学生(姓名 ASC)
GO
CREATE CLUSTERED INDEX jsrk_index
ON 教师任课(教师编号,课程号)
Go
EXEC SP_rename 'pk_kch','pk_kecheng'
GO
DROP INDEX xsxm_index on 学生
GO
