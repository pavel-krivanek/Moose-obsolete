"
FamixMetamodelBuilderBehavior
"
Class {
	#name : #FamixMetamodelBuilderBehavior,
	#superclass : #Object,
	#instVars : [
		'name',
		'relations',
		'builder',
		'realClass',
		'willGenerate',
		'properties',
		'tag',
		'comment',
		'prefix',
		'packageName',
		'testingSelectors'
	],
	#category : #'Famix-MetamodelBuilder-Core'
}

{ #category : #'relations - arrows' }
FamixMetamodelBuilderBehavior >> *- aRelationSide [

	^ self manyToOne: aRelationSide
]

{ #category : #'relations - arrows' }
FamixMetamodelBuilderBehavior >> *-* aRelationSide [

	^ self manyToMany: aRelationSide
]

{ #category : #'relations - arrows' }
FamixMetamodelBuilderBehavior >> *-<> aRelationSide [

	^ self manyBelongTo: aRelationSide
	
]

{ #category : #'relations - arrows' }
FamixMetamodelBuilderBehavior >> - aRelationSide [

	^ self oneToOne: aRelationSide
]

{ #category : #'relations - arrows' }
FamixMetamodelBuilderBehavior >> -* aRelationSide [

	^ self oneToMany: aRelationSide
]

{ #category : #accessing }
FamixMetamodelBuilderBehavior >> --|> anObject [

	self generalization: anObject.
	^ anObject

]

{ #category : #'relations - arrows' }
FamixMetamodelBuilderBehavior >> -<> aRelationSide [

	^ self oneBelongsTo: aRelationSide

	
]

{ #category : #'relations - arrows' }
FamixMetamodelBuilderBehavior >> <>- aRelationSide [

	^ self containsOne: aRelationSide
	
]

{ #category : #'relations - arrows' }
FamixMetamodelBuilderBehavior >> <>-* aRelationSide [

	^ self containsMany: aRelationSide
	

	
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

	"skip duplicities"
	(self sides anySatisfy: [ :each | each  name = aRelationSide name ])
		ifTrue: [ ^ self ].

	self sides add: aRelationSide
]

{ #category : #converting }
FamixMetamodelBuilderBehavior >> as: aTraitOrTraitName property: propertyName comment: aString [

	^ (self as: aTraitOrTraitName property: propertyName)
		comment: aString;
		yourself.
]

{ #category : #accessing }
FamixMetamodelBuilderBehavior >> builder [
	^ builder
]

{ #category : #accessing }
FamixMetamodelBuilderBehavior >> builder: anObject [
	builder := anObject
]

{ #category : #accessing }
FamixMetamodelBuilderBehavior >> comment [
	^ comment
]

{ #category : #accessing }
FamixMetamodelBuilderBehavior >> comment: anObject [
	comment := anObject
]

{ #category : #'relations - named' }
FamixMetamodelBuilderBehavior >> containsMany: otherClass [

	| aRelation |
	
	aRelation := self oneToMany: otherClass.
	aRelation right container.
			
	^ aRelation
	
]

{ #category : #'relations - named' }
FamixMetamodelBuilderBehavior >> containsOne: otherClass [

	| aRelation |
	
	aRelation := self oneToOne: otherClass.
	aRelation right container.
			
	^ aRelation
	
]

{ #category : #'settings - default' }
FamixMetamodelBuilderBehavior >> defaultSuperclass [
	
	^ self builder environment basicSuperclass
]

{ #category : #'settings - default' }
FamixMetamodelBuilderBehavior >> defaultTag [

	^ self builder classTag
]

{ #category : #accessing }
FamixMetamodelBuilderBehavior >> fullName [

	^ (self prefix, self name) asSymbol
]

{ #category : #generating }
FamixMetamodelBuilderBehavior >> generateAccessors [

	self properties do: [ :each |
		each generateAccessorsIn: self realClass. ]

]

{ #category : #generating }
FamixMetamodelBuilderBehavior >> generateAnnotationIn: aRealClass as: aName superclass: aSuperclass [

	| aSuperclassName |
	
	aSuperclassName := aSuperclass  
		ifNotNil: [ aSuperclass name ]
		ifNil: [ 
			(self classGeneralization = self defaultSuperclass) 
				ifTrue: [ self defaultSuperclass name]
				ifFalse: [ self classGeneralization 
					ifNil: [ self defaultSuperclass name ]
					ifNotNil: [ 
						self classGeneralization realClass name ] ] ].

	aRealClass classSide compile: ('annotation

	<generated>
	<MSEClass: #{1} super: #{2}>
	<package: {3}>
	<generated>
	^self' format: { aName. aSuperclassName. self builder safeAnnotationPackageName})
		classified: 'meta'

]

{ #category : #generating }
FamixMetamodelBuilderBehavior >> generateTestingSelectors [

	self testingSelectors do: [ :aSelector |
		self realClass instanceSide compile: ('{1}

	<generated>
	^ true' format: { aSelector }) 
		classified: #testing.

"		self builder classes do: [ :aBehavior |
			aBehavior classGeneralization ifNil: ["
				
	self builder classes do: [ :aBehavior |
			(aBehavior name = #Entity) ifTrue: [ "HACK"
				aBehavior realClass instanceSide compile: ('{1}

	<generated>
	^ false' format: { aSelector }) 
		classified: #testing. ]]].
]

{ #category : #accessing }
FamixMetamodelBuilderBehavior >> initialize [

	super initialize.
	relations := OrderedCollection new.
	properties := OrderedCollection new.
	willGenerate := true.
	prefix := String new.
	packageName := String new.
	testingSelectors := Set new.
]

{ #category : #testing }
FamixMetamodelBuilderBehavior >> isMetamodelClass [

	^ false
]

{ #category : #testing }
FamixMetamodelBuilderBehavior >> isMetamodelTrait [

	^ false
]

{ #category : #'relations - named' }
FamixMetamodelBuilderBehavior >> manyBelongTo: otherClass [

	| aRelation |
	
	aRelation := self manyToOne: otherClass.
	aRelation left container.
			
	^ aRelation

]

{ #category : #'relations - named' }
FamixMetamodelBuilderBehavior >> manyToMany: otherClass [

	| aRelation ownSide oppositeSide  |
	
	ownSide := self as: otherClass relatedOwnerTraitName property: otherClass pluralPropertyName. 
	oppositeSide := otherClass as: self relatedOwnerTraitName property: self pluralPropertyName. 	
	ownSide many.
	oppositeSide many.
	aRelation := self relationFrom: ownSide to: oppositeSide.
		
	^ aRelation
	
	
]

{ #category : #'relations - named' }
FamixMetamodelBuilderBehavior >> manyToOne: otherClass [

	| aRelation ownSide oppositeSide  |
	
	ownSide := self as: self relatedTraitName property: self ownerPropertyName. 
	oppositeSide := otherClass as: self relatedOwnerTraitName property: self pluralPropertyName. 	
	oppositeSide many.
	aRelation := self relationFrom: ownSide to: oppositeSide.
		
	^ aRelation
	
	
]

{ #category : #accessing }
FamixMetamodelBuilderBehavior >> name [
	^ name
]

{ #category : #accessing }
FamixMetamodelBuilderBehavior >> name: anObject [
	name := anObject
]

{ #category : #'relations - named' }
FamixMetamodelBuilderBehavior >> oneBelongsTo: otherClass [

	| aRelation |
	
	aRelation := self oneToOne: otherClass.
	aRelation left container.
			
	^ aRelation

]

{ #category : #'relations - named' }
FamixMetamodelBuilderBehavior >> oneToMany: otherClass [

	| aRelation ownSide oppositeSide  |
	
	ownSide := self as: otherClass relatedOwnerTraitName property: otherClass pluralPropertyName. 
	oppositeSide := otherClass as: otherClass relatedTraitName property: otherClass ownerPropertyName. 	
	ownSide many.
	aRelation := self relationFrom: ownSide to: oppositeSide.
		
	^ aRelation
	
	
]

{ #category : #'relations - named' }
FamixMetamodelBuilderBehavior >> oneToOne: otherClass [

	| aRelation ownSide oppositeSide  |
	
	ownSide := self "as: self relatedTraitName" property: otherClass propertyName. 
	oppositeSide := otherClass "as: otherClass relatedTraitName" property: self propertyName.
	 	
	aRelation := self relationFrom: ownSide to: oppositeSide.
		
	^ aRelation
	
	
]

{ #category : #accessing }
FamixMetamodelBuilderBehavior >> packageName [
	^ packageName
]

{ #category : #accessing }
FamixMetamodelBuilderBehavior >> packageName: anObject [
	packageName := anObject
]

{ #category : #accessing }
FamixMetamodelBuilderBehavior >> pluralRelationName [
	
	| lowercase |
	
	lowercase := self name asLowercase.

	^ (lowercase endsWith: 's')
		ifFalse: [ lowercase, 's' ]
		ifTrue: [ lowercase, 'es' ]
]

{ #category : #accessing }
FamixMetamodelBuilderBehavior >> prefix [
	^ prefix
]

{ #category : #accessing }
FamixMetamodelBuilderBehavior >> prefix: anObject [
	prefix := anObject
]

{ #category : #generating }
FamixMetamodelBuilderBehavior >> printOn: aStream [

	aStream 
		nextPutAll: self class name; 
		nextPutAll: '(';
		nextPutAll: self name asString;
		nextPutAll: ')'
]

{ #category : #accessing }
FamixMetamodelBuilderBehavior >> properties [
	^ properties
]

{ #category : #accessing }
FamixMetamodelBuilderBehavior >> properties: anObject [
	properties := anObject
]

{ #category : #generating }
FamixMetamodelBuilderBehavior >> property: propertyName [

	| aSide |
	
	aSide := FamixMetamodelBuilderRelationSide new
		builder: self builder;
		trait: self;
		name: propertyName;
		yourself.
		
	self addRelationSide: aSide.
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

{ #category : #private }
FamixMetamodelBuilderBehavior >> relationFrom: ownSide to: oppositeSide [

	| aRelation |
	
	aRelation := self builder newRelation
		side: ownSide;
		oppositeSide: oppositeSide;
		builder: self builder;
		yourself.	

	ownSide relation: aRelation.	
	oppositeSide relation: aRelation.

	ownSide relatedClass ifNotNil: [ 
		ownSide relatedClass addRelation: aRelation with: oppositeSide relatedClass ].
		
	^ aRelation

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
FamixMetamodelBuilderBehavior >> tag [
	^ tag ifNil: [ self defaultTag ]
]

{ #category : #accessing }
FamixMetamodelBuilderBehavior >> tag: aSymbol [

	tag := aSymbol
]

{ #category : #'testing selectors' }
FamixMetamodelBuilderBehavior >> testingSelector: aSelector [

	testingSelectors add: aSelector.
]

{ #category : #'testing selectors' }
FamixMetamodelBuilderBehavior >> testingSelectors [

	^ testingSelectors
]

{ #category : #'testing selectors' }
FamixMetamodelBuilderBehavior >> testingSelectors: aCollection [

	testingSelectors := aCollection
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

{ #category : #'testing selectors' }
FamixMetamodelBuilderBehavior >> withTesting [

	"adds methods like #isMethod based on the behavior name"

	| aName |
	
	aName := self name capitalized.
	
	"remove T (for traits)"
	((aName size >= 2) and: [( aName first = $T ) and: [ aName second isUppercase ]])
		ifTrue: [ aName := aName allButFirst ].
		
	testingSelectors add: 'is', aName.
]
