tests
testCreateTableWithConstraints
	
	super testCreateTableWithConstraints.
	
	self assert: (result isMemberOf: SQLCreateTableStmtNode).
	self assert: result completeName equals: 'mydb.Delegation'.
	self assert: result name equals: 'Delegation'.
	
	self assert: result constraints size equals: 2.
	self assert: result constraints first second isPKConstraint.
	self assert: result constraints second second isFKConstraint.
