Class {
	#name : #FAMIXAssociation,
	#superclass : #FAMIXSourcedEntity,
	#traits : 'FmxNGTAssociation + TAssociationMetaLevelDependency',
	#classTraits : 'FmxNGTAssociation classTrait + TAssociationMetaLevelDependency classTrait',
	#classInstVars : [
		'#targetTypes',
		'#sourceTypes'
	],
	#category : #'FmxNGCompatibility-Entities-Entities'
}

{ #category : #meta }
FAMIXAssociation class >> annotation [

	<generated>
	<MSEClass: #Association super: #FAMIXSourcedEntity>
	<package: #'FmxNGCompatibility-EntitiesOld'>
	<generated>
	^self
]

{ #category : #generator }
FAMIXAssociation class >> generatedSlotNames [
	<generated>
	^ #()
]

{ #category : #generator }
FAMIXAssociation class >> generatedTraitNames [
	<generated>
	^ #(FmxNGTAssociation)
]

{ #category : #accessing }
FAMIXAssociation class >> possibleSourceClasses [
	self 
		deprecated: 'Use sourceTypes instead'
		on: '23 January 2018' 
		in: 'Moose6.1'
		transformWith: '`@receiver possibleSourceClasses' -> '`@receiver sourceTypes'.
	^ self sourceTypes
]

{ #category : #accessing }
FAMIXAssociation class >> possibleTargetClasses [
	self 
		deprecated: 'Use targetTypes instead'
		on: '23 January 2018' 
		in: 'Moose6.1'
		transformWith: '`@receiver possibleTargetClasses' -> '`@receiver targetTypes'.
	^ self targetTypes
]

{ #category : #meta }
FAMIXAssociation class >> requirements [

	<generated>
	^ {  }
]

{ #category : #accessing }
FAMIXAssociation class >> sourceTypes [
	^ sourceTypes
		ifNil: [ sourceTypes := self privateSourceTypes ]
]

{ #category : #accessing }
FAMIXAssociation class >> targetTypes [
	^ targetTypes
		ifNil: [ targetTypes := self privateTargetTypes ]
]

{ #category : #'Famix-Extensions' }
FAMIXAssociation >> accept: aVisitor [

	aVisitor visitAssociation: self
]

{ #category : #accessing }
FAMIXAssociation >> anyTo [
	"This is a utility method that could be used polymorphically to obtain exactly one
	target entity even when the internal implementation stores these as a collection"
	^ self to asOrderedCollection anyOne
]

{ #category : #'Famix-Extensions' }
FAMIXAssociation >> copyFrom: anEntity within: aVisitor [

	super copyFrom: anEntity within: aVisitor.
	"self previous: (aVisitor visit: anEntity previous)."
]

{ #category : #accessing }
FAMIXAssociation >> from [
	"Polymorphic accessor to the entity originating the association.
	It should be refined by subclasses by delegating to a concrete property.
	This property should always remain derived."
	
	<MSEProperty: #from type: #FAMIXNamedEntity> <derived>
	<MSEComment: 'Generic accessor to the entity originating the association. Refined by subclasses'>
	^ self subclassResponsibility
]

{ #category : #printing }
FAMIXAssociation >> gtDisplayOn: aStream [
	self from gtDisplayOn: aStream.
	aStream nextPutAll: ' -> '.
	self to gtDisplayOn: aStream	
]

{ #category : #'Moose-Finder' }
FAMIXAssociation >> mooseFinderSourceTextIn: composite [
	<moosePresentationOrder: 20>
	composite text
			title: 'Source';
			titleIcon: MooseIcons mooseSourceText;
			when: [ self from notNil and: [self from sourceText notEmpty ]];
			format: [ self from formattedSourceText ]
]

{ #category : #accessing }
FAMIXAssociation >> previous: anAssociation [
	| old |
	previous = anAssociation
		ifTrue: [ ^ self ].
	old := previous.
	previous := anAssociation.
	old ifNotNil: [ old next: nil ].
	anAssociation ifNotNil: [ anAssociation next: self ]
]

{ #category : #accessing }
FAMIXAssociation >> to [
	"Polymorphic accessor to the target entity of the association.
	It should be refined by subclasses by delegating to a concrete property.
	This property should always remain derived."

	<MSEProperty: #to type: #FAMIXNamedEntity> <derived>
	<MSEComment: 'Generic accessor to the target entity of the association'>
	^ self subclassResponsibility
]
