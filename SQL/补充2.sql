USE student
GO
ALTER TABLE ��ѧ�ƻ� ADD CONSTRAINT pk_kzx PRIMARY KEY
(�γ̺�,רҵ����,רҵѧ��);
GO
ALTER TABLE ϵ�� ADD CONSTRAINT uk_xbmz UNIQUE
(ϵ������);
GO
ALTER TABLE רҵ ADD CONSTRAINT CK_ϵ������ CHECK 
(shuruzhi in (01,02,03,04));
GO
ALTER TABLE רҵ ADD CONSTRAINT fk_zyxb FOREIGN KEY
(ϵ������) REFERENCES רҵ(ϵ������);
GO
CREATE TABLE ������Ϣ
(��ʦ��� CHAR(9) CONSTRAINT pk_jsbh PRIMARY KEY,
���� VARCHAR(8) CONSTRAINT pk_xm UNIQUE,
�Ա� CHAR(8),
�������� DATETIME CHECK(��������>'1950'),
ϵ������ char (2)  NOT NULL,
��ϵ�绰 char (20),
);
