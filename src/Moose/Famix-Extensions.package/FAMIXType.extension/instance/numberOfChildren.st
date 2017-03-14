*Famix-Extensions
numberOfChildren
	<MSEProperty: #numberOfChildren type: #Number>
	<derived>
	<MSEComment: 'The number of subclasses of a class'>
	
	^self
		lookUpPropertyNamed: #numberOfChildren
		computedAs: [self subInheritances size]