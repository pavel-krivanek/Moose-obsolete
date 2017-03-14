tests
testCheck
	self 
		parse: ' CHECK' "result should be 'CHECK' "
		rule: #check.

	self 
		parse: 'Check ' "result should be 'Check' "
		rule: #check.