tests
testSqlStatement
	self 
		parse: ' create database testName '
		rule: #sqlStatement.
	self 
		parse: ' explain create database testName '
		rule: #sqlStatement.
	self 
		parse: ' query plan create database testName '
		rule: #sqlStatement.
	self 
		parse: ' explain query plan create database testName '
		rule: #sqlStatement.
	self 
		parse: 'CREATE INDEX AD_Archive_Documents ON AD_Archive(AD_Table_ID, AD_Process_ID)'
		rule: #sqlStatement.