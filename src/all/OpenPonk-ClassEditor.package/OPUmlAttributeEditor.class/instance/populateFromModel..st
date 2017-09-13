opening
populateFromModel: anAttribute
	| type value |
	type := anAttribute declaredType ifNotNil: #name.
	value := anAttribute defaultValue ifNil: [ '' ] ifNotNil: #valueExpression.
	value
		ifEmpty: [ noDefaultRadio toggleState.
			^ self ].
	(Smalltalk hasClassNamed: type)
		ifFalse: [ value
				ifNotEmpty: [ codeRadio toggleState.
					codeInput text: value.
					^ self ] ].
	(type asClass isKindOf: Number class)
		ifTrue: [ numberRadio toggleState.
			numberInput text: value.
			unitInput text: (anAttribute unit ifNil: [ '' ]).
			^ self ].
	type = #Boolean
		ifTrue: [ booleanRadio toggleState.
			booleanSelect setSelectedItem: value.
			^ self ].
	(type asClass isKindOf: String class)
		ifTrue: [ stringRadio toggleState.
			stringInput text: (self unwrapString: value).
			^ self ].
	((type asClass isKindOf: Collection class)
		and: [ (type asClass isKindOf: ByteArray class) not ])
		ifTrue: [ collectionRadio toggleState.
			collectionSelect setSelectedItem: type.
			^ self ].
	value
		ifNotEmpty: [ codeRadio toggleState.
			codeInput text: value.
			^ self ]