*Famix-Extensions
numberOfModelMethods
	<MSEProperty: #numberOfModelMethods type: #Number>
	<MSEComment: 'The number of methods in the model'>
	
	^self
		lookUpPropertyNamed: #numberOfModelMethods
		computedAs: [ self allModelMethods size ]