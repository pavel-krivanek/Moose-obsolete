tests
testUnique
	self 
		parse: ' UNIQUE' "result should be 'UNIQUE' "
		rule: #unique.

	self 
		parse: 'Unique ' "result should be 'Unique' "
		rule: #unique.