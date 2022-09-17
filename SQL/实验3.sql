USE student
GO
select *
FROM 学生;
GO
SELECT *
FROM 学生
WHERE 学号='060101001001'
GO
SELECT *
FROM 学生
WHERE 姓名 LIKE'李%'
GO
SELECT  学生.学号,学生.姓名,课程名称,成绩
 FROM 学生,课程注册,课程
 WHERE 学生.学号=课程注册.学号 AND 课程注册.课程号=课程.课程号
 UPDATE  课程注册
 SET 成绩= 成绩+5
GO
 SELECT  学号, sum(成绩)总成绩
 FROM 课程注册
 WHERE 学号='060101001002'
GROUP BY 学号
GO
SELECT  学生.学号,姓名,成绩
FROM 学生,课程注册,课程
WHERE 学生.学号=课程注册.学号 AND 
课程注册.课程号=课程.课程号 AND 
课程.课程名称='JAVA 程序设计';
GO
SELECT  学生.学号,姓名,成绩
FROM 学生,课程注册,课程
WHERE 学生.学号=课程注册.学号 AND 
课程注册.课程号=课程.课程号 AND 
课程.课程名称='JAVA 程序设计'
ORDER BY 成绩 DESC;
GO
SELECT  DISTINCT 学号
FROM 学生;
GO
SELECT  学生.学号,姓名,成绩
FROM 学生,课程注册,课程
WHERE 学生.学号=课程注册.学号 AND 
课程注册.课程号=课程.课程号 AND 
课程.课程名称='SQL Sever 2005' AND
成绩>'80';
GO
SELECT 学生.学号,姓名,性别
FROM 学生,班级
WHERE 班级名称='06级软件工程班' AND
学生.性别='女'
GO
SELECT 学生.学号,姓名,性别
FROM 学生,班级
WHERE 班级名称='06级软件工程班' AND
学生.性别='男'
GO
SELECT 学号,课程号,成绩
FROM 课程注册
WHERE 80<课程注册.成绩 AND 课程注册.成绩<90
GO
SELECT 学号,姓名,班级名称
FROM 班级 ,学生
WHERE 班级.班级名称!='06级软件工程班' 
GO
SELECT 学号,姓名,班级名称
FROM 班级 ,学生
WHERE  班级.班级名称!='06级网络技术班'
GO
SELECT 学号
FROM 课程注册,课程
WHERE 课程.课程号=课程注册.课程号 AND 
课程.课程名称='ASPNET 程序设计' OR 
课程.课程名称='SQL Sever 2005'
GO
SELECT 学号
FROM 课程注册,课程
WHERE 课程.课程号=课程注册.课程号 AND 
课程.课程名称='ASPNET 程序设计'
UNION
SELECT 学号
FROM 课程注册,课程
WHERE 课程.课程号=课程注册.课程号 AND
课程.课程名称='SQL Sever 2005'
GO
SELECT COUNT(*)
FROM 学生
GO
SELECT 课程名称='java程序设计',AVG(成绩)平均成绩
FROM 班级,课程注册,课程 
WHERE 班级.班级名称 ='06级软件工程班'
GO
SELECT 课程名称='SQL Sever 2005',MAX(成绩)最高分,MIN(成绩)最低分
FROM 课程注册,课程
WHERE 课程.课程号=课程注册.课程号 
GO
SELECT 学号,姓名,班级名称
FROM 班级,学生
WHERE 班级.班级名称 =
(SELECT 班级名称
FROM 学生,班级
WHERE 学生.班级代码 = 班级.班级代码 AND
学生.姓名='刘永辉')
GO
SELECT 学生.学号,姓名,AVG(成绩)平均成绩
FROM 课程注册,学生
WHERE 课程注册.学号=学生.学号
GROUP BY 学生.学号,姓名
HAVING COUNT(*) >1
ORDER BY AVG(成绩) DESC
GO
SELECT 姓名
FROM 学生,班级
WHERE 学生.入学时间='2006-09-18 00:00:00.000'AND 
班级.班级名称='06级软件工程班'
GO
INSERT into 课程收费(学号)
SELECT 课程注册.学号
FROM 课程注册
WHERE 成绩<60 
ORDER BY 课程注册.学号
UPDATE 课程收费
SET 收费=0