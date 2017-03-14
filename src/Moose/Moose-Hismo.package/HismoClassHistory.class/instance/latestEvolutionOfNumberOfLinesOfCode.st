properties
latestEvolutionOfNumberOfLinesOfCode
	<MSEProperty: #latestEvolutionOfNumberOfLinesOfCode type: #Number>
	<MSEComment: 'Latest evolution of number of lines of code'>

	^self
		lookUpPropertyNamed: #latestEvolutionOfNumberOfLinesOfCode
		computedAs: [self latestEvolutionOfPropertyNamed: #numberOfLinesOfCode]