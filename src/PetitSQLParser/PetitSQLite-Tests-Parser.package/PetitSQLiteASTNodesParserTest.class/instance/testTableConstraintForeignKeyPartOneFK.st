tests
testTableConstraintForeignKeyPartOneFK
	super testTableConstraintForeignKeyPartOneFK.
	self assert: (result isMemberOf: SQLTableConstraintNode).
	self deny: result isPKConstraint.
	self assert: result isFKConstraint.
	self deny: result isUnique.
	self assert: result fkColumnNames size equals: 1.
	self assert: result fkColumnNames first equals: 'ColFirst'.
	self assert: result referencedTableName equals: 'tableName'