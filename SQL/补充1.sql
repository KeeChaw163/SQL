USE student
GO
SELECT ѧ��.*
FROM ѧ��
WHERE ���� LIKE'��%' OR ���� LIKE'��%' OR ���� LIKE'��%' 
ORDER BY ����
GO
SELECT ѧ��.ѧ��,sum(�ɼ�)�ܳɼ�
FROM �γ�ע��,ѧ��
WHERE �γ�ע��.ѧ��=ѧ��.ѧ��
GROUP BY ѧ��.ѧ��
HAVING sum(�ɼ�)>'300';
GO
SELECT DISTINCT ��ʦ.��ʦ���,��ʦ.����,�γ�.�γ�����
FROM ��ʦ,��ʦ�ο� left join �γ� on ��ʦ�ο�.�γ̺�=�γ�.�γ̺�
WHERE ��ʦ.��ʦ���=��ʦ�ο�.��ʦ���  
SELECT DISTINCT ��ʦ.��ʦ���,��ʦ.����
FROM ��ʦ�ο�,��ʦ
WHERE ��ʦ.��ʦ��� not in(SELECT ��ʦ��� FROM ��ʦ�ο�)
GO
SELECT DISTINCT ѧ��.ѧ��,����,�γ�����,�ɼ�
FROM ѧ��,�γ�,�γ�ע��
WHERE ѧ��.ѧ��=�γ�ע��.ѧ�� AND
�γ�.�γ̺�=�γ�ע��.�γ̺� AND
�γ�ע��.ѧ��='0';
GO
SELECT ѧ��.ѧ��,�γ�����='רҵѡ��',sum(��ѧ�ƻ�.ѧ��)��ѧ��
FROM �γ�ע��,��ѧ�ƻ�,ѧ��
WHERE ѧ��.ѧ��=�γ�ע��.ѧ��
GROUP BY ѧ��.ѧ��
GO
