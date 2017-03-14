*SmallDude-Moose-accessing derived
numberOfInternalDuplications 
	<MSEProperty: #numberOfInternalDuplications type: #Number>
	<derived>
	<MSEComment:  'The number of pairs of duplicate fragments within the class'>

	^self 
		lookUpPropertyNamed: #numberOfInternalDuplications 
		computedAs: [self allInternalDuplications size]