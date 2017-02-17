primitives
identifier
	^ self class allowUnderscoreAssignment
		ifTrue: [ #letter asParser , #word asParser star ]
		ifFalse: [
			(PPPredicateObjectParser
				on: [ :each | each isLetter or: [ each = $_ ] ]
				message: 'letter expected') ,
			(PPPredicateObjectParser
				on: [ :each | each isAlphaNumeric or: [ each = $_ ] ]
				message: 'letter or digit expected') star ]