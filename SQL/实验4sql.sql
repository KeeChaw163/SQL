USE student
GO
CREATE VIEW V_商务技术系学生
 AS
 SELECT *
 FROM 学生
GO
 SELECT *
 FROM V_商务技术系学生,专业
 WHERE 专业代码='0302'
GO
EXEC sp_rename 'V_商务技术系学生','V_商务技术系男生'
GO
SELECT *
FROM V_商务技术系男生
WHERE 性别='男'
GO
DROP VIEW V_商务技术系男生
GO