tests
testDistinct
	self 
		parse: ' DISTINCT ' "result should be 'DISTINCT' "
		rule: #distinct.

	self 
		parse: ' Distinct ' "result should be 'Distinct' "
		rule: #distinct.