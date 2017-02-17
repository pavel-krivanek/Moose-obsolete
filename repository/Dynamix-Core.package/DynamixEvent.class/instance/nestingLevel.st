accessing
nestingLevel

	^ self isRoot 
		ifTrue: [ 0 ] 
		ifFalse: [ self parent nestingLevel + 1 ]