tests
testCreateTableFooAsSelect

	self 
		parse: '
		CREATE Table foo 
		
		as select * from anotherTable'
		rule: #createTable.