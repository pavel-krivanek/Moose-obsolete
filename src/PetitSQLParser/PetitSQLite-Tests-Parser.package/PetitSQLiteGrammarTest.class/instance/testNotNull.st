tests
testNotNull
	self 
		parse: ' NOT NULL' "result should be 'NOT NULL' "
		rule: #notNull.

	self 
		parse: 'not Null ' "result should be 'not Null' "
		rule: #notNull.