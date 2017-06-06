testing
ifFileExistsDo: aBlock
	name ifNil: [ ^ aBlock value ].
	^ self fileExists ifTrue: [ aBlock value ]