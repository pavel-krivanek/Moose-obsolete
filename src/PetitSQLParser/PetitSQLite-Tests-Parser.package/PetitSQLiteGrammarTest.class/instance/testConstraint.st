tests
testConstraint
	self 
		parse: ' CONSTRAINT '
		rule: #constraint.

	self 
		parse: 'Constraint '
		rule: #constraint.