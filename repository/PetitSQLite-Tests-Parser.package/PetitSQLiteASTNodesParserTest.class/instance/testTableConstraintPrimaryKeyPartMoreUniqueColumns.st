tests
testTableConstraintPrimaryKeyPartMoreUniqueColumns
	super testTableConstraintPrimaryKeyPartMoreUniqueColumns.
	self assert: (result isMemberOf: SQLTableConstraintNode).
	self deny: result isPKConstraint.
	self deny: result isFKConstraint.
	self assert: result isUnique.
	self assert: result uniqueColumnNames size equals: 2.
	self assert: result uniqueColumnNames first equals: 'ColFirst'.
	self assert: result uniqueColumnNames second equals: 'colSecond'