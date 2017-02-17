properties
evolutionOfNumberOfStatements
	<MSEProperty: #evolutionOfNumberOfStatements type: #Number>
	<MSEComment: 'The sum of the number of statements added or removed in subsequent versions'>

	^self
		lookUpPropertyNamed: #evolutionOfNumberOfStatements
		computedAs: [self evolutionOfPropertyNamed: #numberOfStatements]