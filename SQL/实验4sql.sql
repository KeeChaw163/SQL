USE student
GO
CREATE VIEW V_������ϵѧ��
 AS
 SELECT *
 FROM ѧ��
GO
 SELECT *
 FROM V_������ϵѧ��,רҵ
 WHERE רҵ����='0302'
GO
EXEC sp_rename 'V_������ϵѧ��','V_������ϵ����'
GO
SELECT *
FROM V_������ϵ����
WHERE �Ա�='��'
GO
DROP VIEW V_������ϵ����
GO