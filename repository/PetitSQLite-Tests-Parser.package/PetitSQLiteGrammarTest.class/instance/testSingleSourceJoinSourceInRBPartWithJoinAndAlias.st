tests
testSingleSourceJoinSourceInRBPartWithJoinAndAlias

	self 
		parse: '( tab1.col as col natural join anotherCol )'
		rule: #singleSource.