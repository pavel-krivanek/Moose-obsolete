tokens
alterTableConstraintPKOracle
	"Modified the standard grammar of the SQLite alter table to accept also the definition of an oracle constraint"
	^( (constraint , identifier) optional , 
	primaryKey , $( asPParser trim optional , (identifier separatedBy: $, asPParser trim) , $) asPParser trim optional , (('USING' asPParser caseInsensitive , index) / ('ENABLE' asPParser caseInsensitive , 'NOVALIDATE' asPParser caseInsensitive)) optional ) trim 