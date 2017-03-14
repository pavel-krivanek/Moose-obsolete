tests
testCreateTable5

	self 
		parse:	'CREATE TABLE AD_Sequence_No(
    AD_Sequence_ID    NUMBER(10, 0)    NOT NULL,
    Year              VARCHAR2(4)      DEFAULT ''0000'' NOT NULL,
    AD_Client_ID      NUMBER(10, 0)    NOT NULL,
    AD_Org_ID         NUMBER(10, 0)    NOT NULL,
    Created           DATE             DEFAULT SYSDATE NOT NULL,
    CreatedBy         NUMBER(10, 0)    NOT NULL,
    Updated           DATE             DEFAULT SYSDATE NOT NULL,
    UpdatedBy         NUMBER(10, 0)    NOT NULL,
    CurrentNext       NUMBER(10, 0)    DEFAULT 0 NOT NULL,
    CONSTRAINT AD_Sequence_No_Key PRIMARY KEY (AD_Sequence_ID, Year)
)'
		rule:#createTable