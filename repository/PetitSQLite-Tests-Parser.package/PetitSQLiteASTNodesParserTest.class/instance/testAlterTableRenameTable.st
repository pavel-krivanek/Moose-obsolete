tests
testAlterTableRenameTable
	super testAlterTableRenameTable.
	self assert: (result isKindOf: SQLAlterTableStmtNode).
	self assert: result isRename.
	self assert: result nameOfTableToAlter equals: 'M_INSN_LT'.
	self assert: result newTableName equals: 'TEstName'