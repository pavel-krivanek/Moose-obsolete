tests
testSqlStatementList
	self 
		parse: ' create database testName;
			explain query plan create database testName '
		rule: #sqlStatementList.
	self 
		parse: ' explain create database testName;
				query plan create database testName;
				create table tableName (colName number(10)) '
		rule: #sqlStatementList.
	self 
		parse: ' query plan create database testName '
		rule: #sqlStatement.
		
	self 
		parse: '   create table testName as select *;
			explain query plan create database testName '
		rule: #sqlStatementList.
		
	self 
		parse: 'ALTER TABLE M_INSN_LT ADD CONSTRAINT PK_IP_RELATION_CTRL_ID 
		PRIMARY KEY (IP_CTRL_ID_PARENT, IP_CTRL_ID_CHILD, RELATION_TYPE_CD);
		ALTER TABLE M_INSN_LT ADD CONSTRAINT PK_M_INS_LT 
		PRIMARY KEY (SCHUTIT_KEY);
		ALTER TABLE M_INSN_LT ADD CONSTRAINT PK_IP_RELATION_CTRL_ID 
		PRIMARY KEY (IP_CTRL_ID_PARENT, IP_CTRL_ID_CHILD, RELATION_TYPE_CD)'
		rule: #sqlStatementList.
	
	self 
		parse: 'CREATE UNIQUE INDEX W_ClickCount_TargetURL ON W_ClickCount(AD_Client_ID, TargetURL);
		CREATE UNIQUE INDEX W_CounterCount_PageURL ON W_CounterCount(AD_Client_ID, PageURL);
ALTER TABLE A_Asset ADD CONSTRAINT AAsset_Parent 
    FOREIGN KEY (Parent_Asset_ID)
    REFERENCES A_Asset(A_Asset_ID)'
		rule: #sqlStatementList.
		