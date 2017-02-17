tests
testColumnConstraintIsPKConstraint

	self 
		parse: ' CONSTRAINT PK_CONFI_ID 
	PRIMARY KEY ' 
		rule: #columnConstraint.