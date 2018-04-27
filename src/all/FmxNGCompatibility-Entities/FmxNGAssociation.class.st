Class {
	#name : #FmxNGAssociation,
	#superclass : #FmxNGSourcedEntity,
	#traits : 'FmxNGTAssociation + TAssociationMetaLevelDependency',
	#classTraits : 'FmxNGTAssociation classTrait + TAssociationMetaLevelDependency classTrait',
	#instVars : [
		'#a'
	],
	#classInstVars : [
		'#targetTypes',
		'#sourceTypes'
	],
	#category : #'FmxNGCompatibility-Entities-Entities'
}

{ #category : #meta }
FmxNGAssociation class >> annotation [

	<generated>
	<MSEClass: #Association super: #FmxNGSourcedEntity>
	<package: #'FmxNGCompatibility-Entities'>
	<generated>
	^self
]

{ #category : #generator }
FmxNGAssociation class >> generatedSlotNames [
	<generated>
	^ #()
]

{ #category : #generator }
FmxNGAssociation class >> generatedTraitNames [
	<generated>
	^ #(FmxNGTAssociation)
]

{ #category : #meta }
FmxNGAssociation class >> requirements [

	<generated>
	^ {  }
]

{ #category : #'Famix-Extensions' }
FmxNGAssociation >> accept: aVisitor [

	aVisitor visitAssociation: self
]

{ #category : #testing }
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

{ #category : #testing }
FmxNGAssociation >> from [
	"Polymorphic accessor to the entity originating the association.
	It should be refined by subclasses by delegating to a concrete property.
	This property should always remain derived."
	
	<MSEProperty: #from type: #FmxNGEntity> <derived>
	<MSEComment: 'Generic accessor to the entity originating the association. Refined by subclasses'>
	^ self subclassResponsibility
]

{ #category : #printing }
FmxNGAssociation >> gtDisplayOn: aStream [
	self from gtDisplayOn: aStream.
	aStream nextPutAll: ' -> '.
	self to gtDisplayOn: aStream	
]

{ #category : #printing }
FmxNGAssociation >> isAssociation [ 
	^true
]

{ #category : #'Moose-Finder' }
FmxNGAssociation >> mooseFinderSourceTextIn: composite [
	<moosePresentationOrder: 20>
	composite text
			title: 'Source';
			titleIcon: MooseIcons mooseSourceText;
			when: [ self from notNil and: [self from sourceText notEmpty ]];
			format: [ self from formattedSourceText ]
]

{ #category : #'as yet unclassified' }
FmxNGAssociation >> previous: anAssociation [
	| old |
	previous = anAssociation
		ifTrue: [ ^ self ].
	old := previous.
	previous := anAssociation.
	old ifNotNil: [ old next: nil ].
	anAssociation ifNotNil: [ anAssociation next: self ]
]

{ #category : #'as yet unclassified' }
FmxNGAssociation >> to [
	"Polymorphic accessor to the target entity of the association.
	It should be refined by subclasses by delegating to a concrete property.
	This property should always remain derived."

	<MSEProperty: #to type: #FmxNGNamedEntity> <derived>
	<MSEComment: 'Generic accessor to the target entity of the association'>
	^ self subclassResponsibility
]
