tests
testJoinConstraintONAndExpression
	
	self 
		parse: 'ON test in active (''Y'',''N'')'
		rule: #joinConstraint.
