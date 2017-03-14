tests
testWhere
	self 
		parse: ' Where ' "result should be 'Where' "
		rule: #where.

	self 
		parse: 'WHERE ' "result should be 'WHERE' "
		rule: #where.