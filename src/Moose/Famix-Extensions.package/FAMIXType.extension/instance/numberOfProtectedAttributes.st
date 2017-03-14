*Famix-Extensions
numberOfProtectedAttributes
	<MSEProperty: #numberOfProtectedAttributes type: #Number>
	<derived>
	<MSEComment: 'The number of protected attributes in a class'>				
	
	^self
		lookUpPropertyNamed: #numberOfProtectedAttributes
		computedAs: [(self attributes select: [:each | each isProtected]) size]