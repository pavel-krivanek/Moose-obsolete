tests
testColumnConstraintIsCollate

	self 
		parse: ' CONSTRAINT PK_CONFI_ID  collate identifier '
		rule: #columnConstraint.