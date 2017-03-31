properties
removedNumberOfLinesOfCode
	<MSEProperty: #removedNumberOfLinesOfCode type: #Number>
	<MSEComment: 'Removed number of LOC'>

	^self
		lookUpPropertyNamed: #removedNumberOfLinesOfCode
		computedAs: [self removedPropertyNamed: #numberOfLinesOfCode]