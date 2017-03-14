tests
testJoinOperatorLeftOuterJoin
	"http://www.sqlite.org/syntaxdiagrams.html#join-op"

	self
		parse: 'LEFT Outer JOIN' 
		rule: #joinOperator.
