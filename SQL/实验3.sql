USE student
GO
select *
FROM ѧ��;
GO
SELECT *
FROM ѧ��
WHERE ѧ��='060101001001'
GO
SELECT *
FROM ѧ��
WHERE ���� LIKE'��%'
GO
SELECT  ѧ��.ѧ��,ѧ��.����,�γ�����,�ɼ�
 FROM ѧ��,�γ�ע��,�γ�
 WHERE ѧ��.ѧ��=�γ�ע��.ѧ�� AND �γ�ע��.�γ̺�=�γ�.�γ̺�
 UPDATE  �γ�ע��
 SET �ɼ�= �ɼ�+5
GO
 SELECT  ѧ��, sum(�ɼ�)�ܳɼ�
 FROM �γ�ע��
 WHERE ѧ��='060101001002'
GROUP BY ѧ��
GO
SELECT  ѧ��.ѧ��,����,�ɼ�
FROM ѧ��,�γ�ע��,�γ�
WHERE ѧ��.ѧ��=�γ�ע��.ѧ�� AND 
�γ�ע��.�γ̺�=�γ�.�γ̺� AND 
�γ�.�γ�����='JAVA �������';
GO
SELECT  ѧ��.ѧ��,����,�ɼ�
FROM ѧ��,�γ�ע��,�γ�
WHERE ѧ��.ѧ��=�γ�ע��.ѧ�� AND 
�γ�ע��.�γ̺�=�γ�.�γ̺� AND 
�γ�.�γ�����='JAVA �������'
ORDER BY �ɼ� DESC;
GO
SELECT  DISTINCT ѧ��
FROM ѧ��;
GO
SELECT  ѧ��.ѧ��,����,�ɼ�
FROM ѧ��,�γ�ע��,�γ�
WHERE ѧ��.ѧ��=�γ�ע��.ѧ�� AND 
�γ�ע��.�γ̺�=�γ�.�γ̺� AND 
�γ�.�γ�����='SQL Sever 2005' AND
�ɼ�>'80';
GO
SELECT ѧ��.ѧ��,����,�Ա�
FROM ѧ��,�༶
WHERE �༶����='06��������̰�' AND
ѧ��.�Ա�='Ů'
GO
SELECT ѧ��.ѧ��,����,�Ա�
FROM ѧ��,�༶
WHERE �༶����='06��������̰�' AND
ѧ��.�Ա�='��'
GO
SELECT ѧ��,�γ̺�,�ɼ�
FROM �γ�ע��
WHERE 80<�γ�ע��.�ɼ� AND �γ�ע��.�ɼ�<90
GO
SELECT ѧ��,����,�༶����
FROM �༶ ,ѧ��
WHERE �༶.�༶����!='06��������̰�' 
GO
SELECT ѧ��,����,�༶����
FROM �༶ ,ѧ��
WHERE  �༶.�༶����!='06�����缼����'
GO
SELECT ѧ��
FROM �γ�ע��,�γ�
WHERE �γ�.�γ̺�=�γ�ע��.�γ̺� AND 
�γ�.�γ�����='ASPNET �������' OR 
�γ�.�γ�����='SQL Sever 2005'
GO
SELECT ѧ��
FROM �γ�ע��,�γ�
WHERE �γ�.�γ̺�=�γ�ע��.�γ̺� AND 
�γ�.�γ�����='ASPNET �������'
UNION
SELECT ѧ��
FROM �γ�ע��,�γ�
WHERE �γ�.�γ̺�=�γ�ע��.�γ̺� AND
�γ�.�γ�����='SQL Sever 2005'
GO
SELECT COUNT(*)
FROM ѧ��
GO
SELECT �γ�����='java�������',AVG(�ɼ�)ƽ���ɼ�
FROM �༶,�γ�ע��,�γ� 
WHERE �༶.�༶���� ='06��������̰�'
GO
SELECT �γ�����='SQL Sever 2005',MAX(�ɼ�)��߷�,MIN(�ɼ�)��ͷ�
FROM �γ�ע��,�γ�
WHERE �γ�.�γ̺�=�γ�ע��.�γ̺� 
GO
SELECT ѧ��,����,�༶����
FROM �༶,ѧ��
WHERE �༶.�༶���� =
(SELECT �༶����
FROM ѧ��,�༶
WHERE ѧ��.�༶���� = �༶.�༶���� AND
ѧ��.����='������')
GO
SELECT ѧ��.ѧ��,����,AVG(�ɼ�)ƽ���ɼ�
FROM �γ�ע��,ѧ��
WHERE �γ�ע��.ѧ��=ѧ��.ѧ��
GROUP BY ѧ��.ѧ��,����
HAVING COUNT(*) >1
ORDER BY AVG(�ɼ�) DESC
GO
SELECT ����
FROM ѧ��,�༶
WHERE ѧ��.��ѧʱ��='2006-09-18 00:00:00.000'AND 
�༶.�༶����='06��������̰�'
GO
INSERT into �γ��շ�(ѧ��)
SELECT �γ�ע��.ѧ��
FROM �γ�ע��
WHERE �ɼ�<60 
ORDER BY �γ�ע��.ѧ��
UPDATE �γ��շ�
SET �շ�=0