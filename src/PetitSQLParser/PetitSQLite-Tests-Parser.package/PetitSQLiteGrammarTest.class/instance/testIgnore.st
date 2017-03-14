tests
testIgnore
	self 
		parse: ' Replace ' "result should be 'Replace' "
		rule: #replace.

	self 
		parse: 'REPLACE ' "result should be 'REPLACE' "
		rule: #replace.