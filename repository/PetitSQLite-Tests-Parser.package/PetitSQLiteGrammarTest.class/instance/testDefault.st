tests
testDefault
	self 
		parse: ' DEFAULT ' "result should be 'DEFAULT' "
		rule: #default.

	self 
		parse: 'Default ' "result should be 'Default' "
		rule: #default.