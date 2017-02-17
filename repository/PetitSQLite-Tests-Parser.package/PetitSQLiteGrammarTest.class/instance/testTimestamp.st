tests
testTimestamp
	
	self 
		parse: '2943-10-09 11:06:56'
		rule: #timestamp.
		
	self 
		parse: '2943-65-31 29:86:70'
		rule: #timestamp.