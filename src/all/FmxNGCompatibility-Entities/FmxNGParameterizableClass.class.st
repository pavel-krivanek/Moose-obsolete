Class {
	#name : #FmxNGParameterizableClass,
	#superclass : #FmxNGClass,
	#traits : 'FmxNGTWithParameterizedTypes',
	#classTraits : 'FmxNGTWithParameterizedTypes classTrait',
	#category : #'FmxNGCompatibility-Entities-Entities'
}

{ #category : #meta }
FmxNGParameterizableClass class >> annotation [

	<generated>
	<MSEClass: #ParameterizableClass super: #FmxNGClass>
	<package: #'FmxNGCompatibility-Entities'>
	<generated>
	^self
]

{ #category : #generator }
FmxNGParameterizableClass class >> generatedSlotNames [
	<generated>
	^ #()
]

{ #category : #generator }
FmxNGParameterizableClass class >> generatedTraitNames [
	<generated>
	^ #(FmxNGTWithParameterizedTypes)
]

{ #category : #meta }
FmxNGParameterizableClass class >> requirements [

	<generated>
	^ {  }
]

{ #category : #generated }
FmxNGParameterizableClass >> parameters [
	<MSEProperty: #parameters type: #FmxNGParameterType> <multivalued> <derived>
	<MSEComment: 'Parameter types of this class.'>
	
	^self types select: [:each | each isParameterType]
]

{ #category : #generated }
FmxNGParameterizableClass >> parameters: aCollection [

	self privateState attributeAt: #parameters put: aCollection
]
