accessing-derived
depth
	^self ancestor ifNil: [ 1 ] ifNotNil: [ 1 + self ancestor depth ]