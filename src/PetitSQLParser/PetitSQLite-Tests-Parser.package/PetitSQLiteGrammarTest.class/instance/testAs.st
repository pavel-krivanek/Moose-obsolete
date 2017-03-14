tests
testAs
	self 
		parse: ' as ' "result should be 'as' "
		rule: #as.

	self 
		parse: 'AS ' "result should be 'AS' "
		rule: #as.