tests
testAlterTableConstraintFKOracleSeveralColumns
	super testAlterTableConstraintFKOracleSeveralColumns.
	self assert: (result isKindOf: SQLTableConstraintNode).
	self assert: result name equals: 'FK_CRL_ID'.
	self assert: result isFKConstraint.
	self deny: result isPKConstraint.
	self assert: result referencedTableName equals: 'CM_R_IP_RL'.
	self assert: result fkColumnNames size equals: 4.
	self assert: (result fkColumnNames allSatisfy: [ :el | el isString ]).
	self assert: result pkColumnNames size equals: 4.
	self assert: (result fkColumnNames allSatisfy: [ :el | el isString ])