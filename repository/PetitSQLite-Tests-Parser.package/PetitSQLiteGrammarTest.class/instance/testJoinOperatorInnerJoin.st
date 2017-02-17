tests
testJoinOperatorInnerJoin
	"http://www.sqlite.org/syntaxdiagrams.html#join-op"		
	self
		parse: 'INNER JOIN' 
		rule: #joinOperator.
