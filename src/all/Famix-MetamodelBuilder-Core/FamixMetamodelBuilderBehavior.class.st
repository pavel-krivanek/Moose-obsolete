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
FamixMetamodelBuilderBehavior >> builder [
	^ builder
]

{ #category : #accessing }
FamixMetamodelBuilderBehavior >> builder: anObject [
	builder := anObject
]

{ #category : #'relations - named' }
FamixMetamodelBuilderBehavior >> containsMany: otherClass [

	| aRelation |
	
	aRelation := otherClass generatedManyRelation.
	aRelation side relatedClass: otherClass.
	aRelation oppositeSide relatedClass: self.	
	self addRelation: aRelation with: otherClass.
	^ aRelation
]

{ #category : #generating }
FamixMetamodelBuilderBehavior >> defaultSuperclass [
	
	^ self builder environment basicSuperclass
]

{ #category : #accessing }
FamixMetamodelBuilderBehavior >> fullName [

	^ self builder prefix, self name
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
	<package: #{3}>
	^self' format: { self name. aSuperclassName. self builder packageName})
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

{ #category : #generating }
FamixMetamodelBuilderBehavior >> generatedManyRelation [

	^ builder newRelation generatedWithMany: self pluralRelationName.
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

	^ realClass ifNil: [ Smalltalk at: (self builder prefix, self name) asSymbol  ]
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
