tests
testNotNullConstraintWithClauses

	self 
		parse: ' NOT NULL ON CONFLICT ROLLBACK'
		rule: #notNullConstraint.
