tests
testJoinOperatorNaturalCrossJoin
	"http://www.sqlite.org/syntaxdiagrams.html#join-op"

	self
		parse: 'NATURAL CROSS JOIN' 
		rule: #joinOperator.