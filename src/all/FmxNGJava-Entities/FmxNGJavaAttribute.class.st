Class {
	#name : #FmxNGJavaAttribute,
	#superclass : #FmxNGJavaStructuralEntity,
	#traits : 'FmxNGTAttribute + FmxNGTWithClassScope',
	#classTraits : 'FmxNGTAttribute classTrait + FmxNGTWithClassScope classTrait',
	#category : #'FmxNGJava-Entities-Entities'
}

{ #category : #meta }
FmxNGJavaAttribute class >> annotation [

	<generated>
	<MSEClass: #Attribute super: #FmxNGJavaStructuralEntity>
	<package: #'FmxNGJava-Entities'>
	<generated>
	^self
]

{ #category : #generator }
FmxNGJavaAttribute class >> generatedSlotNames [
	<generated>
	'FmxNGJavaAttribute class>>#generatedSlotNames'.
	^ #()
]

{ #category : #generator }
FmxNGJavaAttribute class >> generatedTraitNames [
	<generated>
	^ #(FmxNGTAttribute FmxNGTWithClassScope)
]

{ #category : #meta }
FmxNGJavaAttribute class >> requirements [

	<generated>
	^ { FmxNGJavaType }
]
