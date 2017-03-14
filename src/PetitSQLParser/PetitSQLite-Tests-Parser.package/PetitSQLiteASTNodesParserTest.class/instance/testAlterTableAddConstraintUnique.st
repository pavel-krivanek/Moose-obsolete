tests
testAlterTableAddConstraintUnique
	super testAlterTableAddConstraintUnique.
	self assert: (result isKindOf: SQLAlterTableStmtNode).
	self assert: result nameOfTableToAlter equals: 'UDF_TEST'.
	self deny: result constraints isEmpty.
	self assert: (result constraints first isKindOf: SQLTableConstraintNode).
	self assert: result constraints first name equals: 'BIN$hFqLFqNzTUaOtkmeJTbToQ'.
	self deny: result constraints first isFKConstraint.
	self deny: result constraints first isPKConstraint.
	self assert: result constraints first isUnique.
	self assert: result constraints first referencedTableName equals: nil.
	self assert: result constraints first fkColumnNames size equals: 0.
	self assert: result constraints first pkColumnNames size equals: 0.
	self assert: result constraints first uniqueColumnNames size equals: 1.
	self assert: result constraints first uniqueColumnNames first equals: 'UDF_TEST_PK'