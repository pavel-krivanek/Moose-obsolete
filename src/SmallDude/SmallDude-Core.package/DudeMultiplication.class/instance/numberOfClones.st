properties
numberOfClones 
	 <MSEProperty: #numberOfClones type: #Number>
	<derived>
	<MSEComment: 'The number of distinct file fragments that have been cloned'>

	^self 
		lookUpPropertyNamed: #numberOfClones 
		computedAs: [self getNumberOfClones]