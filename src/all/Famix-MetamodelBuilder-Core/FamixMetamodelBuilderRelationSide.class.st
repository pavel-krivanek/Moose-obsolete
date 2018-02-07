"
FamixMetamodelBuilderRelationSide
"
Class {
	#name : #FamixMetamodelBuilderRelationSide,
	#superclass : #FamixMetamodelBuilderProperty,
	#instVars : [
		'cardinality',
		'trait',
		'container',
		'relation',
		'relatedClass',
		'derived',
		'source',
		'target',
		'propertyType'
	],
	#category : #'Famix-MetamodelBuilder-Core'
}

{ #category : #'relations - arrows' }
FamixMetamodelBuilderRelationSide >> *- aRelationSide [

	^ self manyToOne: aRelationSide
]

{ #category : #'relations - arrows' }
FamixMetamodelBuilderRelationSide >> *-* aRelationSide [

	^ self manyToMany: aRelationSide
]

{ #category : #'relations - arrows' }
FamixMetamodelBuilderRelationSide >> *-<> aRelationSide [

	^ self manyBelongTo: aRelationSide
	
]

{ #category : #'relations - arrows' }
FamixMetamodelBuilderRelationSide >> - aRelationSide [

	^ self oneToOne: aRelationSide
]

{ #category : #'relations - arrows' }
FamixMetamodelBuilderRelationSide >> -* aRelationSide [

	^ self oneToMany: aRelationSide
]

{ #category : #'relations - arrows' }
FamixMetamodelBuilderRelationSide >> -<> aRelationSide [

	^ self oneBelongsTo: aRelationSide

	
]

{ #category : #'relations - arrows' }
FamixMetamodelBuilderRelationSide >> <>- aRelationSide [

	^ self containsOne: aRelationSide
	
]

{ #category : #'relations - arrows' }
FamixMetamodelBuilderRelationSide >> <>-* aRelationSide [

	^ self containsMany: aRelationSide
	

	
]

{ #category : #visitor }
FamixMetamodelBuilderRelationSide >> acceptVisitor: aVisitor [

	^ aVisitor visitRelationSide: self.
]

{ #category : #generating }
FamixMetamodelBuilderRelationSide >> asSlot [
	
	| slotName opposite |

	self hasRelation 
		ifFalse: [ FamixMetamodelBuilderIncompletePropertyDefiniton signal ].
	
	slotName := self name.
	opposite := self otherSide.
	
	^ self builder environment 
		slotNamed: slotName asSymbol 
		cardinality: self cardinality 
		type: (self builder prefix, opposite traitName) asSymbol 
		opposite: opposite name asSymbol

	
	
	
		
	
	
	
]

{ #category : #accessing }
FamixMetamodelBuilderRelationSide >> cardinality [
	^ cardinality
]

{ #category : #accessing }
FamixMetamodelBuilderRelationSide >> cardinality: anObject [
	cardinality := anObject
]

{ #category : #properties }
FamixMetamodelBuilderRelationSide >> container [
	
	container := true
]

{ #category : #properties }
FamixMetamodelBuilderRelationSide >> container: anObject [
	container := anObject
]

{ #category : #'relations - named' }
FamixMetamodelBuilderRelationSide >> containsMany: aRelationSide [

	aRelationSide container.
	self oneToMany: aRelationSide.
	

	
]

{ #category : #'relations - named' }
FamixMetamodelBuilderRelationSide >> containsOne: aRelationSide [

	aRelationSide container.
	self oneToOne: aRelationSide.
	

	
]

{ #category : #properties }
FamixMetamodelBuilderRelationSide >> derived [
	derived := true
]

{ #category : #properties }
FamixMetamodelBuilderRelationSide >> derived: anObject [
	derived := anObject
]

{ #category : #accessing }
FamixMetamodelBuilderRelationSide >> ensureTraitNamed: aString [

	^ self builder ensureLocalTraitNamed: aString
]

{ #category : #accessing }
FamixMetamodelBuilderRelationSide >> from [

	^ self relation from
]

{ #category : #generating }
FamixMetamodelBuilderRelationSide >> generateGetterIn: aClassOrTrait [

	| methodSource commentDefinition |
	
	commentDefinition := self comment
		ifNotEmpty: [ '<MSEComment: ''{1}''>' format: { self comment } ].

	methodSource := String streamContents: [ :s |
		s nextPutAll: self name; cr; cr.
		commentDefinition  
			ifNotEmpty: [ s tab; nextPutAll: commentDefinition; cr].
			self isContainer ifTrue: [ 
				s tab; nextPutAll: '<container>'; cr; cr ].
			self isDerived ifTrue: [ 
				s tab; nextPutAll: '<derived>'; cr; cr ].
			self isSource ifTrue: [ 
				s tab; nextPutAll: '<source>'; cr; cr ].
			self isTarget ifTrue: [ 
				s tab; nextPutAll: '<target>'; cr; cr ].
		s tab; nextPutAll: '^ ';
			nextPutAll: self name.].
		
	self builder environment compile: methodSource in: aClassOrTrait classified: 'accessing'.	
	

	
]

{ #category : #generating }
FamixMetamodelBuilderRelationSide >> generateSetterIn: aClassOrTrait [

	| methodSource |
	
	methodSource := String streamContents: [ :s |
		s nextPutAll: self name; nextPutAll: ': anObject'; cr; cr.
		(self cardinality = #one)
			ifTrue: [ s tab; nextPutAll: self name, ' := anObject'; cr ]
			ifFalse: [ s tab; nextPutAll: self name, ' value: anObject'; cr ] ].
		
	self builder environment compile: methodSource in: aClassOrTrait classified: 'accessing'.	

	
]

{ #category : #testing }
FamixMetamodelBuilderRelationSide >> hasRelation [

	^ self relation notNil
]

{ #category : #accessing }
FamixMetamodelBuilderRelationSide >> initialize [

	super initialize.	

	cardinality := #one.
	container := false.
	derived := false.
	target := false.
	source := false.

]

{ #category : #properties }
FamixMetamodelBuilderRelationSide >> isContainer [

	^ container
]

{ #category : #properties }
FamixMetamodelBuilderRelationSide >> isDerived [

	^ derived
]

{ #category : #properties }
FamixMetamodelBuilderRelationSide >> isSource [

	^ source
]

{ #category : #properties }
FamixMetamodelBuilderRelationSide >> isTarget [

	^ target
]

{ #category : #accessing }
FamixMetamodelBuilderRelationSide >> many [

	cardinality := #many
]

{ #category : #'relations - named' }
FamixMetamodelBuilderRelationSide >> manyBelongTo: aRelationSide [

	self container.
	self manyToOne: aRelationSide.
	

	
]

{ #category : #'relations - named' }
FamixMetamodelBuilderRelationSide >> manyToMany: aRelationSide [

	| aRelation |
	
	aRelation := self relationWith: aRelationSide.
	aRelationSide many.
	self many.
	
	self relatedClass ifNotNil: [ 
		self relatedClass addRelation: aRelation with: aRelationSide relatedClass.].
	
	^ aRelation
	
	
]

{ #category : #'relations - named' }
FamixMetamodelBuilderRelationSide >> manyToOne: aRelationSide [

	| aRelation |
	
	aRelation := self relationWith: aRelationSide.
	
	aRelationSide many.
	
	self relatedClass ifNotNil: [ 
		self relatedClass addRelation: aRelation with: aRelationSide relatedClass ].
	
	^ aRelation
	
	
]

{ #category : #properties }
FamixMetamodelBuilderRelationSide >> noContainer [
	
	container := false
]

{ #category : #properties }
FamixMetamodelBuilderRelationSide >> notDerived [
	
	derived := false
]

{ #category : #accessing }
FamixMetamodelBuilderRelationSide >> one [

	cardinality := #one
]

{ #category : #'relations - named' }
FamixMetamodelBuilderRelationSide >> oneBelongsTo: aRelationSide [

	self container.
	self oneToOne: aRelationSide.
	

	
]

{ #category : #'relations - named' }
FamixMetamodelBuilderRelationSide >> oneToMany: aRelationSide [

	| aRelation |
	
	aRelation := self relationWith: aRelationSide.

	self many.
	
	self relatedClass ifNotNil: [ 
		self relatedClass addRelation: aRelation with: aRelationSide relatedClass ].
	
	^ aRelation
	
	
]

{ #category : #'relations - named' }
FamixMetamodelBuilderRelationSide >> oneToOne: aRelationSide [

	| aRelation |

	aRelation := self relationWith: aRelationSide.
	
	self relatedClass ifNotNil: [ 
		self relatedClass addRelation: aRelation with: aRelationSide relatedEntity ].
	
	^ aRelation
	
	
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
FamixMetamodelBuilderRelationSide >> propertyType [
	^ propertyType
]

{ #category : #accessing }
FamixMetamodelBuilderRelationSide >> propertyType: anObject [
	propertyType := anObject
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
FamixMetamodelBuilderRelationSide >> relatedEntity [

	^ relatedClass ifNil: [ ^ trait ]
]

{ #category : #accessing }
FamixMetamodelBuilderRelationSide >> relation [
	^ relation
]

{ #category : #accessing }
FamixMetamodelBuilderRelationSide >> relation: anObject [
	relation := anObject
]

{ #category : #private }
FamixMetamodelBuilderRelationSide >> relationWith: aRelationSide [

	| aRelation |
	
	aRelation := self builder newRelation
		side: self;
		oppositeSide: aRelationSide;
		builder: self builder;
		yourself.	
		
	self relation: aRelation.	
	aRelationSide relation: aRelation.
	
	^ aRelation

]

{ #category : #properties }
FamixMetamodelBuilderRelationSide >> source [

	source := true.
]

{ #category : #properties }
FamixMetamodelBuilderRelationSide >> source: anObject [
	source := anObject
]

{ #category : #properties }
FamixMetamodelBuilderRelationSide >> target [

	target := true.
]

{ #category : #properties }
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

	trait := self builder ensureLocalTraitNamed: aString

]

{ #category : #accessing }
FamixMetamodelBuilderRelationSide >> traitPrefix [

	^ self trait prefix
]
