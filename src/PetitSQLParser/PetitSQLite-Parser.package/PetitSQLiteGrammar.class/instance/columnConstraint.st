constraints
columnConstraint
	"http://www.sqlite.org/syntaxdiagrams.html#column-constraint"
	"Added ENABLE after NOT NULL to cover a column constraint from some sql dialects"
	
	^	(constraint , identifier) optional ,
	( columnConstraintPrimaryKey /
	notNullConstraint /
	null / "added MySQL specific Constraint"
	( unique , conflictClause ) /
	( check , expressionInRoundParentheses ) /
	defaultConstraint /
	( collate , identifier ) /
	unsigned / "MySQL specific constraint"
	foreignKeyClause ).