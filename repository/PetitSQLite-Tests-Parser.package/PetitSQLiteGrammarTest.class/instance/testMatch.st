tests
testMatch
	self 
		parse: ' MATCH ' "result should be 'MATCH' "
		rule: #match.

	self 
		parse: 'Match ' "result should be 'Match' "
		rule: #match.