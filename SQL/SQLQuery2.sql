USE student
GO
CREATE TABLE STU1
(ѧ�� char(12)CONSTRAINT pk_xuehao PRIMARY KEY,
���� char(8) CONSTRAINT uk_xymy UNIQUE,
�Ա� char(2) CONSTRAINT  df_xybx DEFAULT '��',
�������� datetime CONSTRAINT ck_csrq  CHECK(��������>'01/01/1986'),
��ͥ��ַ char(30),
��ע text
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
ALTER TABLE �γ��շ�
ADD CONSTRAINT fk_shfch FOREIGN KEY(ѧ��) REFERENCES ѧ��(ѧ��)
GO
ALTER TABLE �γ��շ�
ADD CONSTRAINT fk_shkch FOREIGN KEY(�γ̺�) REFERENCES �γ�(�γ̺�)
GO