Class {
	#name : #FmxNGJavaParameterizableClass,
	#superclass : #FmxNGJavaClass,
	#traits : 'FmxNGTWithParameterizedTypes',
	#classTraits : 'FmxNGTWithParameterizedTypes classTrait',
	#category : #'FmxNGJava-Entities-Entities'
}

{ #category : #meta }
FmxNGJavaParameterizableClass class >> annotation [

	<MSEClass: #ParameterizableClass super: #FmxNGJavaClass>
	<package: #'FmxNGJava-Entities'>
	<generated>
	^self
]

{ #category : #generator }
FmxNGJavaParameterizableClass class >> generatedSlotNames [
	<generated>
	'FmxNGJavaParameterizableClass class>>#generatedSlotNames'.
	^ #()
]

{ #category : #generator }
FmxNGJavaParameterizableClass class >> generatedTraitNames [
	<generated>
	^ #(FmxNGTWithParameterizedTypes)
]

{ #category : #meta }
FmxNGJavaParameterizableClass class >> requirements [

	<generated>
	^ {  }
]

{ #category : #'as yet unclassified' }
FmxNGJavaParameterizableClass >> parameters [
	<MSEProperty: #parameters type: #FmxNGJavaParameterType> <multivalued> <derived>
	<MSEComment: 'Parameter types of this class.'>
	
	^self types select: [:each | each isParameterType]
]

{ #category : #'as yet unclassified' }
FmxNGJavaParameterizableClass >> parameters: aCollection [

	self privateState attributeAt: #parameters put: aCollection
]
