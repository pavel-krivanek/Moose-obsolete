tests
testOr
	self 
		parse: ' OR' "result should be 'OR' "
		rule: #or.

	self 
		parse: 'Or ' "result should be 'Or' "
		rule: #or.
