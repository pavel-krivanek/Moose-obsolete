metrics
averageNumberOfStatements
	<MSEProperty: #averageNumberOfStatements type: #Number>
	<MSEComment: 'Average number of statements per class'>	

	^self
		lookUpPropertyNamed: #averageNumberOfStatements
		computedAs: [(self average: [:each | each numberOfStatements]) asFloat]