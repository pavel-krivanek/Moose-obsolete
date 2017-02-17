public
addExamples: aCollection
	aCollection ifNil: [ ^ self ].
	aCollection do: [ :value | self addExample: value ]