tests
testSelect
	self 
		parse: ' SELECT ' "result should be 'SELECT' "
		rule: #select.

	self 
		parse: 'Select ' "result should be 'Select' "
		rule: #select.