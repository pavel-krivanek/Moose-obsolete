testing
ifFileExistsDo: aBlock
	name isNil ifTrue: [ ^ aBlock value ].
	^ self fileExists ifTrue: [ aBlock value ]