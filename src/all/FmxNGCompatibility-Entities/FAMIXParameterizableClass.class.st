Class {
	#name : #FAMIXParameterizableClass,
	#superclass : #FAMIXClass,
	#traits : 'FmxNGTWithParameterizedTypes',
	#classTraits : 'FmxNGTWithParameterizedTypes classTrait',
	#category : #'FmxNGCompatibility-Entities-Entities'
}

{ #category : #meta }
FAMIXParameterizableClass class >> annotation [

	<generated>
	<MSEClass: #ParameterizableClass super: #FAMIXClass>
	<package: #'FmxNGCompatibility-Entities'>
	<generated>
	^self
]

{ #category : #generator }
FAMIXParameterizableClass class >> generatedSlotNames [
	<generated>
	^ #()
]

{ #category : #generator }
FAMIXParameterizableClass class >> generatedTraitNames [
	<generated>
	^ #(FmxNGTWithParameterizedTypes)
]

{ #category : #meta }
FAMIXParameterizableClass class >> requirements [

	<generated>
	^ {  }
]

{ #category : #generated }
FAMIXParameterizableClass >> parameters [
	<MSEProperty: #parameters type: #FAMIXParameterType> <multivalued> <derived>
	<MSEComment: 'Parameter types of this class.'>
	
	^self types select: [:each | each isParameterType]
]

{ #category : #generated }
FAMIXParameterizableClass >> parameters: aCollection [

	self privateState attributeAt: #parameters put: aCollection
]
