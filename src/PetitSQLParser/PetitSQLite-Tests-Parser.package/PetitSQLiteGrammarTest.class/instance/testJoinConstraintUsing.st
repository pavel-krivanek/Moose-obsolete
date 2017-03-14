tests
testJoinConstraintUsing

	self 
		parse: ' USING ( col1 ,col2 , col3 )'
		rule: #joinConstraint.