tests
testJoinOperatorComma
	"http://www.sqlite.org/syntaxdiagrams.html#join-op"
	
	self
		parse: ',' 
		rule: #joinOperator.