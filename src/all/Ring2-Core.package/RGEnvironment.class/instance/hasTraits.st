as yet unclassified
hasTraits

	self behaviorsDo: [ :each |
		each isTrait ifTrue: [ ^ true ] ].
	
	^ false