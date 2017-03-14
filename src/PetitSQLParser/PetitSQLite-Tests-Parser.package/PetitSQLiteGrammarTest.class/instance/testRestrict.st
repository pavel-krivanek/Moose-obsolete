tests
testRestrict
	self 
		parse: ' RESTRICT ' "result should be 'RESTRICT' "
		rule: #restrict.

	self 
		parse: 'Restrict ' "result should be 'Restrict' "
		rule: #restrict.