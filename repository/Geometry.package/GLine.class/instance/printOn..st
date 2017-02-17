printing
printOn: aStream
	a printOn: aStream.
	aStream nextPutAll: 'x '.
	b sign >= 0 ifTrue: [ 
		aStream nextPut: $+ ].
	b printOn: aStream.
	aStream nextPutAll: 'y '.
	c sign >= 0 ifTrue: [ 
		aStream nextPut: $+ ].
	c printOn: aStream.
	aStream nextPutAll: ' = 0'.
	