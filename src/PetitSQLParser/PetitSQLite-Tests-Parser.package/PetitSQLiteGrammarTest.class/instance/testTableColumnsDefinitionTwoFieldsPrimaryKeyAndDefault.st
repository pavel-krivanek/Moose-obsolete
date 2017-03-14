tests
testTableColumnsDefinitionTwoFieldsPrimaryKeyAndDefault

	self 
		parse: 'CHANGE_USER_ID      NUMBER(10)  PRIMARY KEY AUTOINCREMENT,
	VERSION             NUMBER(10) DEFAULT 0 NOT NULL'
		rule: #tableColumnsDefinition.

