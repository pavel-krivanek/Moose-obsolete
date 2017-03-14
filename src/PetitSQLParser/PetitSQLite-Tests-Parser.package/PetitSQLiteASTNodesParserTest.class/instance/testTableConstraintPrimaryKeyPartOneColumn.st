tests
testTableConstraintPrimaryKeyPartOneColumn
	super testTableConstraintPrimaryKeyPartOneColumn.
	self assert: (result isMemberOf: SQLTableConstraintNode).
	self assert: result isPKConstraint.
	self deny: result isFKConstraint.
	self assert: result pkColumnNames size equals: 1.
	self assert: result pkColumnNames first equals: 'ColFirst'