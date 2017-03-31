*Famix-Implementation
printOn: aStream

	self content ifNotNil: 
		[ aStream nextPutAll: (self content contractTo: 50) ].
	aStream nextPutAll: ' (comment on '.
	self container printOn: aStream.
	aStream nextPut: $)