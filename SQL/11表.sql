USE student 
GO
CREATE TABLE 管理员
(用户名 varchar(12) CONSTRAINT pk_gly PRIMARY KEY NOT NULL,
密码 varchar(12) NULL,
级别 char(2) NULL
) 
GO
USE student 
GO
CREATE TABLE 系部
(系部代码 char(2) CONSTRAINT pk_xbdm PRIMARY KEY NOT NULL,
系部名称 varchar(30) NOT NULL,
系主任 varchar(8) NOT NULL
)
ON STUGROUP1 
GO
USE student 
GO
CREATE TABLE 专业
(专业代码 char (4) CONSTRAINT pk_zydm PRIMARY KEY,
专业名称 varchar (20) NOT NULL,
系部代码 char (2) CONSTRAINT fk_xbzydm REFERENCES 系部 (系部代码)
)
ON STUGROUP1
GO
CREATE TABLE 班级 
(班级代码 char (9) CONSTRAINT pk_bjdm PRIMARY KEY,
班级名称 varchar (20),
专业代码 char (4) CONSTRAINT fk_bjzydm REFERENCES 专业 (专业代码),
系部代码 char (2) CONSTRAINT fk_bjxbdm REFERENCES 系部 (系部代码),
备注 varchar (50)
)
ON STUGROUP1  
GO
USE student 
GO
CREATE TABLE 学生
(学号 char(12)CONSTRAINT pk_xh PRIMARY KEY NOT NULL,
姓名 varchar (8),
性别 char (2),
出生日期 datetime,
入学时间 datetime,
班级代码 char(9)CONSTRAINT fk_xsbjdm REFERENCES 班级(班级代码)
)
ON STUGROUP1 
GO
USE student
GO
CREATE TABLE 课程
(课程号 char(4) CONSTRAINT pk_kch PRIMARY KEY,
课程名称 varchar (20) NOT NULL,
备注 varchar(50)
)
ON STUGROUP2
GO
USE student 
GO
USE student 
GO
CREATE TABLE 教师
(教师编号 char (12) CONSTRAINT pk_jsbh PRIMARY KEY,
姓名 varchar (8) NOT NULL,
性别 char (2),
出生日期 datetime,
学历 varchar (10),
职务 char (10),
职称 char (10),
系部代码 char (2) CONSTRAINT jk_jsxbdm REFERENCES 系部 (系部代码),
专业 char (20),
备注 varchar (50)
)
ON STUGROUP2 
GO
USE student 
GO
CREATE TABLE 教学计划
(课程号 char(4) CONSTRAINT fk_jxjhkch REFERENCES 课程 (课程号),
专业代码 char (4) CONSTRAINT fk_jxjhzydm REFERENCES 专业 (专业代码), 
专业学级 varchar (4) NOT NULL,
课程类型 varchar (8),
开课学期 tinyint,
学分 tinyint, 
开始周 tinyint, 
结束周 tinyint, 
教材编号 char (6),
备注 varchar (50) 
)
ON STUGROUP2 
GO

USE student 
GO
USE student
CREATE TABLE 教师任课
(教师编号 char (12) CONSTRAINT fk_jsrkjsbh REFERENCES 教师 (教师编号),
课程号 char (4) CONSTRAINT fk_jsrkkch REFERENCES 课程(课程号), 
专业学线 char (4) NOT NULL,
专业代码 char (4) NOT NULL,
学年 char (4),
学期 tinyint,
学生数 smallint, 
学时数 smallint, 
酬金 smallint,
开始周 tinyint,
结束周 tinyint
)
ON STUGROUP2
GO
USE student
CREATE TABLE 课程注册
(注册号 bigint IDENTITY (010000000,1) NOT FOR REPLICATION CONSTRAINT pk_zch PRIMARY KEY,
学号 char (12) CONSTRAINT fk_kczcxh REFERENCES 学生 (学号),
课程号 char (4) NOT NULL,
教师编号 char (12) NOT NULL,
专业代码 char (4) NOT NULL,
专业学级 char (4),
选课类型 char (4),
学期 tinyint,
学年 char (4),
收费否 bit,
注册 bit,
成绩 tinyint,
学分 tinyint,
)
ON STUGROUP2 
GO
USE student
GO
CREATE TABLE 课程收费
(学号 char(12) CONSTRAINT fk_kcsfxh REFERENCES 学生(学号),
课程号 char(4) CONSTRAINT fk_kcsfkch REFERENCES 课程(课程号),
收费 tinyint,
学年 char(4),
学期 tinyint
)
ON STUOROUP2 
GO