*SmallDude-Moose-properties
numberOfExternalClones
	<MSEProperty: #numberOfExternalClones type: #Number>
	<MSEComment: 'The number of fragments in this file cloned in other files'>
	<derived>
	^ self lookUpPropertyNamed: #numberOfExternalClones computedAs: [ self externalFragments size ]