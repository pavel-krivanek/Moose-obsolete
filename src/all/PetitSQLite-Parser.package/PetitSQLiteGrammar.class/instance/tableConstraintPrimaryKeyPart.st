constraints-elements
tableConstraintPrimaryKeyPart
	"http://www.sqlite.org/syntaxdiagrams.html#table-constraint"
	
	^( primaryKey / unique ) , indexedColumnsInRoundParentheses , conflictClause