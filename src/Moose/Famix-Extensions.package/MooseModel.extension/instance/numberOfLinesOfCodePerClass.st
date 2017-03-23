*Famix-Extensions
numberOfLinesOfCodePerClass
	<MSEProperty: #numberOfLinesOfCodePerClass type: #Number>
	<MSEComment: 'The number of lines of code per class in the model'>
	^ self
		lookUpPropertyNamed: #numberOfLinesOfCodePerClass
		computedAs: [ self numberOfLinesOfCode / self numberOfClasses ]