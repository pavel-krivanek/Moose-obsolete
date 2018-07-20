Class {
	#name : #FmxNGJavaStructuralEntity,
	#superclass : #FmxNGJavaNamedEntity,
	#traits : 'FmxNGTAccessible + FmxNGTTypedStructure + FmxNGTWithDereferencedInvocations',
	#classTraits : 'FmxNGTAccessible classTrait + FmxNGTTypedStructure classTrait + FmxNGTWithDereferencedInvocations classTrait',
	#category : #'FmxNGJava-Entities-Entities'
}

{ #category : #meta }
FmxNGJavaStructuralEntity class >> annotation [

	<generated>
	<MSEClass: #StructuralEntity super: #FmxNGJavaNamedEntity>
	<package: #'FmxNGJava-Entities'>
	<generated>
	^self
]

{ #category : #generator }
FmxNGJavaStructuralEntity class >> generatedSlotNames [
	<generated>
	'FmxNGJavaStructuralEntity class>>#generatedSlotNames'.
	^ #()
]

{ #category : #generator }
FmxNGJavaStructuralEntity class >> generatedTraitNames [
	<generated>
	^ #(FmxNGTAccessible FmxNGTTypedStructure FmxNGTWithDereferencedInvocations)
]

{ #category : #meta }
FmxNGJavaStructuralEntity class >> requirements [

	<generated>
	^ {  }
]
