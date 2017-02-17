tests
testAlterTableAddConstraintMultipleFKs
	super testAlterTableAddConstraintMultipleFKs.
	self assert: (result isKindOf: SQLAlterTableStmtNode).
	self assert: result nameOfTableToAlter equals: 'M_INSN_LT'.
	self deny: result constraints isEmpty.
	self assert: (result constraints first isKindOf: SQLTableConstraintNode).
	self assert: result constraints first name equals: 'FK_CRL_ID'.
	self assert: result constraints first isFKConstraint.
	self deny: result constraints first isPKConstraint.
	self assert: result constraints first referencedTableName equals: 'CM_R_IP_RL'.
	self assert: result constraints first fkColumnNames size equals: 4.
	self assert: (result constraints first fkColumnNames allSatisfy: [ :el | el isString ]).
	self assert: result constraints first pkColumnNames size equals: 4.
	self assert: (result constraints first pkColumnNames allSatisfy: [ :el | el isString ])