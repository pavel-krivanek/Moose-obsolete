Class {
	#name : #FmxNGStStructuralEntity,
	#superclass : #FmxNGStNamedEntity,
	#traits : 'FmxNGTAccessible',
	#classTraits : 'FmxNGTAccessible classTrait',
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
	^ #(FmxNGTAccessible)
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

{ #category : #'Famix-Implementation' }
FmxNGStStructuralEntity >> outgoingTypeDeclarations [
	^ self declaredType ifNil: [ {} ] ifNotNil: [ :dt | {(MooseChefTypeDeclarationAssociation newFrom: self to: dt)} ]
]
