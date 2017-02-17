properties
evolutionOfNumberOfStatementsPer5
	<MSEProperty: #evolutionOfNumberOfStatementsPer5 type: #Number>
	<MSEComment: 'The sum of the number of statements added or removed in subsequent versions per 5'>

	^self
		lookUpPropertyNamed: #evolutionOfNumberOfStatementsPer5
		computedAs: [(self evolutionOfPropertyNamed: #numberOfStatements) / 5]