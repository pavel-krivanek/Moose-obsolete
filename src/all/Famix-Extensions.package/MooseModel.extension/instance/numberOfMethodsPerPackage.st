*Famix-Extensions
numberOfMethodsPerPackage
	<MSEProperty: #numberOfClassesPerPackage type: #Number>
	<MSEComment: 'The number of methods per package in the model'>
	^ self
		lookUpPropertyNamed: #numberOfMethodsPerPackage
		computedAs: [ self numberOfMethods / self numberOfPackages ]