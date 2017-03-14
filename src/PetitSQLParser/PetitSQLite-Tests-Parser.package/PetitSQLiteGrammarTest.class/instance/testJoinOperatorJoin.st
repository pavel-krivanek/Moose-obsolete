tests
testJoinOperatorJoin
	"http://www.sqlite.org/syntaxdiagrams.html#join-op"

	self
		parse: 'JOIN' 
		rule: #joinOperator.
