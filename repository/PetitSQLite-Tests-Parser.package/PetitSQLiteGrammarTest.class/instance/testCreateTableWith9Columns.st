tests
testCreateTableWith9Columns
	
	self 
		parse: '  CREATE TABLE ciao.TP_CO
(
	CO_KEY          VARCHAR2(100) NOT NULL,
	CO_NAME         VARCHAR2(100),
	CO_DESCRIPTION  VARCHAR2(255),
	CO_VALUE        CLOB NOT NULL,
	CO_DAT          TIMESTAMP NOT NULL,
	CO_USER_ID      NUMBER(10) NOT NULL,
	CO_DAT          TIMESTAMP,
	CO_USERs      NUMBER(10),
	CO             NUMBER(10) DEFAULT 0 NOT NULL
)'
		rule: #createTable.