*SmallDude-Moose-accessing derived
numberOfExternalDuplications 
	<MSEProperty: #numberOfExternalDuplications type: #Number>
	<derived>
	<MSEComment: 'The number of pairs of duplicate fragments between this class and other classes'>

	^self 
		lookUpPropertyNamed: #numberOfExternalDuplications 
		computedAs: [self allExternalDuplications size]