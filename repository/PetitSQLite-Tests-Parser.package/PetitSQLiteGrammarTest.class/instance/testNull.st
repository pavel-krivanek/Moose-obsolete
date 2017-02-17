tests
testNull
	self 
		parse: ' NULL ' "result should be 'NULL' "
		rule: #null.

	self 
		parse: 'Null ' "result should be 'Null' "
		rule: #null.