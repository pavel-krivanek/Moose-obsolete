tests
testOn
	self 
		parse: ' ON ' "result should be 'ON' "
		rule: #on.

	self 
		parse: 'On ' "result should be 'On' "
		rule: #on.