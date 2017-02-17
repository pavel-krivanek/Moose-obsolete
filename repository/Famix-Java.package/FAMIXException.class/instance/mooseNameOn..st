accessing
mooseNameOn: aStream 
	aStream nextPutAll: (self class name removePrefix: 'FAMIX').
	aStream nextPut: $-.
	self exceptionClass notNil ifTrue: [self exceptionClass mooseNameOn: aStream]