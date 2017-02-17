tests
testTableConstraintPrimaryKeyPartOneUniqueColumn
	super testTableConstraintPrimaryKeyPartOneUniqueColumn.
	self assert: (result isMemberOf: SQLTableConstraintNode).
	self deny: result isPKConstraint.
	self deny: result isFKConstraint.
	self assert: result isUnique.
	self assert: result uniqueColumnNames size equals: 1.
	self assert: result uniqueColumnNames first equals: 'ColFirst'