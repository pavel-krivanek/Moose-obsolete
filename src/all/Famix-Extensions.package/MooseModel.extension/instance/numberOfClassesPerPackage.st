*Famix-Extensions
numberOfClassesPerPackage
	<MSEProperty: #numberOfClassesPerPackage type: #Number>
	<MSEComment: 'The number of methods per package in the model'>
	^ self
		lookUpPropertyNamed: #numberOfClassesPerPackage
		computedAs: [ self numberOfMethods / self numberOfClasses ]