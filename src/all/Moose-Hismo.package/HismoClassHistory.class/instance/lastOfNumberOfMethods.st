properties
lastOfNumberOfMethods
	<MSEProperty: #lastOfNumberOfMethods type: #Number>
	<MSEComment: 'The last number of methods'>

	^self
		lookUpPropertyNamed: #lastOfNumberOfMethods
		computedAs: [self last numberOfMethods]