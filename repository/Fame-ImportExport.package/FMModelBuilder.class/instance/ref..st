DSL
ref: reference

	reference isNumber
		ifTrue: [ client referenceNumber: reference ]
		ifFalse: [ client referenceName: reference asString ]
		