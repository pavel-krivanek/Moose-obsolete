Class {
	#name : #FmxNGAnnotationInstance,
	#superclass : #FmxNGSourcedEntity,
	#traits : 'FmxNGTAnnotationInstance + FmxNGTTypedAnnotationInstance + FmxNGTWithAnnotationInstanceAttributes + TEntityMetaLevelDependency + TDependencyQueries',
	#classTraits : 'FmxNGTAnnotationInstance classTrait + FmxNGTTypedAnnotationInstance classTrait + FmxNGTWithAnnotationInstanceAttributes classTrait + TEntityMetaLevelDependency classTrait + TDependencyQueries classTrait',
	#classInstVars : [
		'#childrenSelectors',
		'#allParentTypes',
		'#allChildrenTypes',
		'#parentSelectors',
		'#cVar'
	],
	#category : #'FmxNGCompatibility-Entities-Entities'
}

{ #category : #'Moose-Query-Extensions' }
FmxNGAnnotationInstance class >> allChildrenTypes [
	^ allChildrenTypes ifNil: [ allChildrenTypes := self privateAllChildrenTypes ]
]

{ #category : #accessing }
FmxNGAnnotationInstance class >> allIncomingAssociationTypes [
   ^ self privateAllIncomingAssociationTypes
]

{ #category : #accessing }
FmxNGAnnotationInstance class >> allOutgoingAssociationTypes [
	^ self privateAllOutgoingAssociationTypes
]

{ #category : #'Moose-Query-Extensions' }
FmxNGAnnotationInstance class >> allParentTypes [
	^ allParentTypes ifNil: [ allParentTypes := self privateAllParentTypes ]
]

{ #category : #meta }
FmxNGAnnotationInstance class >> annotation [

	<generated>
	<MSEClass: #AnnotationInstance super: #FmxNGSourcedEntity>
	<package: #'FmxNGCompatibility-Entities'>
	<generated>
	^self
]

{ #category : #'Moose-Query-Extensions' }
FmxNGAnnotationInstance class >> childrenAccessors [
	self
		deprecated: 'Use childrenSelectors instead'
		on: '21 December 2016'
		in: 'Pharo-6.0-60328-'
		transformWith: '`@receiver childrenAccessors' -> '`@receiver childrenSelectors'.
	^ self childrenSelectors
]

{ #category : #'Moose-Query-Extensions' }
FmxNGAnnotationInstance class >> childrenSelectors [
	^ childrenSelectors ifNil: [ childrenSelectors := self privateChildrenSelectors ]
]

{ #category : #'Moose-Query-Extensions' }
FmxNGAnnotationInstance class >> childrenTypes [
	^ self privateChildrenTypes
]

{ #category : #generator }
FmxNGAnnotationInstance class >> generatedSlotNames [
	<generated>
	^ #()
]

{ #category : #generator }
FmxNGAnnotationInstance class >> generatedTraitNames [
	<generated>
	^ #(FmxNGTAnnotationInstance FmxNGTTypedAnnotationInstance FmxNGTWithAnnotationInstanceAttributes)
]

{ #category : #'Moose-Query-Extensions' }
FmxNGAnnotationInstance class >> incomingMSEProperties [
	^ #()
]

{ #category : #'Moose-Query-Extensions' }
FmxNGAnnotationInstance class >> outgoingMSEProperties [
	^ #()
]

{ #category : #'Moose-Query-Extensions' }
FmxNGAnnotationInstance class >> parentSelector [
	self 
		deprecated: 'Use parentSelectors instead'
		on: 	'21 December 2016' 
		in: 'Pharo-6.0-60328-'
		transformWith: '`@receiver parentSelector' -> '`@receiver parentSelectors'.
	^ self parentSelectors
]

{ #category : #'Moose-Query-Extensions' }
FmxNGAnnotationInstance class >> parentSelectors [
	^ parentSelectors ifNil: [ parentSelectors := self privateParentSelectors ] 
]

{ #category : #'Moose-Query-Extensions' }
FmxNGAnnotationInstance class >> parentTypes [
	^ self privateParentTypes 
]

{ #category : #meta }
FmxNGAnnotationInstance class >> requirements [

	<generated>
	^ {  }
]

{ #category : #'Moose-Query-Extensions' }
FmxNGAnnotationInstance class >> resetMooseQueryCaches [
	super resetMooseQueryCaches.
	childrenSelectors := nil.
	parentSelectors := nil.
	allChildrenTypes := nil.
	allParentTypes := nil
]

{ #category : #accessing }
FmxNGAnnotationInstance >> belongsTo [
	^ self annotatedEntity
]

{ #category : #'moosequery-queries-incoming' }
FmxNGAnnotationInstance >> incomingTypeDeclarations [
	"Should return the incoming type declarations of the entity as MooseChefTypeDeclarationAssociation.
	
	typeDeclaration is a virtual association that relates a structural entity (i.e. a variable) to its type."

	^ {}
]

{ #category : #'Moose-Finder' }
FmxNGAnnotationInstance >> mooseIcon [ 
	^ MooseIcons famixAnnotationInstance
]

{ #category : #accessing }
FmxNGAnnotationInstance >> mooseNameOn: aStream [
	self annotationType notNil ifTrue: [
		self annotationType mooseNameOn: aStream ].
	aStream nextPut: $(.
	self attributes 
			do: [:each | aStream nextPutAll: each value asString ]
			separatedBy: [aStream nextPut: $,].  
	aStream nextPut: $).
	aStream nextPut: $-.
	self annotatedEntity notNil ifTrue: [
		self annotatedEntity mooseNameOn: aStream ]
]

{ #category : #accessing }
FmxNGAnnotationInstance >> name [
	^ String
		streamContents: [ :stream | 
			stream << '@'
				<< (self annotationType ifNil: [ super name ] ifNotNil: [ :type | type name ])
				<< ' on ' << (self annotatedEntity ifNotNil: #name ifNil: [ 'undefined' ]) ]
]

{ #category : #'moosequery-queries-outgoing' }
FmxNGAnnotationInstance >> outgoingTypeDeclarations [
	"Should return the outgoing type declarations of the entity as MooseChefTypeDeclarationAssociation.
	
	typeDeclaration is a virtual association that relates a structural entity (i.e. a variable) to its type."

	^ {}
]
