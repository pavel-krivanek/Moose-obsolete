public
removeExamples: aCollection
	aCollection ifNil: [ ^ self ].
	aCollection do: [ :value | self removeExample: value ]