USE student 
GO
CREATE TABLE ����Ա
(�û��� varchar(12) CONSTRAINT pk_gly PRIMARY KEY NOT NULL,
���� varchar(12) NULL,
���� char(2) NULL
) 
GO
USE student 
GO
CREATE TABLE ϵ��
(ϵ������ char(2) CONSTRAINT pk_xbdm PRIMARY KEY NOT NULL,
ϵ������ varchar(30) NOT NULL,
ϵ���� varchar(8) NOT NULL
)
ON STUGROUP1 
GO
USE student 
GO
CREATE TABLE רҵ
(רҵ���� char (4) CONSTRAINT pk_zydm PRIMARY KEY,
רҵ���� varchar (20) NOT NULL,
ϵ������ char (2) CONSTRAINT fk_xbzydm REFERENCES ϵ�� (ϵ������)
)
ON STUGROUP1
GO
CREATE TABLE �༶ 
(�༶���� char (9) CONSTRAINT pk_bjdm PRIMARY KEY,
�༶���� varchar (20),
רҵ���� char (4) CONSTRAINT fk_bjzydm REFERENCES רҵ (רҵ����),
ϵ������ char (2) CONSTRAINT fk_bjxbdm REFERENCES ϵ�� (ϵ������),
��ע varchar (50)
)
ON STUGROUP1  
GO
USE student 
GO
CREATE TABLE ѧ��
(ѧ�� char(12)CONSTRAINT pk_xh PRIMARY KEY NOT NULL,
���� varchar (8),
�Ա� char (2),
�������� datetime,
��ѧʱ�� datetime,
�༶���� char(9)CONSTRAINT fk_xsbjdm REFERENCES �༶(�༶����)
)
ON STUGROUP1 
GO
USE student
GO
CREATE TABLE �γ�
(�γ̺� char(4) CONSTRAINT pk_kch PRIMARY KEY,
�γ����� varchar (20) NOT NULL,
��ע varchar(50)
)
ON STUGROUP2
GO
USE student 
GO
USE student 
GO
CREATE TABLE ��ʦ
(��ʦ��� char (12) CONSTRAINT pk_jsbh PRIMARY KEY,
���� varchar (8) NOT NULL,
�Ա� char (2),
�������� datetime,
ѧ�� varchar (10),
ְ�� char (10),
ְ�� char (10),
ϵ������ char (2) CONSTRAINT jk_jsxbdm REFERENCES ϵ�� (ϵ������),
רҵ char (20),
��ע varchar (50)
)
ON STUGROUP2 
GO
USE student 
GO
CREATE TABLE ��ѧ�ƻ�
(�γ̺� char(4) CONSTRAINT fk_jxjhkch REFERENCES �γ� (�γ̺�),
רҵ���� char (4) CONSTRAINT fk_jxjhzydm REFERENCES רҵ (רҵ����), 
רҵѧ�� varchar (4) NOT NULL,
�γ����� varchar (8),
����ѧ�� tinyint,
ѧ�� tinyint, 
��ʼ�� tinyint, 
������ tinyint, 
�̲ı�� char (6),
��ע varchar (50) 
)
ON STUGROUP2 
GO

USE student 
GO
USE student
CREATE TABLE ��ʦ�ο�
(��ʦ��� char (12) CONSTRAINT fk_jsrkjsbh REFERENCES ��ʦ (��ʦ���),
�γ̺� char (4) CONSTRAINT fk_jsrkkch REFERENCES �γ�(�γ̺�), 
רҵѧ�� char (4) NOT NULL,
רҵ���� char (4) NOT NULL,
ѧ�� char (4),
ѧ�� tinyint,
ѧ���� smallint, 
ѧʱ�� smallint, 
��� smallint,
��ʼ�� tinyint,
������ tinyint
)
ON STUGROUP2
GO
USE student
CREATE TABLE �γ�ע��
(ע��� bigint IDENTITY (010000000,1) NOT FOR REPLICATION CONSTRAINT pk_zch PRIMARY KEY,
ѧ�� char (12) CONSTRAINT fk_kczcxh REFERENCES ѧ�� (ѧ��),
�γ̺� char (4) NOT NULL,
��ʦ��� char (12) NOT NULL,
רҵ���� char (4) NOT NULL,
רҵѧ�� char (4),
ѡ������ char (4),
ѧ�� tinyint,
ѧ�� char (4),
�շѷ� bit,
ע�� bit,
�ɼ� tinyint,
ѧ�� tinyint,
)
ON STUGROUP2 
GO
USE student
GO
CREATE TABLE �γ��շ�
(ѧ�� char(12) CONSTRAINT fk_kcsfxh REFERENCES ѧ��(ѧ��),
�γ̺� char(4) CONSTRAINT fk_kcsfkch REFERENCES �γ�(�γ̺�),
�շ� tinyint,
ѧ�� char(4),
ѧ�� tinyint
)
ON STUOROUP2 
GO