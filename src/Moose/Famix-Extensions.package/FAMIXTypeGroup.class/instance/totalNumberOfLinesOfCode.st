metrics
totalNumberOfLinesOfCode
	<MSEProperty: #totalNumberOfLinesOfCode type: #Number>
	<derived>
	<MSEComment: 'Total number of lines of code'>

	^self
		lookUpPropertyNamed: #totalNumberOfLinesOfCode
		computedAs: [(self sumNumbers: [:each | each numberOfLinesOfCode]) asFloat]