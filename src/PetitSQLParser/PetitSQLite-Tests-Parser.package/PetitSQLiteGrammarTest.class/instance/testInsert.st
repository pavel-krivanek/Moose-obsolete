tests
testInsert
	self 
		parse: ' INSERT ' "result should be 'INSERT' "
		rule: #insert.

	self 
		parse: ' Insert ' "result should be 'Insert' "
		rule: #insert.