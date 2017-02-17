tests
testImmediate
	self 
		parse: ' IMMEDIATE ' "result should be 'IMMEDIATE' "
		rule: #immediate.

	self 
		parse: ' Immediate ' "result should be 'Immediate' "
		rule: #immediate.