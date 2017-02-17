properties
evolutionOfNumberOfMethods
	<MSEProperty: #evolutionOfNumberOfMethods type: #Number>
	<MSEComment: 'The sum of the number of methods added or removed in subsequent versions'>

	^self
		lookUpPropertyNamed: #evolutionOfNumberOfMethods
		computedAs: [self evolutionOfPropertyNamed: #numberOfMethods]