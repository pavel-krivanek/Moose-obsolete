tests
testJoinOperatorNaturalLeftOuterJoin
	"http://www.sqlite.org/syntaxdiagrams.html#join-op"
		
	self
		parse: 'NATURAL LEFT Outer JOIN' 
		rule: #joinOperator.
