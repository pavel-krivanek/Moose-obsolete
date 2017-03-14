tests
testDeleteStatementWithComplexWhere

	self 
		parse: 'delete from APPLOCK where not exists (select LOGINID from APPLOGIN where LOGINID = APPLOCK.LOGINID and STATE = ''BUSY'')'
		rule: #deleteStatement.