Class {
	#name : #FmxNGStStructuralEntity,
	#superclass : #FmxNGStNamedEntity,
	#traits : 'FmxNGTAccessible + FmxNGTTypedStructure + FmxNGTWithDereferencedInvocations',
	#classTraits : 'FmxNGTAccessible classTrait + FmxNGTTypedStructure classTrait + FmxNGTWithDereferencedInvocations classTrait',
	#category : #'FmxNGPharoSmalltalk-Entities-Entities'
}

{ #category : #meta }
FmxNGStStructuralEntity class >> annotation [

	<generated>
	<MSEClass: #StructuralEntity super: #FmxNGStNamedEntity>
	<package: #'FmxNGPharoSmalltalk-Entities'>
	<generated>
	^self
]

{ #category : #generator }
FmxNGStStructuralEntity class >> generatedSlotNames [
	<generated>
	'FmxNGStStructuralEntity class>>#generatedSlotNames'.
	^ #()
]

{ #category : #generator }
FmxNGStStructuralEntity class >> generatedTraitNames [
	<generated>
	^ #(FmxNGTAccessible FmxNGTTypedStructure FmxNGTWithDereferencedInvocations)
]

{ #category : #meta }
FmxNGStStructuralEntity class >> requirements [

	<generated>
	^ {  }
]

{ #category : #testing }
FmxNGStStructuralEntity >> isSharedVariable [

	^ false
]
