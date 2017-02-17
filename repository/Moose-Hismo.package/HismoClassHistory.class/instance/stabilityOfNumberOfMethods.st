properties
stabilityOfNumberOfMethods
	<MSEProperty: #stabilityOfNumberOfMethods type: #Number>
	<MSEComment: 'Stability of number of methods'>

	^self
		lookUpPropertyNamed: #stabilityOfNumberOfMethods
		computedAs: [self stabilityOfPropertyNamed: #numberOfMethods]