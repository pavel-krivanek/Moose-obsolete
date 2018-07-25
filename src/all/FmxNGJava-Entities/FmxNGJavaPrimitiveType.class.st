Class {
	#name : #FmxNGJavaPrimitiveType,
	#superclass : #FmxNGJavaType,
	#category : #'FmxNGJava-Entities-Entities'
}

{ #category : #meta }
FmxNGJavaPrimitiveType class >> annotation [

	<MSEClass: #PrimitiveType super: #FmxNGJavaType>
	<package: #'FmxNGJava-Entities'>
	<generated>
	^self
]

{ #category : #generator }
FmxNGJavaPrimitiveType class >> generatedSlotNames [
	<generated>
	'FmxNGJavaPrimitiveType class>>#generatedSlotNames'.
	^ #()
]

{ #category : #generator }
FmxNGJavaPrimitiveType class >> generatedTraitNames [
	<generated>
	^ #()
]

{ #category : #meta }
FmxNGJavaPrimitiveType class >> requirements [

	<generated>
	^ {  }
]

{ #category : #testing }
FmxNGJavaPrimitiveType >> isPrimitiveType [

	<generated>
	^ true
]
