metrics
averageNumberOfInvocations
	<MSEProperty: #averageNumberOfInvocations type: #Number>
	<MSEComment: 'Average number of invocations per methods'>

	^self
		lookUpPropertyNamed: #averageNumberOfInvocations
		computedAs: [self average: [:each | each numberOfOutgoingInvocations ]]