properties
earliestEvolutionOfNumberOfMethods
	<MSEProperty: #earliestEvolutionOfNumberOfMethods type: #Number>
	<MSEComment: 'Earliest evolution of number of methods'>

	^self
		lookUpPropertyNamed: #earliestEvolutionOfNumberOfMethods
		computedAs: [self earliestEvolutionOfPropertyNamed: #numberOfMethods]