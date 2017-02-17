tests
testJoinOperatorLeftJoin
	"http://www.sqlite.org/syntaxdiagrams.html#join-op"
	self
		parse: 'LEFT JOIN' 
		rule: #joinOperator.