accessing-derived
depth
	^ self isRoot
		ifTrue: [ 0 ]
		ifFalse: [ self parent depth + 1 ]