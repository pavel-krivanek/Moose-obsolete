tokens
alterTableConstraintUnique
	"Modified the standard grammar of the SQLite alter table to accept also the definition of a unique constraint"
	^( (constraint , identifier) optional , 
	unique , $( asPParser trim optional , (identifier separatedBy: $, asPParser trim) , $) asPParser trim optional , (('USING' asPParser caseInsensitive , index) / ('ENABLE' asPParser caseInsensitive , 'NOVALIDATE' asPParser caseInsensitive)) optional ) trim 