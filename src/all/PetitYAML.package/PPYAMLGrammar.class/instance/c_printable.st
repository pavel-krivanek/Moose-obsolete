spec
c_printable
	^ PPPredicateObjectParser on: (PPCharSetPredicate on: 
			[ :e | e asInteger >= 32 or: [ e isSeparator ] ]) message: 'c_printable expected' 