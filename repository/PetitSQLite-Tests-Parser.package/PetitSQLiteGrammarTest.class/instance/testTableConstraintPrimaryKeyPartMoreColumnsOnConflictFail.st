tests
testTableConstraintPrimaryKeyPartMoreColumnsOnConflictFail

	self 
		parse: ' primary key (ColFirst, colSecond) on conflict fail '
		rule: #tableConstraintPrimaryKeyPart.