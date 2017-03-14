tests
testAsc
	self 
		parse: ' ASC' "result should be 'ASC' "
		rule: #asc.

	self 
		parse: 'asc ' "result should be 'asc' "
		rule: #asc.