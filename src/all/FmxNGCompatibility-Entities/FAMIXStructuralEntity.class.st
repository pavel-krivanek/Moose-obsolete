Class {
	#name : #FAMIXStructuralEntity,
	#superclass : #FAMIXLeafEntity,
	#traits : 'FmxNGTAccessible + FmxNGTTypedStructure + FmxNGTWithDereferencedInvocations',
	#classTraits : 'FmxNGTAccessible classTrait + FmxNGTTypedStructure classTrait + FmxNGTWithDereferencedInvocations classTrait',
	#category : #'FmxNGCompatibility-Entities-Entities'
}

{ #category : #meta }
FAMIXStructuralEntity class >> annotation [

	<generated>
	<MSEClass: #StructuralEntity super: #FAMIXLeafEntity>
	<package: #'FmxNGCompatibility-Entities'>
	<generated>
	^self
]

{ #category : #generator }
FAMIXStructuralEntity class >> generatedSlotNames [
	<generated>
	^ #()
]

{ #category : #generator }
FAMIXStructuralEntity class >> generatedTraitNames [
	<generated>
	^ #(FmxNGTAccessible FmxNGTTypedStructure FmxNGTWithDereferencedInvocations)
]

{ #category : #meta }
FAMIXStructuralEntity class >> requirements [

	<generated>
	^ {  }
]

{ #category : #'Famix-Extensions' }
FAMIXStructuralEntity >> accept: aVisitor [

	aVisitor visitStructuralEntity: self
]

{ #category : #accessing }
FAMIXStructuralEntity >> accessors [
	<MSEProperty: #accessors type: #FAMIXBehaviouralEntity> <multivalued> <derived>
	^ (self incomingAccesses collectAsSet: [ :each | each accessor ]) asMooseGroup
]

{ #category : #accessing }
FAMIXStructuralEntity >> addIncomingAccess: anAccess [
	incomingAccesses add: anAccess
]

{ #category : #'Famix-Extensions' }
FAMIXStructuralEntity >> copyFrom: anEntity within: aVisitor [

	super copyFrom: anEntity within: aVisitor.
	self declaredType: (aVisitor visit: anEntity declaredType).

]

{ #category : #'Famix-Implementation' }
FAMIXStructuralEntity >> globalAccesses [
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

{ #category : #'Famix-Extensions' }
FAMIXStructuralEntity >> hasDeclaredType [
	^ self declaredType notNil
]

{ #category : #'Famix-Extensions' }
FAMIXStructuralEntity >> isSharedVariable [

	^ false
]

{ #category : #'Famix-Implementation' }
FAMIXStructuralEntity >> localAccesses [
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

{ #category : #'moosechef-scoping-filtering' }
FAMIXStructuralEntity >> namespaceScope [
	^ self subclassResponsibility
]

{ #category : #'as yet unclassified' }
FAMIXStructuralEntity >> outgoingTypeDeclarations [
	^ self declaredType ifNil: [ {} ] ifNotNil: [ :dt | {(MooseChefTypeDeclarationAssociation newFrom: self to: dt)} ]
]

{ #category : #'moosechef-scoping-filtering' }
FAMIXStructuralEntity >> packageScope [

	| cs |
	cs := self typeScope.
	
	^ (cs isNil) ifTrue: [nil] ifFalse: [cs packageScope]
]

{ #category : #'moosechef-scoping-filtering' }
FAMIXStructuralEntity >> typeScope [

	^ self belongsTo typeScope 
]
