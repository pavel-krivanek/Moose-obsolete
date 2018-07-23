Class {
	#name : #FmxNGJavaException,
	#superclass : #FmxNGJavaEntity,
	#traits : 'FmxNGTException',
	#classTraits : 'FmxNGTException classTrait',
	#category : #'FmxNGJava-Entities-Entities'
}

{ #category : #meta }
FmxNGJavaException class >> annotation [

	<generated>
	<MSEClass: #Exception super: #FmxNGJavaEntity>
	<package: #'FmxNGJava-Entities'>
	<generated>
	^self
]

{ #category : #generator }
FmxNGJavaException class >> generatedSlotNames [
	<generated>
	'FmxNGJavaException class>>#generatedSlotNames'.
	^ #()
]

{ #category : #generator }
FmxNGJavaException class >> generatedTraitNames [
	<generated>
	^ #(FmxNGTException)
]

{ #category : #meta }
FmxNGJavaException class >> requirements [

	<generated>
	^ {  }
]

{ #category : #deprecated }
FmxNGJavaException >> definingMethod [

	^ self definingEntity
	

]

{ #category : #deprecated }
FmxNGJavaException >> definingMethod: aMethod [ 

	^ self definingEntity: aMethod 
	

]

{ #category : #accessing }
FmxNGJavaException >> mooseNameOn: aStream [ 
	aStream nextPutAll: (self class name withoutPrefix: 'FmxNGJava').
	aStream nextPut: $-.
	self exceptionClass notNil ifTrue: [self exceptionClass mooseNameOn: aStream]
]
