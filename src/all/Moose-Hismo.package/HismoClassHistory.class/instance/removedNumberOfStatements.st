properties
removedNumberOfStatements
	<MSEProperty: #removedNumberOfStatements type: #Number>
	<MSEComment: 'Removed number of statements'>

	^self
		lookUpPropertyNamed: #removedNumberOfStatements
		computedAs: [self removedPropertyNamed: #numberOfStatements]