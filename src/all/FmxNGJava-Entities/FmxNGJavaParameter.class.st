Class {
	#name : #FmxNGJavaParameter,
	#superclass : #FmxNGJavaStructuralEntity,
	#traits : 'FmxNGTParameter',
	#classTraits : 'FmxNGTParameter classTrait',
	#category : #'FmxNGJava-Entities-Entities'
}

{ #category : #meta }
FmxNGJavaParameter class >> annotation [

	<generated>
	<MSEClass: #Parameter super: #FmxNGJavaStructuralEntity>
	<package: #'FmxNGJava-Entities'>
	<generated>
	^self
]

{ #category : #generator }
FmxNGJavaParameter class >> generatedSlotNames [
	<generated>
	'FmxNGJavaParameter class>>#generatedSlotNames'.
	^ #()
]

{ #category : #generator }
FmxNGJavaParameter class >> generatedTraitNames [
	<generated>
	^ #(FmxNGTParameter)
]

{ #category : #meta }
FmxNGJavaParameter class >> requirements [

	<generated>
	^ { FmxNGJavaMethod }
]
