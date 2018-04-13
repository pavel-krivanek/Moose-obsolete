Class {
	#name : #FmxNGException,
	#superclass : #FmxNGExceptionGenerated,
	#category : #'FmxNGCompatibility-Entities-Entities'
}

{ #category : #printing }
FmxNGException >> mooseNameOn: aStream [ 
	aStream nextPutAll: (self class name removePrefix: 'FAMIX').
	aStream nextPut: $-.
	self exceptionClass notNil ifTrue: [self exceptionClass mooseNameOn: aStream]
]
