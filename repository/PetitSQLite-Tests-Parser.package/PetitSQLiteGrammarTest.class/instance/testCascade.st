tests
testCascade
	self 
		parse: ' CASCADE ' "result should be 'CASCADE' "
		rule: #cascade.

	self 
		parse: 'Cascade ' "result should be 'Cascade' "
		rule: #cascade.