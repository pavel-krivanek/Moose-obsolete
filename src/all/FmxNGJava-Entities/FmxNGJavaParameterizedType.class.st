Class {
	#name : #FmxNGJavaParameterizedType,
	#superclass : #FmxNGJavaType,
	#traits : 'FmxNGTParameterizedType + FmxNGTWithParameterizedTypeUsers',
	#classTraits : 'FmxNGTParameterizedType classTrait + FmxNGTWithParameterizedTypeUsers classTrait',
	#category : #'FmxNGJava-Entities-Entities'
}

{ #category : #meta }
FmxNGJavaParameterizedType class >> annotation [

	<generated>
	<MSEClass: #ParameterizedType super: #FmxNGJavaType>
	<package: #'FmxNGJava-Entities'>
	<generated>
	^self
]

{ #category : #generator }
FmxNGJavaParameterizedType class >> generatedSlotNames [
	<generated>
	'FmxNGJavaParameterizedType class>>#generatedSlotNames'.
	^ #()
]

{ #category : #generator }
FmxNGJavaParameterizedType class >> generatedTraitNames [
	<generated>
	^ #(FmxNGTParameterizedType FmxNGTWithParameterizedTypeUsers)
]

{ #category : #meta }
FmxNGJavaParameterizedType class >> requirements [

	<generated>
	^ {  }
]

{ #category : #'as yet unclassified' }
FmxNGJavaParameterizedType >> allSubclassesDo: aBlock [
	"we override this traversal because we want to
	traverse the parameter type"

	self parameterizableClass ifNotNil: [ :a | a withSubclassesDo: aBlock ]
]

{ #category : #'as yet unclassified' }
FmxNGJavaParameterizedType >> allSuperclassesDo: aBlock [
	"we override this traversal because we want to
	traverse the parameter type"

	self parameterizableClass ifNotNil: [ :a | a withSuperclassesDo: aBlock ]
]

{ #category : #'as yet unclassified' }
FmxNGJavaParameterizedType >> isParameterizedType [
	^ true
]

{ #category : #'as yet unclassified' }
FmxNGJavaParameterizedType >> mooseNameOn: aStream [ 
	self parameterizableClass notNil 
		ifTrue: [self parameterizableClass mooseNameOn: aStream].
	aStream nextPut: $<.
	self arguments 
		do: [:each | each mooseNameOn: aStream]
		separatedBy: [aStream nextPut: $,].  
	aStream nextPut: $>.  

]

{ #category : #'as yet unclassified' }
FmxNGJavaParameterizedType >> namespaceScope [
	"we ask the namespaceScope of the parameterizable class"
	
	^ self parameterizableClass ifNotNil: [
		self parameterizableClass namespaceScope ]
]
