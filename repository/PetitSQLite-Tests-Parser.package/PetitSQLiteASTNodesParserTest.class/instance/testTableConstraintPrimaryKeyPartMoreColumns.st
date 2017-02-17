tests
testTableConstraintPrimaryKeyPartMoreColumns
	super testTableConstraintPrimaryKeyPartMoreColumns.
	self assert: (result isMemberOf: SQLTableConstraintNode).
	self assert: result isPKConstraint.
	self deny: result isFKConstraint.
	self assert: result pkColumnNames size equals: 2.
	self assert: result pkColumnNames first equals: 'ColFirst'.
	self assert: result pkColumnNames second equals: 'colSecond'