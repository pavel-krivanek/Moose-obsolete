tests
testCreateTableBigWithPrimaryKeyConstr
	
	self 
		parse: 'CREATE TABLE A_xxx_yyy(
    A_xxx_yyy_ID        NUMBER(10, 0)     NOT NULL,
    Cr                  DATE              DEFAULT SYSDATE NOT NULL,
    CrBy                NUMBER(10, 0)     NOT NULL,
    xxT               CHAR(1)           NOT NULL,
    ChDt               DATE              NOT NULL,
    Desc              NVARCHAR2(255),
    UseYears             NUMBER(10, 0)     DEFAULT 0 NOT NULL,
    LifeUnits             NUMBER,
    A_blabla_ID    NUMBER(10, 0),
    AssetxxxAmt      NUMBER            DEFAULT 0 NOT NULL,
    C_Cur_ID            NUMBER(10, 0),
    Proc               CHAR(1),
    Pos                   CHAR(1)           DEFAULT ''N'' NOT NULL,
    CONSTRAINT A_xxx_yyy_Key PRIMARY KEY (A_xxx_yyy_ID)
)'
		rule: #createTable.