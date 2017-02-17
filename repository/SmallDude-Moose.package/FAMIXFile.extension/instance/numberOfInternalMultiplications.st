*SmallDude-Moose-properties
numberOfInternalMultiplications
	<MSEProperty: #numberOfInternalMultiplications type: #Number>
	<MSEComment: 'The number of original fragments duplicated internally'>
	<derived>
	^ self lookUpPropertyNamed: #numberOfInternalMultiplications computedAs: [ self allInternalMultiplications size ]