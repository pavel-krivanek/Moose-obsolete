tests
testTableConstraintPKIdentifierWithUnderscores

	self 
		parse: ' CONSTRAINT AD_PrintFormat_Key PRIMARY KEY (AD_PrintFormat_ID) '
		rule: #tableConstraint.

