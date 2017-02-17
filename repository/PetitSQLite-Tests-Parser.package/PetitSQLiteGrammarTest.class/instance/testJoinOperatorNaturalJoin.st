tests
testJoinOperatorNaturalJoin
	"http://www.sqlite.org/syntaxdiagrams.html#join-op"

	self
		parse: 'NATURAL JOIN' 
		rule: #joinOperator.