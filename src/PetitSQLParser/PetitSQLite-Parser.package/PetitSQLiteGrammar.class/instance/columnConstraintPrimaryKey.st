constraints-elements
columnConstraintPrimaryKey
	"http://www.sqlite.org/syntaxdiagrams.html#column-constraint"
	
	^primaryKey , (asc / desc) optional , conflictClause , autoincrement optional