*SmallDude-Moose-properties
numberOfInternalClones
	<MSEProperty: #numberOfInternalClones type: #Number>
	<MSEComment: 'The number of cloned fragments within the file'>
	<derived>
	^ self lookUpPropertyNamed: #numberOfInternalClones computedAs: [ self internalFragments size ]