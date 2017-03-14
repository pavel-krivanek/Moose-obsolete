tests
testBy
	self 
		parse: ' BY ' "result should be 'BY' "
		rule: #by.

	self 
		parse: 'By ' "result should be 'By' "
		rule: #by.