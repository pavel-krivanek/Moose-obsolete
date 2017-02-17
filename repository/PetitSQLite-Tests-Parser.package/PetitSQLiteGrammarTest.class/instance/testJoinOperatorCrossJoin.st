tests
testJoinOperatorCrossJoin
	"http://www.sqlite.org/syntaxdiagrams.html#join-op"

	self
		parse: 'CROSS JOIN' 
		rule: #joinOperator.
