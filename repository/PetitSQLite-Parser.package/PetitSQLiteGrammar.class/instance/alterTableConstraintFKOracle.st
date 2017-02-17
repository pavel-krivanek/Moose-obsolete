tokens
alterTableConstraintFKOracle
	"Modified the standard grammar of the SQLite alter table to accept also the definition of an oracle constraint"
	^(	(constraint , identifier) optional , 
		foreignKey , $( asPParser trim optional , (identifier separatedBy: $, asPParser trim) , $) asPParser trim optional , 
		foreignKeyClause).