tests
testIndexed
	self 
		parse: ' INDEXED ' "result should be 'INDEXED' "
		rule: #indexed.

	self 
		parse: 'Indexed ' "result should be 'Indexed' "
		rule: #indexed.