USE student
GO
CREATE TABLE STU1
(学号 char(12)CONSTRAINT pk_xuehao PRIMARY KEY,
姓名 char(8) CONSTRAINT uk_xymy UNIQUE,
性别 char(2) CONSTRAINT  df_xybx DEFAULT '男',
出生日期 datetime CONSTRAINT ck_csrq  CHECK(出生日期>'01/01/1986'),
家庭地址 char(30),
备注 text
)
GO
ALTER TABLE STU1
Drop CONSTRAINT pk_xuehao
GO
ALTER TABLE STU1
Drop CONSTRAINT uk_xymy 
GO
ALTER TABLE STU1
Drop CONSTRAINT df_xybx
GO
ALTER TABLE STU1
Drop CONSTRAINT ck_csrq 
GO
DROP TABLE STU1
GO
USE student
GO
ALTER TABLE 课程收费
ADD CONSTRAINT fk_shfch FOREIGN KEY(学号) REFERENCES 学生(学号)
GO
ALTER TABLE 课程收费
ADD CONSTRAINT fk_shkch FOREIGN KEY(课程号) REFERENCES 课程(课程号)
GO