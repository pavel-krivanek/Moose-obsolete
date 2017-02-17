*SmallDude-Moose-properties
numberOfInternalDuplications
	<MSEProperty: #numberOfInternalDuplications type: #Number>
	<MSEComment: 'The number of pairs of duplicate fragments within the file'>
	<derived>
	^ self lookUpPropertyNamed: #numberOfInternalDuplications computedAs: [ self allInternalDuplications size ]