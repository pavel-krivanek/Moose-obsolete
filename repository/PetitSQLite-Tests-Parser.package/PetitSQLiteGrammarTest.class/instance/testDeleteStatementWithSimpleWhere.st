tests
testDeleteStatementWithSimpleWhere

	self 
		parse: 'delete from APPLOCK where not exists APP'
		rule: #deleteStatement.