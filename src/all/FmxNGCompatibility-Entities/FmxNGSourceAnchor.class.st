Class {
	#name : #FmxNGSourceAnchor,
	#superclass : #FmxNGEntity,
	#traits : 'FmxNGTSourceAnchor + TEntityMetaLevelDependency + TDependencyQueries',
	#classTraits : 'FmxNGTSourceAnchor classTrait + TEntityMetaLevelDependency classTrait + TDependencyQueries classTrait',
	#category : #'FmxNGCompatibility-Entities-Entities'
}

{ #category : #MQ }
FmxNGSourceAnchor class >> allChildrenTypes [
	self flag: #todo. "Source Anchors should not implement TEntityMetaLevelDependency but currently a source anchor is in Moose containment tree. This is a bug but Orion depend on this hack. So we first need to clean Orion, then we can remove those aweful methods. here."
	^ {}
]

{ #category : #accessing }
FmxNGSourceAnchor class >> allIncomingAssociationTypes [
   ^ Set new
]

{ #category : #accessing }
FmxNGSourceAnchor class >> allOutgoingAssociationTypes [
	^ Set new
]

{ #category : #MQ }
FmxNGSourceAnchor class >> allParentTypes [
	self flag: #todo. "Source Anchors should not implement TEntityMetaLevelDependency but currently a source anchor is in Moose containment tree. This is a bug but Orion depend on this hack. So we first need to clean Orion, then we can remove those aweful methods. here."
	^ {}
]

{ #category : #meta }
FmxNGSourceAnchor class >> annotation [

	<generated>
	<MSEClass: #SourceAnchor super: #FmxNGEntity>
	<package: #'FmxNGCompatibility-Entities'>
	<generated>
	^self
]

{ #category : #MQ }
FmxNGSourceAnchor class >> childrenSelectors [
	self flag: #todo. "Source Anchors should not implement TEntityMetaLevelDependency but currently a source anchor is in Moose containment tree. This is a bug but Orion depend on this hack. So we first need to clean Orion, then we can remove those aweful methods. here."
	^ {}
]

{ #category : #MQ }
FmxNGSourceAnchor class >> childrenTypes [
	self flag: #todo. "Source Anchors should not implement TEntityMetaLevelDependency but currently a source anchor is in Moose containment tree. This is a bug but Orion depend on this hack. So we first need to clean Orion, then we can remove those aweful methods. here."
	^ {}
]

{ #category : #generator }
FmxNGSourceAnchor class >> generatedSlotNames [
	<generated>
	^ #()
]

{ #category : #generator }
FmxNGSourceAnchor class >> generatedTraitNames [
	<generated>
	^ #(FmxNGTSourceAnchor)
]

{ #category : #accessing }
FmxNGSourceAnchor class >> incomingMSEProperties [
	^ #()
]

{ #category : #accessing }
FmxNGSourceAnchor class >> outgoingMSEProperties [
	^ #()
]

{ #category : #MQ }
FmxNGSourceAnchor class >> parentSelectors [
	self flag: #todo. "Source Anchors should not implement TEntityMetaLevelDependency but currently a source anchor is in Moose containment tree. This is a bug but Orion depend on this hack. So we first need to clean Orion, then we can remove those aweful methods. here."
	^ {}
]

{ #category : #MQ }
FmxNGSourceAnchor class >> parentTypes [
	self flag: #todo. "Source Anchors should not implement TEntityMetaLevelDependency but currently a source anchor is in Moose containment tree. This is a bug but Orion depend on this hack. So we first need to clean Orion, then we can remove those aweful methods. here."
	^ {}
]

{ #category : #meta }
FmxNGSourceAnchor class >> requirements [

	<generated>
	^ {  }
]

{ #category : #'Famix-Extensions' }
FmxNGSourceAnchor >> accept: aVisitor [

	aVisitor visitSourceAnchor: self
]

{ #category : #accessing }
FmxNGSourceAnchor >> completeText [
	"The complete text of a FileAnchor contains all the code of the file pointed by the source anchor. On the contrary the #sourceText return only the pant of the file concerned by the entity. For example a FAMIXFileAnchon knows the start line and end line of the source anchor into the file."
	
	"By default I return the sourceText because most of my subclasses will only do that."

	^ self sourceText
]

{ #category : #'Famix-File' }
FmxNGSourceAnchor >> containerFiles [
	"I should return a collection of files corresponding to the source anchor. If there is no file just return an empty collection."

	^ self subclassResponsibility
]

{ #category : #'Famix-Extensions' }
FmxNGSourceAnchor >> copyFrom: anEntity within: aVisitor [

	super copyFrom: anEntity within: aVisitor.
	self element: (aVisitor visit: anEntity)
]

{ #category : #accessing }
FmxNGSourceAnchor >> element: anElement [

	element := anElement
	element sourceAnchor = self ifFalse: [  element sourceAnchor: self ]

]

{ #category : #testing }
FmxNGSourceAnchor >> isFile [
	^ false
]

{ #category : #testing }
FmxNGSourceAnchor >> isMultiple [
	^ false
]

{ #category : #accessing }
FmxNGSourceAnchor >> lineCount [
	"I should return the number of line in the source text of the entity."

	<MSEProperty: #lineCount type: #Number>
	<derived>
	<MSEComment: 'The number of lines in the source text'>
	^ self subclassResponsibility
]

{ #category : #'Moose-Finder' }
FmxNGSourceAnchor >> mooseFinderSourceTextIn: composite [
	<moosePresentationOrder: 10>
	composite text
			title: 'Source';
			titleIcon: MooseIcons mooseSourceTextPartial;
			display: [ :each | each mooseInterestingEntity sourceText ];
			when: [ :input | input mooseInterestingEntity sourceText notEmpty ]
]

{ #category : #accessing }
FmxNGSourceAnchor >> sourceText [
	^ self subclassResponsibility
]
