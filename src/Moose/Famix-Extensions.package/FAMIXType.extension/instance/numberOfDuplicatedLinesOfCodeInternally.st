*Famix-Extensions
numberOfDuplicatedLinesOfCodeInternally
	<MSEProperty: #numberOfDuplicatedLinesOfCodeInternally type: #Number>
	<derived>
	<MSEComment: 'The number of duplicated lines of code internally'>		

	^self
		lookUpPropertyNamed: #numberOfDuplicatedLinesOfCodeInternally
		computedAs: [self notExistentMetricValue]