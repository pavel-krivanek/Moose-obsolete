Class {
	#name : #FamixMetamodelBuilderBehavior,
	#superclass : #Object,
	#instVars : [
		'name',
		'relations',
		'builder',
		'realClass',
		'willGenerate',
		'properties'
	],
	#category : #'Famix-MetamodelBuilder-Core'
}

{ #category : #accessing }
FamixMetamodelBuilderBehavior >> --|> anObject [

	self generalization: anObject.
	^ anObject

]

{ #category : #'relations - arrows' }
FamixMetamodelBuilderBehavior >> -<> anotherClass [

	^ anotherClass containsMany: self
]

{ #category : #'relations - arrows' }
FamixMetamodelBuilderBehavior >> <>- anotherClass [

	^ self containsMany: anotherClass
]

{ #category : #'relations - arrows' }
FamixMetamodelBuilderBehavior >> <>-* anotherClass [

	^ self containsMany: anotherClass
]

{ #category : #accessing }
FamixMetamodelBuilderBehavior >> <|-- anObject [

	anObject generalization: self.
	^ anObject

]

{ #category : #accessing }
FamixMetamodelBuilderBehavior >> addRelation: aRelation with: anotherClass [

	self relations add: aRelation.
	anotherClass relations add: aRelation oppositeRelation
	
	
]

{ #category : #accessing }
FamixMetamodelBuilderBehavior >> addRelationSide: aRelationSide [

	self sides add: aRelationSide
]

{ #category : #accessing }
FamixMetamodelBuilderBehavior >> builder [
	^ builder
]

{ #category : #accessing }
FamixMetamodelBuilderBehavior >> builder: anObject [
	builder := anObject
]

{ #category : #'relations - named' }
FamixMetamodelBuilderBehavior >> containsMany: otherClass [

	| aRelation ownSide oppositeSide  |
	
	ownSide := self as: otherClass relatedOwnerTraitName property: otherClass pluralPropertyName. 
	oppositeSide := otherClass as: otherClass relatedTraitName property: otherClass ownerPropertyName. 
	oppositeSide container.
	
	aRelation := self builder newRelation
		side: ownSide;
		oppositeSide: oppositeSide;
		builder: self builder;
		yourself.	

	ownSide relation: aRelation.	
	oppositeSide relation: aRelation.
	ownSide many.
	
	ownSide relatedClass ifNotNil: [ 
		ownSide relatedClass addRelation: aRelation with: oppositeSide relatedClass ].
	
	^ aRelation
	
	
]

{ #category : #generating }
FamixMetamodelBuilderBehavior >> defaultSuperclass [
	
	^ self builder environment basicSuperclass
]

{ #category : #accessing }
FamixMetamodelBuilderBehavior >> fullName [

	^ (self builder prefix, self name) asSymbol
]

{ #category : #generating }
FamixMetamodelBuilderBehavior >> generateAccessors [

	self properties do: [ :each |
		each generateAccessorsIn: self realClass. ]

]

{ #category : #generating }
FamixMetamodelBuilderBehavior >> generateAnnotationIn: aRealClass [ 

	| aSuperclassName |
	
	aSuperclassName :=  (self classGeneralization = self defaultSuperclass) 
		ifTrue: [ self defaultSuperclass name]
		ifFalse: [ self classGeneralization 
			ifNil: [ self defaultSuperclass name ]
			ifNotNil: [ 
				self classGeneralization realClass name ] ].

	aRealClass classSide compile: ('annotation

	<MSEClass: #{1} super: #{2}>
	<package: {3}>
	^self' format: { self name. aSuperclassName. self builder safePackageName})
		classified: 'meta'

]

{ #category : #generating }
FamixMetamodelBuilderBehavior >> generateAnnotationIn: aClass with: aBuilder [

	| aSuperclassName |
	
	aSuperclassName := self classGeneralization 
		ifNil: [ self defaultSuperclass name ]
		ifNotNil: [ self classGeneralization realClass name ].

	aClass classSide compile: ('annotation

	<MSEClass: #{1} super: #{2}>
	<package: #{3}>
	^self' format: { self name. aSuperclassName. aBuilder packageName})
		classified: 'meta'

]

{ #category : #accessing }
FamixMetamodelBuilderBehavior >> initialize [

	super initialize.
	relations := OrderedCollection new.
	properties := OrderedCollection new.
	willGenerate := true.
]

{ #category : #testing }
FamixMetamodelBuilderBehavior >> isMetamodelClass [

	^ false
]

{ #category : #testing }
FamixMetamodelBuilderBehavior >> isMetamodelTrait [

	^ false
]

{ #category : #accessing }
FamixMetamodelBuilderBehavior >> name [
	^ name
]

{ #category : #accessing }
FamixMetamodelBuilderBehavior >> name: anObject [
	name := anObject
]

{ #category : #accessing }
FamixMetamodelBuilderBehavior >> pluralRelationName [
	
	| lowercase |
	
	lowercase := self name asLowercase.

	^ (lowercase endsWith: 's')
		ifFalse: [ lowercase, 's' ]
		ifTrue: [ lowercase, 'es' ]
]

{ #category : #generating }
FamixMetamodelBuilderBehavior >> printOn: aStream [

	aStream << self class name << '(' << self name asString << ')'
]

{ #category : #accessing }
FamixMetamodelBuilderBehavior >> properties [
	^ properties
]

{ #category : #generating }
FamixMetamodelBuilderBehavior >> property: propertyName [

	| aSide |
	
	aSide := FamixMetamodelBuilderRelationSide new
		builder: self builder;
		trait: self;
		name: propertyName;
		yourself.
		
	self sides add: aSide.
	^ aSide.
]

{ #category : #accessing }
FamixMetamodelBuilderBehavior >> property: propertyName type: aTypeName [

	| aSide |
	
	aSide := FamixMetamodelBuilderTypedProperty new
		name: propertyName;
		builder: self builder;
		propertyType: aTypeName asSymbol;
		yourself.
		
	self properties add: aSide.

	^ aSide.		
]

{ #category : #accessing }
FamixMetamodelBuilderBehavior >> realClass [

	^ realClass ifNil: [ Smalltalk at: self fullName  ]
]

{ #category : #accessing }
FamixMetamodelBuilderBehavior >> realClass: anObject [
	realClass := anObject
]

{ #category : #accessing }
FamixMetamodelBuilderBehavior >> relations [
	^ relations
]

{ #category : #accessing }
FamixMetamodelBuilderBehavior >> relations: anObject [
	relations := anObject
]

{ #category : #accessing }
FamixMetamodelBuilderBehavior >> sides [
	^ self properties
]

{ #category : #generating }
FamixMetamodelBuilderBehavior >> slotDefinitions [

	| slotGroups |
	
	slotGroups := (self properties collect: [ :property | property asSlot ]) groupedBy: #name.

	"check that all slots with the same name have the same properties"
	slotGroups valuesDo: [ :similarSlots |
		self assert: (similarSlots collect: #name) asSet size = 1. ].
		
	^ slotGroups values collect: [ :each | each anyOne ].

]

{ #category : #accessing }
FamixMetamodelBuilderBehavior >> uses: aTrait [

	^ self generalization: aTrait
]

{ #category : #accessing }
FamixMetamodelBuilderBehavior >> willGenerate [
	^ willGenerate
]

{ #category : #accessing }
FamixMetamodelBuilderBehavior >> willGenerate: anObject [
	willGenerate := anObject
]
