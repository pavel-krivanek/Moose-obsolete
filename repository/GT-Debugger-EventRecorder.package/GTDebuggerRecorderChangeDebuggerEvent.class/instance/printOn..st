printing
printOn: aStream
	aStream nextPutAll: 'Change to '.
	aStream nextPutAll: self debuggerClass asString