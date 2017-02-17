tests
testColumnConstraintIsUniqueConstraint

	self 
		parse: ' CONSTRAINT PK_CONFI_ID  unique '
		rule: #columnConstraint.
