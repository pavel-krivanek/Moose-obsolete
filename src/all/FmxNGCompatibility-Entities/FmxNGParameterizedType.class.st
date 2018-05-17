Class {
	#name : #FmxNGParameterizedType,
	#superclass : #FmxNGType,
	#traits : 'FmxNGTParameterizedType + FmxNGTWithParameterizedTypeUsers',
	#classTraits : 'FmxNGTParameterizedType classTrait + FmxNGTWithParameterizedTypeUsers classTrait',
	#category : #'FmxNGCompatibility-Entities-Entities'
}

{ #category : #meta }
FmxNGParameterizedType class >> annotation [

	<generated>
	<MSEClass: #ParameterizedType super: #FmxNGType>
	<package: #'FmxNGCompatibility-Entities'>
	<generated>
	^self
]

{ #category : #generator }
FmxNGParameterizedType class >> generatedSlotNames [
	<generated>
	^ #()
]

{ #category : #generator }
FmxNGParameterizedType class >> generatedTraitNames [
	<generated>
	^ #(FmxNGTParameterizedType FmxNGTWithParameterizedTypeUsers)
]

{ #category : #meta }
FmxNGParameterizedType class >> requirements [

	<generated>
	^ {  }
]

{ #category : #accessing }
FmxNGParameterizedType >> allSubclassesDo: aBlock [
	"we override this traversal because we want to
	traverse the parameter type"

	self parameterizableClass ifNotNil: [ :a | a withSubclassesDo: aBlock ]
]

{ #category : #accessing }
FmxNGParameterizedType >> allSuperclassesDo: aBlock [
	"we override this traversal because we want to
	traverse the parameter type"

	self parameterizableClass ifNotNil: [ :a | a withSuperclassesDo: aBlock ]
]

{ #category : #testing }
FmxNGParameterizedType >> isParameterizedType [
	^ true
]

{ #category : #printing }
FmxNGParameterizedType >> mooseNameOn: aStream [ 
	self parameterizableClass notNil 
		ifTrue: [self parameterizableClass mooseNameOn: aStream].
	aStream nextPut: $<.
	self arguments 
		do: [:each | each mooseNameOn: aStream]
		separatedBy: [aStream nextPut: $,].  
	aStream nextPut: $>.  

]

{ #category : #'moosechef-scoping-filtering' }
FmxNGParameterizedType >> namespaceScope [
	"we ask the namespaceScope of the parameterizable class"
	
	^ self parameterizableClass ifNotNil: [
		self parameterizableClass namespaceScope ]
]
