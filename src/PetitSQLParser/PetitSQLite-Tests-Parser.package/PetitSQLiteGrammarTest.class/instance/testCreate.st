tests
testCreate
	self 
		parse: ' create ' "result should be 'create' "
		rule: #create.

	self 
		parse: 'Create ' "result should be 'Create' "
		rule: #create.