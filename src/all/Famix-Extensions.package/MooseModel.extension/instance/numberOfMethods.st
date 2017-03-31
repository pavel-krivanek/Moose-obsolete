*Famix-Extensions
numberOfMethods
	<MSEProperty: #numberOfMethods type: #Number>
	<MSEComment: 'The number of methods'>
	
	^self
		lookUpPropertyNamed: #numberOfMethods
		computedAs: [ self allMethods size ]