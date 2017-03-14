properties
stabilityOfNumberOfAttributes
	<MSEProperty: #stabilityOfNumberOfAttributes type: #Number>
	<MSEComment: 'Stability of number of attributes'>

	^self
		lookUpPropertyNamed: #stabilityOfNumberOfAttributes
		computedAs: [self stabilityOfPropertyNamed: #numberOfAttributes]