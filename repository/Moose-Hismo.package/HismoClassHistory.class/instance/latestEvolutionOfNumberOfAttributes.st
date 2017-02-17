properties
latestEvolutionOfNumberOfAttributes
	<MSEProperty: #latestEvolutionOfNumberOfAttributes type: #Number>
	<MSEComment: 'Latest evolution of number of attributes'>

	^self
		lookUpPropertyNamed: #latestEvolutionOfNumberOfAttributes
		computedAs: [self latestEvolutionOfPropertyNamed: #numberOfAttributes]