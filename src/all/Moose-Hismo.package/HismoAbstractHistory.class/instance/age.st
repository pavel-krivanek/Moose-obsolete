properties
age
	<MSEProperty: #age type: #Number>
	<MSEComment: 'Age of the history'>
	
	^self
		lookUpPropertyNamed: #age
		computedAs: [self size]