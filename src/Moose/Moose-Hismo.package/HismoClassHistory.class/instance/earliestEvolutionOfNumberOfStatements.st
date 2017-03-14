properties
earliestEvolutionOfNumberOfStatements
	<MSEProperty: #earliestEvolutionOfNumberOfMethods type: #Number>
	<MSEComment: 'Earliest evolution of number of statements'>

	^self
		lookUpPropertyNamed: #earliestEvolutionOfNumberOfMethods
		computedAs: [self earliestEvolutionOfPropertyNamed: #numberOfStatements]