compiling-names
annotationStringForProperty: property
	| ann |
	property type notNil should beTrue.
	ann := '%<MSEProperty: <1s> type: <2s>' expandMacrosWith: property name asSymbol printString
		with: (self classNameFor: property type) printString.
	property hasOpposite ifTrue: [ ann := ann , ' opposite: ' , (self oppositeNameFor: property) printString ].
	ann := ann , '>'.
	property isMultivalued ifTrue: [ ann := ann , ' <multivalued>' ].
	property isDerived ifTrue: [ ann := ann , ' <derived>' ].
	property hasKey ifTrue: [ ann := ann , ' <key: ' , property key printString , '>' ].
	^ ann