metrics
averageNumberOfParameters
	<MSEProperty: #averageNumberOfParameters type: #Number>
	<MSEComment: 'Average number of parameters per methods'>
	
	^self
		lookUpPropertyNamed: #averageNumberOfParameters
		computedAs: [self average: [:each | each numberOfParameters]]