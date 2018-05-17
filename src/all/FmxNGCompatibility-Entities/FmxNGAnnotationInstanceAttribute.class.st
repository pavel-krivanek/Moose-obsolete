Class {
	#name : #FmxNGAnnotationInstanceAttribute,
	#superclass : #FmxNGSourcedEntity,
	#traits : 'FmxNGTAnnotationInstanceAttribute + FmxNGTTypedAnnotationInstanceAttribute + TEntityMetaLevelDependency + TDependencyQueries',
	#classTraits : 'FmxNGTAnnotationInstanceAttribute classTrait + FmxNGTTypedAnnotationInstanceAttribute classTrait + TEntityMetaLevelDependency classTrait + TDependencyQueries classTrait',
	#classInstVars : [
		'#childrenSelectors',
		'#allParentTypes',
		'#allChildrenTypes',
		'#parentSelectors'
	],
	#category : #'FmxNGCompatibility-Entities-Entities'
}

{ #category : #'Moose-Query-Extensions' }
FmxNGAnnotationInstanceAttribute class >> allChildrenTypes [
	^ allChildrenTypes ifNil: [ allChildrenTypes := self privateAllChildrenTypes ]
]

{ #category : #accessing }
FmxNGAnnotationInstanceAttribute class >> allIncomingAssociationTypes [
   ^ self privateAllIncomingAssociationTypes
]

{ #category : #accessing }
FmxNGAnnotationInstanceAttribute class >> allOutgoingAssociationTypes [
	^ self privateAllOutgoingAssociationTypes
]

{ #category : #'Moose-Query-Extensions' }
FmxNGAnnotationInstanceAttribute class >> allParentTypes [
	^ allParentTypes ifNil: [ allParentTypes := self privateAllParentTypes ]
]

{ #category : #meta }
FmxNGAnnotationInstanceAttribute class >> annotation [

	<generated>
	<MSEClass: #AnnotationInstanceAttribute super: #FmxNGSourcedEntity>
	<package: #'FmxNGCompatibility-Entities'>
	<generated>
	^self
]

{ #category : #'Moose-Query-Extensions' }
FmxNGAnnotationInstanceAttribute class >> childrenAccessors [
	self
		deprecated: 'Use childrenSelectors instead'
		on: '21 December 2016'
		in: 'Pharo-6.0-60328-'
		transformWith: '`@receiver childrenAccessors' -> '`@receiver childrenSelectors'.
	^ self childrenSelectors
]

{ #category : #'Moose-Query-Extensions' }
FmxNGAnnotationInstanceAttribute class >> childrenSelectors [
	^ childrenSelectors ifNil: [ childrenSelectors := self privateChildrenSelectors ]
]

{ #category : #'Moose-Query-Extensions' }
FmxNGAnnotationInstanceAttribute class >> childrenTypes [
	^ self privateChildrenTypes
]

{ #category : #generator }
FmxNGAnnotationInstanceAttribute class >> generatedSlotNames [
	<generated>
	^ #()
]

{ #category : #generator }
FmxNGAnnotationInstanceAttribute class >> generatedTraitNames [
	<generated>
	^ #(FmxNGTAnnotationInstanceAttribute FmxNGTTypedAnnotationInstanceAttribute)
]

{ #category : #'Moose-Query-Extensions' }
FmxNGAnnotationInstanceAttribute class >> incomingMSEProperties [
	^ #()
]

{ #category : #'Moose-Query-Extensions' }
FmxNGAnnotationInstanceAttribute class >> outgoingMSEProperties [
	^ #()
]

{ #category : #'Moose-Query-Extensions' }
FmxNGAnnotationInstanceAttribute class >> parentSelector [
	self 
		deprecated: 'Use parentSelectors instead'
		on: 	'21 December 2016' 
		in: 'Pharo-6.0-60328-'
		transformWith: '`@receiver parentSelector' -> '`@receiver parentSelectors'.
	^ self parentSelectors
]

{ #category : #'Moose-Query-Extensions' }
FmxNGAnnotationInstanceAttribute class >> parentSelectors [
	^ parentSelectors ifNil: [ parentSelectors := self privateParentSelectors ] 
]

{ #category : #'Moose-Query-Extensions' }
FmxNGAnnotationInstanceAttribute class >> parentTypes [
	^ self privateParentTypes 
]

{ #category : #meta }
FmxNGAnnotationInstanceAttribute class >> requirements [

	<generated>
	^ {  }
]

{ #category : #'Moose-Query-Extensions' }
FmxNGAnnotationInstanceAttribute class >> resetMooseQueryCaches [
	super resetMooseQueryCaches.
	childrenSelectors := nil.
	parentSelectors := nil.
	allChildrenTypes := nil.
	allParentTypes := nil
]

{ #category : #'moosequery-queries-incoming' }
FmxNGAnnotationInstanceAttribute >> incomingTypeDeclarations [
	"Should return the incoming type declarations of the entity as MooseChefTypeDeclarationAssociation.
	
	typeDeclaration is a virtual association that relates a structural entity (i.e. a variable) to its type."

	^ {}
]

{ #category : #accessing }
FmxNGAnnotationInstanceAttribute >> name [ 
	^ self annotationTypeAttribute notNil 
		ifTrue: [ self annotationTypeAttribute name ]
		ifFalse: [ nil ]
]

{ #category : #'moosequery-queries-outgoing' }
FmxNGAnnotationInstanceAttribute >> outgoingTypeDeclarations [
	"Should return the outgoing type declarations of the entity as MooseChefTypeDeclarationAssociation.
	
	typeDeclaration is a virtual association that relates a structural entity (i.e. a variable) to its type."

	^ {}
]
