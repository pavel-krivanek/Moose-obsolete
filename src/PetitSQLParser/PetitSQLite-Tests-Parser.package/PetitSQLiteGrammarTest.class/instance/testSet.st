tests
testSet
	self 
		parse: ' SET ' "result should be 'SET' "
		rule: #set.

	self 
		parse: 'Set ' "result should be 'Set' "
		rule: #set.