Class {
	#name : #FmxNGException,
	#superclass : #FmxNGEntity,
	#traits : 'FmxNGTException',
	#classTraits : 'FmxNGTException classTrait',
	#category : #'FmxNGCompatibility-Entities-Entities'
}

{ #category : #meta }
FmxNGException class >> annotation [

	<generated>
	<MSEClass: #Exception super: #FmxNGEntity>
	<package: #'FmxNGCompatibility-Entities'>
	<generated>
	^self
]

{ #category : #generator }
FmxNGException class >> generatedSlotNames [
	<generated>
	^ #()
]

{ #category : #generator }
FmxNGException class >> generatedTraitNames [
	<generated>
	^ #(FmxNGTException)
]

{ #category : #meta }
FmxNGException class >> requirements [

	<generated>
	^ {  }
]

{ #category : #compatibility }
FmxNGException >> definingMethod [

	^ self definingEntity
	

]

{ #category : #compatibility }
FmxNGException >> definingMethod: aMethod [ 

	^ self definingEntity: aMethod 
	

]

{ #category : #accessing }
FmxNGException >> mooseNameOn: aStream [ 
	aStream nextPutAll: (self class name withoutPrefix: 'FAMIX').
	aStream nextPut: $-.
	self exceptionClass notNil ifTrue: [self exceptionClass mooseNameOn: aStream]
]
