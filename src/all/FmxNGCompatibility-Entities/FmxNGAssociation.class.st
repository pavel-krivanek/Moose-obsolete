Class {
	#name : #FmxNGAssociation,
	#superclass : #FmxNGAssociationGenerated,
	#classInstVars : [
		'targetTypes',
		'sourceTypes'
	],
	#category : #'FmxNGCompatibility-Entities-Entities'
}

{ #category : #meta }
FmxNGAssociation class >> annotation [

	<MSEClass: #Association super: #FmxNGAssociationGenerated>
	<package: #'FmxNGCompatibility-Generated'>
	^self
]

{ #category : #accessing }
FmxNGAssociation class >> sourceTypes [
	^ sourceTypes
		ifNil: [ sourceTypes := self privateSourceTypes ]
]

{ #category : #accessing }
FmxNGAssociation class >> targetTypes [
	^ targetTypes
		ifNil: [ targetTypes := self privateTargetTypes ]
]

{ #category : #'Famix-Extensions' }
FmxNGAssociation >> accept: aVisitor [

	aVisitor visitAssociation: self
]

{ #category : #accessing }
FmxNGAssociation >> anyTo [
	"This is a utility method that could be used polymorphically to obtain exactly one
	target entity even when the internal implementation stores these as a collection"
	^ self to asOrderedCollection anyOne
]

{ #category : #'Famix-Extensions' }
FmxNGAssociation >> copyFrom: anEntity within: aVisitor [

	super copyFrom: anEntity within: aVisitor.
	"self previous: (aVisitor visit: anEntity previous)."
]

{ #category : #printing }
FmxNGAssociation >> gtDisplayOn: aStream [
	self from gtDisplayOn: aStream.
	aStream nextPutAll: ' -> '.
	self to gtDisplayOn: aStream	
]

{ #category : #accessing }
FmxNGAssociation >> previous: anAssociation [
	| old |
	previous = anAssociation
		ifTrue: [ ^ self ].
	old := previous.
	previous := anAssociation.
	old ifNotNil: [ old next: nil ].
	anAssociation ifNotNil: [ anAssociation next: self ]
]

{ #category : #accessing }
FmxNGAssociation >> to [
	"Polymorphic accessor to the target entity of the association.
	It should be refined by subclasses by delegating to a concrete property.
	This property should always remain derived."

	<MSEProperty: #to type: #FAMIXNamedEntity> <derived>
	<MSEComment: 'Generic accessor to the target entity of the association'>
	^ self subclassResponsibility
]
