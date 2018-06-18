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

{ #category : #'Famix-Implementation' }
FmxNGStStructuralEntity >> globalAccesses [
	| attrclass globalAccesses |
	attrclass := self belongsTo.
	globalAccesses := Set new.
	self
		incomingAccesses do:
			[:anAccess | 
			| ent |
			ent := anAccess accessor.
			ent belongsTo = attrclass ifFalse: [globalAccesses add: anAccess]].
	^globalAccesses
]

{ #category : #testing }
FmxNGStStructuralEntity >> isSharedVariable [

	^ false
]

{ #category : #'Famix-Implementation' }
FmxNGStStructuralEntity >> localAccesses [
	| attrclass localAccesses |
	attrclass := self belongsTo.
	localAccesses := Set new.
	self
		incomingAccesses do:
			[:anAccess | 
			| ent |
			ent := anAccess accessor.
			ent belongsTo = attrclass ifTrue: [localAccesses add: anAccess]].
	^localAccesses
]

{ #category : #'Famix-Implementation' }
FmxNGStStructuralEntity >> outgoingTypeDeclarations [
	^ self declaredType ifNil: [ {} ] ifNotNil: [ :dt | {(MooseChefTypeDeclarationAssociation newFrom: self to: dt)} ]
]
