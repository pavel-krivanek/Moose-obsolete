Class {
	#name : #FmxNGJavaParameterType,
	#superclass : #FmxNGJavaType,
	#category : #'FmxNGJava-Entities-Entities'
}

{ #category : #meta }
FmxNGJavaParameterType class >> annotation [

	<MSEClass: #ParameterType super: #FmxNGJavaType>
	<package: #'FmxNGJava-Entities'>
	<generated>
	^self
]

{ #category : #generator }
FmxNGJavaParameterType class >> generatedSlotNames [
	<generated>
	'FmxNGJavaParameterType class>>#generatedSlotNames'.
	^ #()
]

{ #category : #generator }
FmxNGJavaParameterType class >> generatedTraitNames [
	<generated>
	^ #()
]

{ #category : #meta }
FmxNGJavaParameterType class >> requirements [

	<generated>
	^ {  }
]

{ #category : #'as yet unclassified' }
FmxNGJavaParameterType >> isParameterType [
	^ true
]
