Class {
	#name : #FmxNGJavaAssociation,
	#superclass : #FmxNGJavaSourcedEntity,
	#traits : 'FmxNGTAssociation',
	#classTraits : 'FmxNGTAssociation classTrait',
	#category : #'FmxNGJava-Entities-Entities'
}

{ #category : #meta }
FmxNGJavaAssociation class >> annotation [

	<generated>
	<MSEClass: #Association super: #FmxNGJavaSourcedEntity>
	<package: #'FmxNGJava-Entities'>
	<generated>
	^self
]

{ #category : #generator }
FmxNGJavaAssociation class >> generatedSlotNames [
	<generated>
	'FmxNGJavaAssociation class>>#generatedSlotNames'.
	^ #()
]

{ #category : #generator }
FmxNGJavaAssociation class >> generatedTraitNames [
	<generated>
	^ #(FmxNGTAssociation)
]

{ #category : #meta }
FmxNGJavaAssociation class >> requirements [

	<generated>
	^ {  }
]

{ #category : #'as yet unclassified' }
FmxNGJavaAssociation >> accept: aVisitor [

	aVisitor visitAssociation: self
]

{ #category : #'as yet unclassified' }
FmxNGJavaAssociation >> anyTo [
	"This is a utility method that could be used polymorphically to obtain exactly one
	target entity even when the internal implementation stores these as a collection"
	^ self to asOrderedCollection anyOne
]

{ #category : #'as yet unclassified' }
FmxNGJavaAssociation >> copyFrom: anEntity within: aVisitor [

	super copyFrom: anEntity within: aVisitor.
	"self previous: (aVisitor visit: anEntity previous)."
]

{ #category : #'as yet unclassified' }
FmxNGJavaAssociation >> from [
	"Polymorphic accessor to the entity originating the association.
	It should be refined by subclasses by delegating to a concrete property.
	This property should always remain derived."
	
	<MSEProperty: #from type: #FmxNGJavaNamedEntity> <derived>
	<MSEComment: 'Generic accessor to the entity originating the association. Refined by subclasses'>
	^ self subclassResponsibility
]

{ #category : #'as yet unclassified' }
FmxNGJavaAssociation >> gtDisplayOn: aStream [
	self from gtDisplayOn: aStream.
	aStream nextPutAll: ' -> '.
	self to gtDisplayOn: aStream	
]

{ #category : #accessing }
FmxNGJavaAssociation >> previous: anAssociation [
	| old |
	previous = anAssociation
		ifTrue: [ ^ self ].
	old := previous.
	previous := anAssociation.
	old ifNotNil: [ old next: nil ].
	anAssociation ifNotNil: [ anAssociation next: self ]
]

{ #category : #'as yet unclassified' }
FmxNGJavaAssociation >> to [
	"Polymorphic accessor to the target entity of the association.
	It should be refined by subclasses by delegating to a concrete property.
	This property should always remain derived."

	<MSEProperty: #to type: #FmxNGJavaNamedEntity> <derived>
	<MSEComment: 'Generic accessor to the target entity of the association'>
	^ self subclassResponsibility
]
