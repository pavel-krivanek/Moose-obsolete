properties
earliestEvolutionOfNumberOfAttributes
	<MSEProperty: #earliestEvolutionOfNumberOfAttributes type: #Number>
	<MSEComment: 'Earliest evolution of number of attributes'>

	^self
		lookUpPropertyNamed: #earliestEvolutionOfNumberOfAttributes
		computedAs: [self earliestEvolutionOfPropertyNamed: #numberOfAttributes]