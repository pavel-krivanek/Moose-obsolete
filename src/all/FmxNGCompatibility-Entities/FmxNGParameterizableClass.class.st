Class {
	#name : #FmxNGParameterizableClass,
	#superclass : #FmxNGParameterizableClassGenerated,
	#category : #'FmxNGCompatibility-Entities-Entities'
}

{ #category : #meta }
FmxNGParameterizableClass class >> annotation [

	<MSEClass: #ParameterizableClass super: #FmxNGParameterizableClassGenerated>
	<package: #'FmxNGCompatibility-Generated'>
	^self
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
