tests
testTableConstraintForeignKeyPartMoreFKs
	super testTableConstraintForeignKeyPartMoreFKs.
	self assert: (result isMemberOf: SQLTableConstraintNode).
	self deny: result isPKConstraint.
	self assert: result isFKConstraint.
	self deny: result isUnique.
	self assert: result fkColumnNames size equals: 2.
	self assert: result fkColumnNames first equals: 'ColFirst'.
	self assert: result fkColumnNames second equals: 'colSecond'.
	self assert: result referencedTableName equals: 'tableName'