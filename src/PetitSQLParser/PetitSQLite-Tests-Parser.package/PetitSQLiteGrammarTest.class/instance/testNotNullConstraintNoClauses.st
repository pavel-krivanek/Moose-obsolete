tests
testNotNullConstraintNoClauses

	self 
		parse: ' NOT NULL'
		rule: #notNullConstraint.
