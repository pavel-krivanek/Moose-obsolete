tests
testExplain
	self 
		parse: ' EXPLAIN ' "result should be 'EXPLAIN' "
		rule: #explain.

	self 
		parse: 'Explain ' "result should be 'Explain' "
		rule: #explain.