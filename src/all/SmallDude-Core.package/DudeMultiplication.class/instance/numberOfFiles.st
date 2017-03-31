properties
numberOfFiles 
	<MSEProperty: #numberOfFiles type: #Number>
	<derived>
	<MSEComment: 'The number of distinct files covered in this multiplication'>

	^self 
		lookUpPropertyNamed: #numberOfFiles 
		computedAs: [self getNumberOfFiles]