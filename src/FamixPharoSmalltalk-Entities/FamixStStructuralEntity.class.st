Class {
	#name : #FamixStStructuralEntity,
	#superclass : #FamixStNamedEntity,
	#traits : 'FamixTAccessible + FamixTTypedStructure',
	#classTraits : 'FamixTAccessible classTrait + FamixTTypedStructure classTrait',
	#category : #'FamixPharoSmalltalk-Entities-Entities'
}

{ #category : #meta }
FamixStStructuralEntity class >> annotation [

	<MSEClass: #StructuralEntity super: #FamixStNamedEntity>
	<package: #'FamixPharoSmalltalk-Entities'>
	<generated>
	^self
]

{ #category : #generator }
FamixStStructuralEntity class >> generatedSlotNames [
	<generated>
	'FamixStStructuralEntity class>>#generatedSlotNames'.
	^ #()
]

{ #category : #generator }
FamixStStructuralEntity class >> generatedTraitNames [
	<generated>
	^ #(FamixTAccessible FamixTTypedStructure)
]

{ #category : #meta }
FamixStStructuralEntity class >> requirements [

	<generated>
	^ {  }
]

{ #category : #testing }
FamixStStructuralEntity >> isSharedVariable [

	^ false
]

{ #category : #'Famix-Implementation' }
FamixStStructuralEntity >> outgoingTypeDeclarations [
	^ self declaredType ifNil: [ {} ] ifNotNil: [ :dt | {(MooseChefTypeDeclarationAssociation newFrom: self to: dt)} ]
]
