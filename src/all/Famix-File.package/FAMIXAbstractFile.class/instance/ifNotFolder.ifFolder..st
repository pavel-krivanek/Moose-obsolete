testing
ifNotFolder: aBlock1 ifFolder: aBlock2
	^ self isFolder ifFalse: [ aBlock1 value ] ifTrue: [ aBlock2 value ]