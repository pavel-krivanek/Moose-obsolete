accessing
totalSteps
	^ steps
		ifNil: [0]
		ifNotNil: [steps size]