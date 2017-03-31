*Famix-Extensions
numberOfModelClasses
	<MSEProperty: #numberOfModelClasses type: #Number>
	<MSEComment: 'The number of classes in the model'>
	
	^self
		lookUpPropertyNamed: #numberOfModelClasses
		computedAs: [ self allModelClasses size ]