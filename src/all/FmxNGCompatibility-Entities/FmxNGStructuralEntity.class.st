Class {
	#name : #FmxNGStructuralEntity,
	#superclass : #FmxNGStructuralEntityGenerated,
	#category : #'FmxNGCompatibility-Entities-Entities'
}

{ #category : #meta }
FmxNGStructuralEntity class >> annotation [

	<MSEClass: #StructuralEntity super: #FmxNGStructuralEntityGenerated>
	<package: #'FmxNGCompatibility-Generated'>
	^self
]

{ #category : #'Famix-Extensions' }
FmxNGStructuralEntity >> accept: aVisitor [

	aVisitor visitStructuralEntity: self
]

{ #category : #accessing }
FmxNGStructuralEntity >> accessors [
	<MSEProperty: #accessors type: #FAMIXBehaviouralEntity> <multivalued> <derived>
	^ (self incomingAccesses collectAsSet: [ :each | each accessor ]) asMooseGroup
]

{ #category : #accessing }
FmxNGStructuralEntity >> addIncomingAccess: anAccess [
	incomingAccesses add: anAccess
]

{ #category : #'Famix-Extensions' }
FmxNGStructuralEntity >> copyFrom: anEntity within: aVisitor [

	super copyFrom: anEntity within: aVisitor.
	self declaredType: (aVisitor visit: anEntity declaredType).

]

{ #category : #'Famix-Implementation' }
FmxNGStructuralEntity >> globalAccesses [
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
FmxNGStructuralEntity >> hasDeclaredType [
	^ self declaredType notNil
]

{ #category : #'Famix-Extensions' }
FmxNGStructuralEntity >> isSharedVariable [

	^ false
]

{ #category : #'Famix-Implementation' }
FmxNGStructuralEntity >> localAccesses [
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
