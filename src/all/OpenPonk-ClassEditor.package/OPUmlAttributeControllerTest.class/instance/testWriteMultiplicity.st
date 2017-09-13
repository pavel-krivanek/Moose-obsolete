tests
testWriteMultiplicity
	| prop |
	prop := OPUMLProperty new.
	controller writeMultiplicityFrom: '3..*' to: prop.
	self assert: prop lowerBound value equals: 3.
	self assert: prop upperBound value equals: '*'