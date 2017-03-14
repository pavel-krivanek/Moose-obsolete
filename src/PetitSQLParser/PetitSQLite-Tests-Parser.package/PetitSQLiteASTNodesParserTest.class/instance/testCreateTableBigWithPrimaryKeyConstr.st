tests
testCreateTableBigWithPrimaryKeyConstr
	super testCreateTableBigWithPrimaryKeyConstr.
	self assert: (result isMemberOf: SQLCreateTableStmtNode).
	self assert: result constraints isCollection.
	self assert: (result constraints first second isMemberOf: SQLTableConstraintNode).
	self assert: result constraints first second isPKConstraint.
	self assert: result constraints first second pkColumnNames size equals: 1.
	self assert: result constraints first second pkColumnNames first equals: 'A_xxx_yyy_ID'