tests
testAlter
	self 
		parse: ' Alter ' "result should be 'Alter' "
		rule: #alter.

	self 
		parse: 'ALTER ' "result should be 'ALTER' "
		rule: #alter.