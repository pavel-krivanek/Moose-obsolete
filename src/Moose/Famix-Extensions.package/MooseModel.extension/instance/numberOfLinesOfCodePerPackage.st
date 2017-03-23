*Famix-Extensions
numberOfLinesOfCodePerPackage
	<MSEProperty: #numberOfLinesOfCodePerPackage type: #Number>
	<MSEComment: 'The number of lines of code per package in the model'>
	^ self
		lookUpPropertyNamed: #numberOfLinesOfCodePerPackage
		computedAs: [ self numberOfLinesOfCode / self numberOfPackages ]