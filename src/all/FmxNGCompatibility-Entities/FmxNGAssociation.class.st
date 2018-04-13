Class {
	#name : #FmxNGAssociation,
	#superclass : #FmxNGAssociationGenerated,
	#traits : 'TAssociationMetaLevelDependency',
	#classTraits : 'TAssociationMetaLevelDependency classTrait',
	#category : #'FmxNGCompatibility-Entities-Entities'
}

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

{ #category : #accessing }
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

{ #category : #testing }
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

	<MSEProperty: #to type: #FmxNGNamedEntity> <derived>
	<MSEComment: 'Generic accessor to the target entity of the association'>
	^ self subclassResponsibility
]
