*Famix-Extensions
totalNumberOfChildren
	<MSEProperty: #totalNumberOfChildren type: #Number>
	<derived>	
	<MSEComment: 'The total number of subclasses of a class'>
	
	^self
		lookUpPropertyNamed: #totalNumberOfChildren
		computedAs: [self subclassHierarchyGroup size]