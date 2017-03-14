constraints
tableConstraint
	"http://www.sqlite.org/syntaxdiagrams.html#table-constraint"

	^( constraint , identifier ) optional ,
	(tableConstraintPrimaryKeyPart /
	tableConstraintForeignKeyPart /
	tableConstraintCheckPart ).