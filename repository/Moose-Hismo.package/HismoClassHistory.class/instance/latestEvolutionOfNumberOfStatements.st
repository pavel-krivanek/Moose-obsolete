properties
latestEvolutionOfNumberOfStatements
	<MSEProperty: #latestEvolutionOfNumberOfStatements type: #Number>
	<MSEComment: 'Latest evolution of number of statements'>

	^self
		lookUpPropertyNamed: #latestEvolutionOfNumberOfStatements
		computedAs: [self latestEvolutionOfPropertyNamed: #numberOfStatements]