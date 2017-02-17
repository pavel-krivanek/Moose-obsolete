tests
testTableConstraintPrimaryKeyPartWithUniqueOnMoreColumnsOnConflictRollback
	self 
		parse: ' unique (ColFirst, colSecond) on conflict rollback'
		rule: #tableConstraintPrimaryKeyPart.