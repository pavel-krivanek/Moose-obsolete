tests
testValues
	self 
		parse: ' VALUES ' "result should be 'VALUES' "
		rule: #values.

	self 
		parse: ' Values ' "result should be 'Values' "
		rule: #values.