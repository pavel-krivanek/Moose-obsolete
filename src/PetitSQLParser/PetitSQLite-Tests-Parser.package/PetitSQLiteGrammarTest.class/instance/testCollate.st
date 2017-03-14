tests
testCollate
	self 
		parse: ' COLLATE ' "result should be 'COLLATE' "
		rule: #collate.

	self 
		parse: 'Collate ' "result should be 'Collate' "
		rule: #collate.