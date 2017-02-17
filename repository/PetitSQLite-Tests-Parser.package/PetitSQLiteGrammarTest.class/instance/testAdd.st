tests
testAdd
	self 
		parse: ' ADD ' "result should be 'ADD' "
		rule: #add.

	self 
		parse: ' Add ' "result should be 'Add' "
		rule: #add.