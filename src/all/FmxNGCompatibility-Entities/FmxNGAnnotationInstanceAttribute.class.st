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

{ #category : #meta }
FmxNGAnnotationInstanceAttribute class >> annotation [

	<generated>
	<MSEClass: #AnnotationInstanceAttribute super: #FmxNGSourcedEntity>
	<package: #'FmxNGCompatibility-Entities'>
	<generated>
	^self
]

{ #category : #accessing }
FmxNGAnnotationInstanceAttribute class >> childrenSelectors [
	^ childrenSelectors ifNil: [ childrenSelectors := self privateChildrenSelectors ]
]

{ #category : #accessing }
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

{ #category : #meta }
FmxNGAnnotationInstanceAttribute class >> requirements [

	<generated>
	^ {  }
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

{ #category : #'moosequery-queries-incoming' }
FmxNGAnnotationInstanceAttribute >> outgoingTypeDeclarations [
	"Should return the outgoing type declarations of the entity as MooseChefTypeDeclarationAssociation.
	
	typeDeclaration is a virtual association that relates a structural entity (i.e. a variable) to its type."

	^ {}
]
