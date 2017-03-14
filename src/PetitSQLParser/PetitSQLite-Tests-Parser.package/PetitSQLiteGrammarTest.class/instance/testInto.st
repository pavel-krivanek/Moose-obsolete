tests
testInto
	self 
		parse: ' INTO ' "result should be 'INTO' "
		rule: #into.

	self 
		parse: ' Into ' "result should be 'Into' "
		rule: #into.