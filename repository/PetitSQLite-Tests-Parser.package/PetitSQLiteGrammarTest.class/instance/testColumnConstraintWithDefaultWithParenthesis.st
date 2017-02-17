tests
testColumnConstraintWithDefaultWithParenthesis

	self 
		parse: ' default ( test ) '
		rule: #columnConstraint.