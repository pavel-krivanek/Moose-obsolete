*GT-Examples-UI
gtDisplayValidityOn: aStream
	self isValid ifTrue: [ ^ self ].
	
	self exists ifFalse: [ ^ aStream nextPutAll: ' [does not exist]' ].
	self hasValidArguments ifFalse: [ ^ aStream nextPutAll: '[invalid arguments]' ].
	aStream nextPutAll: ' [invalid]'