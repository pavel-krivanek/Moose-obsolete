metrics
averageNumberOfAttributes
	<MSEProperty: #averageNumberOfAttributes type: #Number>
	<MSEComment: 'Average number of attributes per class'>

	^self
		lookUpPropertyNamed: #averageNumberOfAttributes
		computedAs: [(self average: [:each | each numberOfAttributes ]) asFloat]