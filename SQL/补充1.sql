USE student
GO
SELECT 学生.*
FROM 学生
WHERE 姓名 LIKE'张%' OR 姓名 LIKE'刘%' OR 姓名 LIKE'罗%' 
ORDER BY 姓名
GO
SELECT 学生.学号,sum(成绩)总成绩
FROM 课程注册,学生
WHERE 课程注册.学号=学生.学号
GROUP BY 学生.学号
HAVING sum(成绩)>'300';
GO
SELECT DISTINCT 教师.教师编号,教师.姓名,课程.课程名称
FROM 教师,教师任课 left join 课程 on 教师任课.课程号=课程.课程号
WHERE 教师.教师编号=教师任课.教师编号  
SELECT DISTINCT 教师.教师编号,教师.姓名
FROM 教师任课,教师
WHERE 教师.教师编号 not in(SELECT 教师编号 FROM 教师任课)
GO
SELECT DISTINCT 学生.学号,姓名,课程名称,成绩
FROM 学生,课程,课程注册
WHERE 学生.学号=课程注册.学号 AND
课程.课程号=课程注册.课程号 AND
课程注册.学分='0';
GO
SELECT 学生.学号,课程类型='专业选修',sum(教学计划.学分)总学分
FROM 课程注册,教学计划,学生
WHERE 学生.学号=课程注册.学号
GROUP BY 学生.学号
GO
