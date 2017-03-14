tests
testAbort
	self 
		parse: ' Abort ' "result should be 'Abort' "
		rule: #abort.

	self 
		parse: 'ABORT ' "result should be 'ABORT' "
		rule: #abort.