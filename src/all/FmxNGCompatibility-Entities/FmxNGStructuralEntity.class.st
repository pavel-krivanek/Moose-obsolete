Class {
	#name : #FmxNGStructuralEntity,
	#superclass : #FmxNGLeafEntity,
	#traits : 'FmxNGTAccessible + FmxNGTTypedStructure + FmxNGTWithDereferencedInvocations',
	#classTraits : 'FmxNGTAccessible classTrait + FmxNGTTypedStructure classTrait + FmxNGTWithDereferencedInvocations classTrait',
	#category : #'FmxNGCompatibility-Entities-Entities'
}

{ #category : #meta }
FmxNGStructuralEntity class >> annotation [

	<generated>
	<MSEClass: #StructuralEntity super: #FmxNGLeafEntity>
	<package: #'FmxNGCompatibility-Entities'>
	<generated>
	^self
]

{ #category : #generator }
FmxNGStructuralEntity class >> generatedSlotNames [
	<generated>
	^ #()
]

{ #category : #generator }
FmxNGStructuralEntity class >> generatedTraitNames [
	<generated>
	^ #(FmxNGTAccessible FmxNGTTypedStructure FmxNGTWithDereferencedInvocations)
]

{ #category : #meta }
FmxNGStructuralEntity class >> requirements [

	<generated>
	^ {  }
]
