accessing
elementValidatorStack
	^ elementValidatorStack ifNil: [elementValidatorStack := OrderedCollection new]