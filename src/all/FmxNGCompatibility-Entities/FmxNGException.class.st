Class {
	#name : #FmxNGException,
	#superclass : #FmxNGExceptionGenerated,
	#category : #'FmxNGCompatibility-Entities-Entities'
}

{ #category : #meta }
FmxNGException class >> annotation [

	<MSEClass: #Exception super: #FmxNGExceptionGenerated>
	<package: #'FmxNGCompatibility-Generated'>
	^self
]

{ #category : #printing }
FmxNGException >> mooseNameOn: aStream [ 
	aStream nextPutAll: (self class name removePrefix: 'FAMIX').
	aStream nextPut: $-.
	self exceptionClass notNil ifTrue: [self exceptionClass mooseNameOn: aStream]
]
