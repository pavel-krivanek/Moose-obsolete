accessing
declarationType
	^ self isParameter
		ifTrue: ['ENTITY %']
		ifFalse: ['ENTITY']