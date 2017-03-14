properties
numberOfCharacters
	<MSEProperty: #numberOfCharacters type: #Number>
	<MSEComment: 'Number of characters in a file.'>
	<derived>
	^ self
		lookUpPropertyNamed: #numberOfCharacters
		computedAs: [ 
			| result |
			result := self fileExists
				ifTrue: [ self sourceText size - self totalNumberOfLinesOfText + 1 ]
				ifFalse: [ 0 ].
			result max: 0 ]