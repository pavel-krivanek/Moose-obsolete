tests
testAlterTableAddConstraintOnePK
	super testAlterTableAddConstraintOnePK.
	self assert: (result isKindOf: SQLAlterTableStmtNode).
	self assert: result nameOfTableToAlter equals: 'M_INSN_LT'.
	self deny: result constraints isEmpty.
	self assert: (result constraints first isKindOf: SQLTableConstraintNode).
	self assert: result constraints first name equals: 'PK_M_INS_LT'.
	self deny: result constraints first isFKConstraint.
	self assert: result constraints first isPKConstraint.
	self assert: result constraints first referencedTableName equals: nil.
	self assert: result constraints first fkColumnNames size equals: 0.
	self assert: result constraints first pkColumnNames size equals: 1.
	self assert: result constraints first pkColumnNames first equals: 'SCHUTIT_KEY'