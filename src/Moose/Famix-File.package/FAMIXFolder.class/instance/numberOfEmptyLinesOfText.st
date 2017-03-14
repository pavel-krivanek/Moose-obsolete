properties
numberOfEmptyLinesOfText
	<MSEProperty: #numberOfEmptyLinesOfText type: #Number>
	<MSEComment: 'Number of empty lines of text'>
	<derived>
	^ self lookUpPropertyNamed: #numberOfEmptyLinesOfText computedAs: [ 
		self files, self folders sumNumbers: #numberOfEmptyLinesOfText
	]