*Famix-Extensions
numberOfStatements
	<MSEProperty: #numberOfStatements type: #Number>
	<derived>
	<MSEComment: 'The number of statements in a class'>
			
	^self
		lookUpPropertyNamed: #numberOfStatements
		computedAs: [self methodsGroup sumNumbers: #numberOfStatements]