properties
addedNumberOfStatements
	<MSEProperty: #addedNumberOfStatements type: #Number>
	<MSEComment: 'Added number of statements'>
	
	^self
		lookUpPropertyNamed: #addedNumberOfStatements
		computedAs: [self addedPropertyNamed: #numberOfStatements]