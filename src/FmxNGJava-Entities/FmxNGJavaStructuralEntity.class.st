Class {
	#name : #FmxNGJavaStructuralEntity,
	#superclass : #FmxNGJavaNamedEntity,
	#traits : 'FmxNGTAccessible + FmxNGTTypedStructure + FmxNGTWithDereferencedInvocations',
	#classTraits : 'FmxNGTAccessible classTrait + FmxNGTTypedStructure classTrait + FmxNGTWithDereferencedInvocations classTrait',
	#category : #'FmxNGJava-Entities-Entities'
}

{ #category : #meta }
FmxNGJavaStructuralEntity class >> annotation [

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

{ #category : #'as yet unclassified' }
FmxNGJavaStructuralEntity >> accept: aVisitor [

	aVisitor visitStructuralEntity: self
]

{ #category : #'as yet unclassified' }
FmxNGJavaStructuralEntity >> accessors [
	<MSEProperty: #accessors type: #FmxNGJavaMethod> <multivalued> <derived>
	^ (self incomingAccesses collectAsSet: [ :each | each accessor ]) asMooseGroup
]

{ #category : #'as yet unclassified' }
FmxNGJavaStructuralEntity >> copyFrom: anEntity within: aVisitor [

	super copyFrom: anEntity within: aVisitor.
	self declaredType: (aVisitor visit: anEntity declaredType).

]

{ #category : #'as yet unclassified' }
FmxNGJavaStructuralEntity >> hasDeclaredType [
	^ self declaredType notNil
]

{ #category : #'as yet unclassified' }
FmxNGJavaStructuralEntity >> isSharedVariable [

	^ false
]

{ #category : #'as yet unclassified' }
FmxNGJavaStructuralEntity >> namespaceScope [
	^ self subclassResponsibility
]

{ #category : #'as yet unclassified' }
FmxNGJavaStructuralEntity >> outgoingTypeDeclarations [
	^ self declaredType ifNil: [ {} ] ifNotNil: [ :dt | {(MooseChefTypeDeclarationAssociation newFrom: self to: dt)} ]
]

{ #category : #'as yet unclassified' }
FmxNGJavaStructuralEntity >> packageScope [

	| cs |
	cs := self typeScope.
	
	^ (cs isNil) ifTrue: [nil] ifFalse: [cs packageScope]
]

{ #category : #'as yet unclassified' }
FmxNGJavaStructuralEntity >> typeScope [

	^ self belongsTo typeScope 
]
