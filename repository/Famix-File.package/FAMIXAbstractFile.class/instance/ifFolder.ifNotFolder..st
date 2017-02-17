testing
ifFolder: aBlock1 ifNotFolder: aBlock2
	^ self isFolder ifTrue: [ aBlock1 value ] ifFalse: [ aBlock2 value ]