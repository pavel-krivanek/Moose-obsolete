*Famix-Extensions
numberOfLinesOfCode

	<MSEProperty: #numberOfLinesOfCode type: #Number>
	<derived>
	<MSEComment: 'The number of lines of code in a class'>

	^self
		lookUpPropertyNamed: #numberOfLinesOfCode
		computedAs: [self methodsGroup sumNumbers: #numberOfLinesOfCode]