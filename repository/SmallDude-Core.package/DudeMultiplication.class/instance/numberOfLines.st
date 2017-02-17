properties
numberOfLines 
	 <MSEProperty: #numberOfLines type: #Number>
	<derived>
	<MSEComment: 'The number of distinct file fragments that have been cloned'>

	^self 
		lookUpPropertyNamed: #numberOfLines 
		computedAs: [ self getNumberOfLines ]