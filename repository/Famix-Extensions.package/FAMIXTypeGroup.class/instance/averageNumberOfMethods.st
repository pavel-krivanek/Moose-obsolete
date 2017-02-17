metrics
averageNumberOfMethods
	<MSEProperty: #averageNumberOfMethods type: #Number>
	<MSEComment: 'Average number of methods per class'>

	^self
		lookUpPropertyNamed: #averageNumberOfMethods
		computedAs: [(self average: [:each | each numberOfMethods ]) asFloat]