testing
ifNotFolder: aBlock
	^ self isFolder ifFalse: [ aBlock value ]