*Famix-Extensions
numberOfMethodsOverriden
	<MSEProperty: #numberOfMethodsOverriden type: #Number>
	<derived>
	<MSEComment: 'The number of methods in a class overriden with respect to super classes'>
			
	^self
		lookUpPropertyNamed: #numberOfMethodsOverriden
		computedAs: [self numberOfMethods - self numberOfMethodsAdded]