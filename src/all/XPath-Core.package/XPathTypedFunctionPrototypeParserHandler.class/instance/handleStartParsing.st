handling
handleStartParsing
	minArguments := 0.
	maxArguments := 0.
	argumentTypes := OrderedCollection new.

	typesByName := Dictionary new.
	XPathValueType withAllSubclassesDo: [:each | | type |
		type := each new.
		typesByName
			at: type name
			put: type].