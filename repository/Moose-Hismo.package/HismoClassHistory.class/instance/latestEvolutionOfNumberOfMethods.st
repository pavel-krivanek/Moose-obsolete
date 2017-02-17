properties
latestEvolutionOfNumberOfMethods
	<MSEProperty: #latestEvolutionOfNumberOfMethods type: #Number>
	<MSEComment: 'Latest evolution of number of methods'>

	^self
		lookUpPropertyNamed: #latestEvolutionOfNumberOfMethods
		computedAs: [self latestEvolutionOfPropertyNamed: #numberOfMethods]