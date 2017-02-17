tests
testCreateTable4

	self 
		parse:	'CREATE TABLE AD_Archive(
    AD_Archive_ID    NUMBER(10, 0)      NOT NULL,
    AD_Client_ID     NUMBER(10, 0)      NOT NULL,
    AD_Org_ID        NUMBER(10, 0)      NOT NULL,
    IsActive         CHAR(1)            DEFAULT ''Y'' NOT NULL
                     CHECK (IsActive in (''Y'',''N'')),
    Created          DATE               DEFAULT SYSDATE NOT NULL,
    CreatedBy        NUMBER(10, 0)      NOT NULL,
    Updated          DATE               DEFAULT SYSDATE NOT NULL,
    UpdatedBy        NUMBER(10, 0)      NOT NULL,
    Name             NVARCHAR2(60)      NOT NULL,
    Description      NVARCHAR2(255),
    Help             NVARCHAR2(2000),
    IsReport         CHAR(1)            DEFAULT ''N'' NOT NULL
                     CHECK (IsReport in (''Y'',''N'')),
    AD_Table_ID      NUMBER(10, 0),
    Record_ID        NUMBER(10, 0),
    AD_Process_ID    NUMBER(10, 0),
    C_BPartner_ID    NUMBER(10, 0),
    BinaryData       BLOB,
    CONSTRAINT AD_Archive_Key PRIMARY KEY (AD_Archive_ID)
)'
		rule:#createTable