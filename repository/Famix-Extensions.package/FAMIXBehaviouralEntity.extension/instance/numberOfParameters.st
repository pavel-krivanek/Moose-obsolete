*Famix-Extensions
numberOfParameters
	<MSEProperty: #numberOfParameters type: #Number>
	<MSEComment: 'The number of parameters in a method'>
	
	^self
		lookUpPropertyNamed: #numberOfParameters
		computedAs: [self parameters size]