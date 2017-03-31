properties
allLatestEvolutionOfNumberOfMethods
	<MSEProperty: #allLatestEvolutionOfNumberOfMethods type: #Number>
	<MSEComment: 'All latest evolution of number of methods'>

	^self
		lookUpPropertyNamed: #allLatestEvolutionOfNumberOfMethods
		computedAs: [self allLatestEvolutionOfPropertyNamed: #numberOfMethods]