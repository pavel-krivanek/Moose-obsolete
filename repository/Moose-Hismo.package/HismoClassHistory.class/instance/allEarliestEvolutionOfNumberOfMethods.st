properties
allEarliestEvolutionOfNumberOfMethods
	<MSEProperty: #allEarliestEvolutionOfNumberOfMethods type: #Number>
	<MSEComment: 'All earliest evolution of number of methods'>

	^self
		lookUpPropertyNamed: #allEarliestEvolutionOfNumberOfMethods
		computedAs: [self allEarliestEvolutionOfPropertyNamed: #numberOfMethods]