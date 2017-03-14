tests
testFail
	self 
		parse: ' Fail ' "result should be 'Fail' "
		rule: #fail.

	self 
		parse: 'FAIL ' "result should be 'FAIL' "
		rule: #fail.