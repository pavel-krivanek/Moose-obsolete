unresolved objects
createUnresolvedClassGroupFor: anRGBehavior 

	^ 	anRGBehavior isMeta
		ifFalse: [ anRGBehavior ]
		ifTrue: [ anRGBehavior metaclass].
