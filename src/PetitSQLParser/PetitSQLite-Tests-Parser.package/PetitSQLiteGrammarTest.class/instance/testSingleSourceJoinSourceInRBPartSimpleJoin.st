tests
testSingleSourceJoinSourceInRBPartSimpleJoin

	self 
		parse: '( tab1.col natural join anotherCol )'
		rule: #singleSourceJoinSourceInRBPart