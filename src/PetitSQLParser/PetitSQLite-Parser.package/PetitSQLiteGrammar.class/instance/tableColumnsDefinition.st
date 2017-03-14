statements-elements
tableColumnsDefinition
	^( ( columnDef separatedBy: $, asPParser trim ) ,  ( $, asPParser trim , tableConstraint ) star )