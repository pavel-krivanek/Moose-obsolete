*Famix-Extensions
numberOfLinesOfCode
	<MSEProperty: #numberOfLinesOfCode type: #Number>
	<MSEComment: 'The number of classes in the model'>
	^ self
		lookUpPropertyNamed: #numberOfLinesOfCode
		computedAs: [ self allMethods sum: #numberOfLinesOfCode ]