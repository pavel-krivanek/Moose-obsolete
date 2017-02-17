tests
testAlterTableAddConstraintMultiplePKs
	super testAlterTableAddConstraintMultiplePKs.
	self assert: (result isKindOf: SQLAlterTableStmtNode).
	self assert: result nameOfTableToAlter equals: 'M_INSN_LT'.
	self deny: result constraints isEmpty.
	self assert: (result constraints first isKindOf: SQLTableConstraintNode).
	self assert: result constraints first name equals: 'PK_IP_RELATION_CTRL_ID'.
	self deny: result constraints first isFKConstraint.
	self assert: result constraints first isPKConstraint.
	self assert: result constraints first referencedTableName equals: nil.
	self assert: result constraints first fkColumnNames size equals: 0.
	self assert: result constraints first pkColumnNames size equals: 3.
	self assert: result constraints first pkColumnNames first equals: 'IP_CTRL_ID_PARENT'.
	self assert: result constraints first pkColumnNames second equals: 'IP_CTRL_ID_CHILD'.
	self assert: result constraints first pkColumnNames third equals: 'RELATION_TYPE_CD'