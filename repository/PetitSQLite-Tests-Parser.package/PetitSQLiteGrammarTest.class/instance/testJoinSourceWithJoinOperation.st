tests
testJoinSourceWithJoinOperation
	
	self 
		parse: 'tab1.col natural join anotherCol' 
		rule: #joinSource