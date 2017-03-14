tests
testAll
	self 
		parse: ' ALL ' "result should be 'ALL' "
		rule: #all.

	self 
		parse: ' All ' "result should be 'All' "
		rule: #all.