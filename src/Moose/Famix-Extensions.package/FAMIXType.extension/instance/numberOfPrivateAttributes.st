*Famix-Extensions
numberOfPrivateAttributes
	<MSEProperty: #numberOfPrivateAttributes type: #Number>
	<derived>
	<MSEComment: 'The number of private attributes in a class'>
	
	^self
		lookUpPropertyNamed: #numberOfPrivateAttributes
		computedAs: [(self attributes select: [:each | each isPrivate]) size]