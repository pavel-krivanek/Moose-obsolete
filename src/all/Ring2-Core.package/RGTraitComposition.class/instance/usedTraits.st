as yet unclassified
usedTraits

	^ self transformations flatCollect: [ :each | 
		each isTrait 
			ifTrue: [ {each} ]
			ifFalse: [ each usedTraits ].
		 ] as: IdentitySet.