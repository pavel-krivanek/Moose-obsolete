parsers
string
	^ PPPredicateObjectParser
		on: [ :each | each isKindOf: String ]
		message: 'string expected'