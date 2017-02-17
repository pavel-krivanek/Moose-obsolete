*SmallDude-Moose-properties
numberOfExternalDuplications
	<MSEProperty: #numberOfExternalDuplications type: #Number>
	<MSEComment: 'The number of pairs of duplicate fragments between this file and other files'>
	<derived>
	^ self lookUpPropertyNamed: #numberOfExternalDuplications computedAs: [ self allExternalDuplications size ]