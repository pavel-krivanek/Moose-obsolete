tests
testReplace
	self 
		parse: ' REPLACE ' "result should be 'REPLACE' "
		rule: #replace.

	self 
		parse: 'Replace ' "result should be 'Replace' "
		rule: #replace.