properties
allEvolutionOfNumberOfMethods	
	<MSEProperty: #allEvolutionOfNumberOfMethods type: #Number>
	<MSEComment: 'All evolution of number of methods'>
	
	^self
		lookUpPropertyNamed: #allEvolutionOfNumberOfMethods
		computedAs: [self allEvolutionOfPropertyNamed: #numberOfMethods]