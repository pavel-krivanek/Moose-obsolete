Class {
	#name : #FmxNGAnnotationInstanceAttribute,
	#superclass : #FmxNGAnnotationInstanceAttributeGenerated,
	#traits : 'TEntityMetaLevelDependency + TDependencyQueries',
	#classTraits : 'TEntityMetaLevelDependency classTrait + TDependencyQueries classTrait',
	#classInstVars : [
		'childrenSelectors',
		'allParentTypes',
		'allChildrenTypes',
		'parentSelectors'
	],
	#category : #'FmxNGCompatibility-Entities-Entities'
}

{ #category : #accessing }
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

{ #category : #accessing }
FmxNGAnnotationInstanceAttribute class >> allParentTypes [
	^ allParentTypes ifNil: [ allParentTypes := self privateAllParentTypes ]
]

{ #category : #accessing }
FmxNGAnnotationInstanceAttribute class >> childrenSelectors [
	^ childrenSelectors ifNil: [ childrenSelectors := self privateChildrenSelectors ]
]

{ #category : #accessing }
FmxNGAnnotationInstanceAttribute class >> childrenTypes [
	^ self privateChildrenTypes
]

{ #category : #accessing }
FmxNGAnnotationInstanceAttribute class >> incomingMSEProperties [
	^ #()
]

{ #category : #accessing }
FmxNGAnnotationInstanceAttribute class >> outgoingMSEProperties [
	^ #()
]

{ #category : #accessing }
FmxNGAnnotationInstanceAttribute class >> parentSelectors [
	^ parentSelectors ifNil: [ parentSelectors := self privateParentSelectors ] 
]

{ #category : #accessing }
FmxNGAnnotationInstanceAttribute class >> parentTypes [
	^ self privateParentTypes 
]

{ #category : #accessing }
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
