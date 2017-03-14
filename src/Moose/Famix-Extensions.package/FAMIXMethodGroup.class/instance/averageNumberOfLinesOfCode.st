metrics
averageNumberOfLinesOfCode
	<MSEProperty: #averageNumberOfLinesOfCode type: #Number>
	<MSEComment: 'Average number of lines of code per methods'>

	^self
		lookUpPropertyNamed: #averageNumberOfLinesOfCode
		computedAs: [self average: [:each | each numberOfLinesOfCode ]]