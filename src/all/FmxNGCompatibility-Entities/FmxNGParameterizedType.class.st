Class {
	#name : #FmxNGParameterizedType,
	#superclass : #FmxNGParameterizedTypeGenerated,
	#category : #'FmxNGCompatibility-Entities-Entities'
}

{ #category : #meta }
FmxNGParameterizedType class >> annotation [

	<MSEClass: #ParameterizedType super: #FmxNGParameterizedTypeGenerated>
	<package: #'FmxNGCompatibility-Generated'>
	^self
]

{ #category : #enumerating }
FmxNGParameterizedType >> allSubclassesDo: aBlock [
	"we override this traversal because we want to
	traverse the parameter type"

	self parameterizableClass ifNotNil: [ :a | a withSubclassesDo: aBlock ]
]

{ #category : #enumerating }
FmxNGParameterizedType >> allSuperclassesDo: aBlock [
	"we override this traversal because we want to
	traverse the parameter type"

	self parameterizableClass ifNotNil: [ :a | a withSuperclassesDo: aBlock ]
]

{ #category : #testing }
FmxNGParameterizedType >> isParameterizedType [
	^ true
]

{ #category : #'Famix-Implementation' }
FmxNGParameterizedType >> mooseNameOn: aStream [ 
	self parameterizableClass notNil 
		ifTrue: [self parameterizableClass mooseNameOn: aStream].
	aStream nextPut: $<.
	self arguments 
		do: [:each | each mooseNameOn: aStream]
		separatedBy: [aStream nextPut: $,].  
	aStream nextPut: $>.  

]
