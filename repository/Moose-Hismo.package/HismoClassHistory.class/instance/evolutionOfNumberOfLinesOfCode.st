properties
evolutionOfNumberOfLinesOfCode
	<MSEProperty: #evolutionOfNumberOfLinesOfCode type: #Number>
	<MSEComment: 'The sum of the number of lines of code added or removed in subsequent versions'>

	^self
		lookUpPropertyNamed: #evolutionOfNumberOfLinesOfCode
		computedAs: [self evolutionOfPropertyNamed: #numberOfLinesOfCode]