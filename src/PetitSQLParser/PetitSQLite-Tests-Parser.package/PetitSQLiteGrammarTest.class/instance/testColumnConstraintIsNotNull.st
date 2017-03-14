tests
testColumnConstraintIsNotNull

	self 
		parse: ' NOT NULL'
		rule: #columnConstraint.
