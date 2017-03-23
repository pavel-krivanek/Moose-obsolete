*Famix-Extensions
numberOfLinesOfCodePerMethod
	<MSEProperty: #numberOfLinesOfCodePerMethod type: #Number>
	<MSEComment: 'The number of lines of code per method in the model'>
	^ self
		lookUpPropertyNamed: #numberOfLinesOfCodePerMethod
		computedAs: [ self numberOfLinesOfCode / self numberOfMethods ]