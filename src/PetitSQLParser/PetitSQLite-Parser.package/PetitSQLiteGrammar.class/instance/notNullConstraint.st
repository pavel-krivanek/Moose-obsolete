constraints
notNullConstraint
	"http://www.sqlite.org/syntaxdiagrams.html#column-constraint"
	"Added ENABLE after NOT NULL to cover a column constraint from some sql dialects"
	
	^notNull , 'ENABLE' asPParser caseInsensitive optional , conflictClause