tests
testAlterTableConstraintPKOracleNoName
	super testAlterTableConstraintPKOracleNoName.
	self assert: (result isKindOf: SQLTableConstraintNode).
	self assert: result name equals: nil.
	self deny: result isFKConstraint.
	self assert: result isPKConstraint.
	self assert: result referencedTableName equals: nil.
	self assert: result fkColumnNames size equals: 0.
	self assert: result pkColumnNames size equals: 3.
	self assert: result pkColumnNames first equals: 'IP_CTRL_ID_PARENT'.
	self assert: result pkColumnNames second equals: 'IP_CTRL_ID_CHILD'.
	self assert: result pkColumnNames third equals: 'RELATION_TYPE_CD'