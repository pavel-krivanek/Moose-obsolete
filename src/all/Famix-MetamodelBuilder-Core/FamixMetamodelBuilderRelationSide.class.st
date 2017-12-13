Class {
	#name : #FamixMetamodelBuilderRelationSide,
	#superclass : #Object,
	#instVars : [
		'name',
		'cardinality',
		'trait',
		'comment',
		'container',
		'relation',
		'relatedClass',
		'derived',
		'source',
		'target',
		'builder',
		'willGenerate'
	],
	#category : #'Famix-MetamodelBuilder-Core'
}

{ #category : #accessing }
FamixMetamodelBuilderRelationSide >> *- aRelationSide [

	| aRelation |
	
	aRelation := self builder newRelation
		side: self;
		oppositeSide: aRelationSide;
		builder: self builder;
		yourself.	

	self relation: aRelation.	
	aRelationSide relation: aRelation.
	aRelationSide many.
	
	self relatedClass ifNotNil: [ 
		self relatedClass addRelation: aRelation with: aRelationSide relatedClass ].
	
	^ aRelation
	
	
]

{ #category : #accessing }
FamixMetamodelBuilderRelationSide >> *-* aRelationSide [

	| aRelation |
	
	aRelation := self builder newRelation
		side: self;
		oppositeSide: aRelationSide;
		builder: self builder;
		yourself.	

	self relation: aRelation.	
	aRelationSide relation: aRelation.
	aRelationSide many.
	self many.
	
	self relatedClass ifNotNil: [ 
		self relatedClass addRelation: aRelation with: aRelationSide relatedClass.].
	
	^ aRelation
	
	
]

{ #category : #accessing }
FamixMetamodelBuilderRelationSide >> *-<> aRelationSide [

	| aRelation |
	
	self container.
	aRelation := self *- aRelationSide.
	

	
]

{ #category : #accessing }
FamixMetamodelBuilderRelationSide >> - aRelationSide [

	| aRelation |
	
	aRelation := self builder newRelation
		side: self;
		oppositeSide: aRelationSide;
		builder: self builder;
		yourself.	

	self relation: aRelation.	
	aRelationSide relation: aRelation.
	
	self relatedClass ifNotNil: [ 
		self relatedClass addRelation: aRelation with: aRelationSide relatedClass ].
	
	^ aRelation
	
	
]

{ #category : #accessing }
FamixMetamodelBuilderRelationSide >> -* aRelationSide [

	| aRelation |
	
	aRelation := self builder newRelation
		side: self;
		oppositeSide: aRelationSide;
		builder: self builder;
		yourself.	

	self relation: aRelation.	
	aRelationSide relation: aRelation.
	self many.
	
	self relatedClass ifNotNil: [ 
		self relatedClass addRelation: aRelation with: aRelationSide relatedClass ].
	
	^ aRelation
	
	
]

{ #category : #accessing }
FamixMetamodelBuilderRelationSide >> -<> aRelationSide [

	| aRelation |
	
	self container.
	aRelation := self - aRelationSide.
	

	
]

{ #category : #accessing }
FamixMetamodelBuilderRelationSide >> <>- aRelationSide [

	| aRelation |
	
	aRelationSide container.
	aRelation := self - aRelationSide.
	

	
]

{ #category : #accessing }
FamixMetamodelBuilderRelationSide >> <>-* aRelationSide [

	| aRelation |
	
	aRelationSide container.
	aRelation := self -* aRelationSide.
	

	
]

{ #category : #accessing }
FamixMetamodelBuilderRelationSide >> builder [
	^ builder
]

{ #category : #accessing }
FamixMetamodelBuilderRelationSide >> builder: anObject [
	builder := anObject
]

{ #category : #accessing }
FamixMetamodelBuilderRelationSide >> cardinality [
	^ cardinality
]

{ #category : #accessing }
FamixMetamodelBuilderRelationSide >> cardinality: anObject [
	cardinality := anObject
]

{ #category : #accessing }
FamixMetamodelBuilderRelationSide >> comment [
	^ comment
]

{ #category : #accessing }
FamixMetamodelBuilderRelationSide >> comment: anObject [
	comment := anObject
]

{ #category : #accessing }
FamixMetamodelBuilderRelationSide >> container [
	
	container := true
]

{ #category : #accessing }
FamixMetamodelBuilderRelationSide >> container: anObject [
	container := anObject
]

{ #category : #accessing }
FamixMetamodelBuilderRelationSide >> derived [
	derived := true
]

{ #category : #accessing }
FamixMetamodelBuilderRelationSide >> derived: anObject [
	derived := anObject
]

{ #category : #accessing }
FamixMetamodelBuilderRelationSide >> ensureTraitNamed: aString [

	^ self builder ensureTraitNamed: aString
]

{ #category : #accessing }
FamixMetamodelBuilderRelationSide >> from [

	^ self relation from
]

{ #category : #accessing }
FamixMetamodelBuilderRelationSide >> initialize [

	cardinality := #one.
	comment := String new.
	container := false.
	derived := false.
	target := false.
	source := false.
	willGenerate := true.

]

{ #category : #accessing }
FamixMetamodelBuilderRelationSide >> isContainer [

	^ container
]

{ #category : #accessing }
FamixMetamodelBuilderRelationSide >> isDerived [

	^ derived
]

{ #category : #accessing }
FamixMetamodelBuilderRelationSide >> isSource [

	^ source
]

{ #category : #accessing }
FamixMetamodelBuilderRelationSide >> isTarget [

	^ target
]

{ #category : #accessing }
FamixMetamodelBuilderRelationSide >> link: link1 throughAssociation: anAssociationAlias link: link2 with: anAlias [

"(behavior as: #TWithAccesses)
	link: #accesses -> #accessor
	throughAssociation: (access as: #TAccess) 
	link: #variable -> #icomingAcesses
	with: (variable as: #TAccessible)"
	
	| rel |
	rel := self subject builder newRelation
	from: [ :side |
		side name: (link1 value);
			traitName: anAssociationAlias traitName;
			one	 ];
	to: [ :opposite |
		opposite 	name: link1 key;
			traitName: self traitName;
			many ].
		
anAssociationAlias subject addRelation: rel with: self subject.		
		
rel := self subject builder newRelation
	from: [ :side |
		side name: link2 key;
			traitName: anAssociationAlias traitName;
			one	 ];
	to: [ :opposite |
		opposite 	name: link2 value;
			traitName: anAlias traitName;
			many ].
		
anAssociationAlias subject addRelation: rel with: anAlias subject.		
		

]

{ #category : #accessing }
FamixMetamodelBuilderRelationSide >> many [

	cardinality := #many
]

{ #category : #accessing }
FamixMetamodelBuilderRelationSide >> name [
	^ name
]

{ #category : #accessing }
FamixMetamodelBuilderRelationSide >> name: anObject [
	name := anObject
]

{ #category : #accessing }
FamixMetamodelBuilderRelationSide >> noContainer [
	
	container := false
]

{ #category : #accessing }
FamixMetamodelBuilderRelationSide >> notDerived [
	
	derived := false
]

{ #category : #accessing }
FamixMetamodelBuilderRelationSide >> one [

	cardinality := #one
]

{ #category : #accessing }
FamixMetamodelBuilderRelationSide >> otherSide [

	| aFromSide |
	
	aFromSide := self relation from.

	^ (aFromSide == self)
		ifTrue: [ self relation to ]
		ifFalse: [ aFromSide ]		
]

{ #category : #accessing }
FamixMetamodelBuilderRelationSide >> relatedClass [
	^ relatedClass
]

{ #category : #accessing }
FamixMetamodelBuilderRelationSide >> relatedClass: anObject [
	relatedClass := anObject
]

{ #category : #accessing }
FamixMetamodelBuilderRelationSide >> relation [
	^ relation
]

{ #category : #accessing }
FamixMetamodelBuilderRelationSide >> relation: anObject [
	relation := anObject
]

{ #category : #accessing }
FamixMetamodelBuilderRelationSide >> source [
	source := true.
]

{ #category : #accessing }
FamixMetamodelBuilderRelationSide >> source: anObject [
	source := anObject
]

{ #category : #accessing }
FamixMetamodelBuilderRelationSide >> target [
	target := true.
]

{ #category : #accessing }
FamixMetamodelBuilderRelationSide >> target: anObject [
	target := anObject
]

{ #category : #accessing }
FamixMetamodelBuilderRelationSide >> to [

	^ self relation to
]

{ #category : #accessing }
FamixMetamodelBuilderRelationSide >> trait [
	^ trait
]

{ #category : #accessing }
FamixMetamodelBuilderRelationSide >> trait: anObject [

	trait ifNotNil: [ 
		trait removeRelationSide: self ].
	trait := anObject.
	trait addRelationSide: self
]

{ #category : #accessing }
FamixMetamodelBuilderRelationSide >> traitName [

	^ self trait name
]

{ #category : #accessing }
FamixMetamodelBuilderRelationSide >> traitName: aString [

	trait := self ensureTraitNamed: aString

]

{ #category : #accessing }
FamixMetamodelBuilderRelationSide >> willGenerate [
	^ willGenerate
]

{ #category : #accessing }
FamixMetamodelBuilderRelationSide >> willGenerate: anObject [
	willGenerate := anObject
]
