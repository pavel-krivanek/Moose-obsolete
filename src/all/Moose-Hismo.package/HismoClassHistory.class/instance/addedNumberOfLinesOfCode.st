properties
addedNumberOfLinesOfCode
	<MSEProperty: #addedNumberOfLinesOfCode type: #Number>
	<MSEComment: 'Added number of LOC'>

	^self
		lookUpPropertyNamed: #addedNumberOfLinesOfCode
		computedAs: [self addedPropertyNamed: #numberOfLinesOfCode]