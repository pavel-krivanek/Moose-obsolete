parsers
integer
	^ PPPredicateObjectParser
		on: [ :each | each isKindOf: Integer ]
		message: 'integer expected'