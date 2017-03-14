converting
printOn: aStream

	aStream nextPutAll: self from asString.
	aStream nextPutAll: ' -> '.
	aStream nextPutAll: self to asString