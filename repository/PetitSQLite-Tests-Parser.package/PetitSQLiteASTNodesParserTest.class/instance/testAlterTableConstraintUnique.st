tests
testAlterTableConstraintUnique
	super testAlterTableConstraintUnique.
	self assert: (result isKindOf: SQLTableConstraintNode).
	self deny: result isFKConstraint.
	self deny: result isPKConstraint.
	self deny: result isCheck.
	self assert: result isUnique.
	self assert: result uniqueColumnNames size equals: 1.
	self assert: result uniqueColumnNames first equals: 'ITEMS_ID'