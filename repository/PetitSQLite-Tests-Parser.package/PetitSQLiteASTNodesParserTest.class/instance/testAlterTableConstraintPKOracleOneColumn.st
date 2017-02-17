tests
testAlterTableConstraintPKOracleOneColumn
	super testAlterTableConstraintPKOracleOneColumn.
	self assert: (result isKindOf: SQLTableConstraintNode).
	self assert: result name equals: 'PK_M_INS_LT'.
	self deny: result isFKConstraint.
	self assert: result isPKConstraint.
	self assert: result referencedTableName equals: nil.
	self assert: result fkColumnNames size equals: 0.
	self assert: result pkColumnNames size equals: 1.
	self assert: result pkColumnNames first equals: 'SCHUTIT_KEY'