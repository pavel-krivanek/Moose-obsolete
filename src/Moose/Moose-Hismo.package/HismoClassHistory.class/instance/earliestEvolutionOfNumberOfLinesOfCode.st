properties
earliestEvolutionOfNumberOfLinesOfCode
	<MSEProperty: #earliestEvolutionOfNumberOfLinesOfCode type: #Number>
	<MSEComment: 'Earliest evolution of number of lines of code'>

	^self
		lookUpPropertyNamed: #earliestEvolutionOfNumberOfLinesOfCode
		computedAs: [self earliestEvolutionOfPropertyNamed: #numberOfLinesOfCode]