printing
mooseDisplayStringOn: aStream
	self from mooseDisplayStringOn: aStream.
	aStream nextPutAll: ' -> '.
	self to mooseDisplayStringOn: aStream	