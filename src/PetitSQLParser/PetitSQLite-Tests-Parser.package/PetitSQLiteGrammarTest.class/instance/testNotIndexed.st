tests
testNotIndexed
	self 
		parse: 'not indexed'
		rule: #notIndexed.
		
	self 
		parse: 'NOT INDEXED'
		rule: #notIndexed.