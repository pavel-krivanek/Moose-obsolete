Class {
	#name : #FmxNGStSourceAnchor,
	#superclass : #FmxNGStEntity,
	#traits : 'FmxNGTSourceAnchor + TEntityMetaLevelDependency + TDependencyQueries',
	#classTraits : 'FmxNGTSourceAnchor classTrait + TEntityMetaLevelDependency classTrait + TDependencyQueries classTrait',
	#instVars : [
		'#pharoEntity',
		'#element => FMOne type: #FmxNGTWithSourceAnchor opposite: #sourceAnchor',
		'#source'
	],
	#category : #'FmxNGPharoSmalltalk-Entities-Entities'
}

{ #category : #meta }
FmxNGStSourceAnchor class >> annotation [

	<generated>
	<MSEClass: #SourceAnchor super: #FmxNGStEntity>
	<package: #'FmxNGPharoSmalltalk-Entities'>
	<generated>
	^self
]

{ #category : #accessing }
FmxNGStSourceAnchor class >> childrenSelectors [
	self flag: #todo. "Source Anchors should not implement TEntityMetaLevelDependency but currently a source anchor is in Moose containment tree. This is a bug but Orion depend on this hack. So we first need to clean Orion, then we can remove those aweful methods. here."
	^ {}
]

{ #category : #generator }
FmxNGStSourceAnchor class >> generatedSlotNames [
	<generated>
	'FmxNGStSourceAnchor class>>#generatedSlotNames'.
	^ #()
]

{ #category : #generator }
FmxNGStSourceAnchor class >> generatedTraitNames [
	<generated>
	^ #(FmxNGTSourceAnchor)
]

{ #category : #accessing }
FmxNGStSourceAnchor class >> incomingMSEProperties [
	^ #()
]

{ #category : #'Moose-Query-Extensions' }
FmxNGStSourceAnchor class >> outgoingMSEProperties [
	^ #()
]

{ #category : #'Moose-Query-Extensions' }
FmxNGStSourceAnchor class >> parentSelectors [
	self flag: #todo. "Source Anchors should not implement TEntityMetaLevelDependency but currently a source anchor is in Moose containment tree. This is a bug but Orion depend on this hack. So we first need to clean Orion, then we can remove those aweful methods. here."
	^ {}
]

{ #category : #meta }
FmxNGStSourceAnchor class >> requirements [

	<generated>
	^ {  }
]

{ #category : #initialization }
FmxNGStSourceAnchor >> containerFiles [
	^ {  }
]

{ #category : #accessing }
FmxNGStSourceAnchor >> element: anElement [

	element := anElement.
	element sourceAnchor = self ifFalse: [  element sourceAnchor: self ]

]

{ #category : #'moosequery-queries-incoming' }
FmxNGStSourceAnchor >> incomingTypeDeclarations [
	"Should return the incoming type declarations of the entity as MooseChefTypeDeclarationAssociation.
	
	typeDeclaration is a virtual association that relates a structural entity (i.e. a variable) to its type."

	^ {}
]

{ #category : #initialization }
FmxNGStSourceAnchor >> initialize [
	super initialize.
	pharoEntity := WeakArray new: 1.
]

{ #category : #accessing }
FmxNGStSourceAnchor >> lineCount [
	^ self sourceText ifNotNil: #lineCount ifNil: [ self notExistentMetricValue ]
]

{ #category : #'moosequery-queries-outgoing' }
FmxNGStSourceAnchor >> outgoingTypeDeclarations [
	"Should return the outgoing type declarations of the entity as MooseChefTypeDeclarationAssociation.
	
	typeDeclaration is a virtual association that relates a structural entity (i.e. a variable) to its type."

	^ {}
]

{ #category : #accessing }
FmxNGStSourceAnchor >> pharoEntity [
	"pharoEntity var is a 1-element weak array"
	
	^ pharoEntity at: 1
]

{ #category : #accessing }
FmxNGStSourceAnchor >> pharoEntity: anObject [
	"point to object weakly"
	
	pharoEntity at: 1 put: anObject 
]

{ #category : #accessing }
FmxNGStSourceAnchor >> sourceText [
	^ self pharoEntity ifNotNil: #definition  
]
