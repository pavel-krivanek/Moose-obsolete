*Famix-Extensions
numberOfClasses
	<MSEProperty: #numberOfClasses type: #Number>
	<MSEComment: 'The number of classes'>
	
	^self
		lookUpPropertyNamed: #numberOfClasses
		computedAs: [ self allClasses size ]