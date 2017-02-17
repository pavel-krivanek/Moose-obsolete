tests
testSelectCoreWithStar
	self 
		parse: ' SELECT * 
		FROM table' 
		rule: #selectCore.
