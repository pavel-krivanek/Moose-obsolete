properties
numberOfLinesOfText
	<MSEProperty: #numberOfLinesOfText type: #Number>
	<MSEComment: 'Number of lines of text which are not empty in a folder '>
	<derived>
	^ self 
		lookUpPropertyNamed: #numberOfLinesOfText 
		computedAs: [self totalNumberOfLinesOfText - self numberOfEmptyLinesOfText]