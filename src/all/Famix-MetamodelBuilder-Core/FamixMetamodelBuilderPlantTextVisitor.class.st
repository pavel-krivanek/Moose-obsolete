"
b := FmxNGTestCompatibilityGenerator builderWithDefinitions.
v := FamixMetamodelBuilderPlantTextVisitor new.
b acceptVisitor: v.
v contents

"
Class {
	#name : #FamixMetamodelBuilderPlantTextVisitor,
	#superclass : #FamixMetamodelBuilderVisitor,
	#instVars : [
		'stream',
		'relations',
		'gatherTraits',
		'behaviors',
		'mergeTraits',
		'generalizationDefinitions',
		'typedProperties'
	],
	#category : #'Famix-MetamodelBuilder-Core'
}

{ #category : #private }
FamixMetamodelBuilderPlantTextVisitor >> behaviorNameOrNilFor: aBehavior [

	| foundAssociation |
	
	foundAssociation := behaviors associations 
		detect: [ :each | each value includes: aBehavior ] 
		ifNone: [ nil ].
		
	^ foundAssociation ifNotNil: [ foundAssociation key ].
]

{ #category : #accessing }
FamixMetamodelBuilderPlantTextVisitor >> behaviors [
	^ behaviors
]

{ #category : #visiting }
FamixMetamodelBuilderPlantTextVisitor >> contents [

	^ stream contents
]

{ #category : #private }
FamixMetamodelBuilderPlantTextVisitor >> ensureBehaviorNameFor: aBehavior [

	^ (behaviors associations detect: [ :each |
		each value includes: aBehavior ] ifNone: [ behaviors associationAt: (self registerNewBehavior: aBehavior) ]) key 
]

{ #category : #accessing }
FamixMetamodelBuilderPlantTextVisitor >> gatherTraits [
	^ gatherTraits
]

{ #category : #accessing }
FamixMetamodelBuilderPlantTextVisitor >> gatherTraits: anObject [
	gatherTraits := anObject
]

{ #category : #initialization }
FamixMetamodelBuilderPlantTextVisitor >> initialize [

	super initialize.
	
	stream := String new writeStream.
	relations := IdentitySet new.
	gatherTraits := false.
	behaviors := Dictionary new.
	mergeTraits := true.
	generalizationDefinitions := OrderedCollection new.
	typedProperties := OrderedCollection new.
]

{ #category : #accessing }
FamixMetamodelBuilderPlantTextVisitor >> mergeTraits [
	^ mergeTraits
]

{ #category : #accessing }
FamixMetamodelBuilderPlantTextVisitor >> mergeTraits: anObject [
	mergeTraits := anObject
]

{ #category : #private }
FamixMetamodelBuilderPlantTextVisitor >> mergeTrat: aTrait withBehaviorNamed: aBehaviorName [

	(behaviors at: aBehaviorName) add: aTrait.
	
	
	
]

{ #category : #private }
FamixMetamodelBuilderPlantTextVisitor >> onlySingleUserOf: aTrait [

	^ ((aTrait builder classes select: #willGenerate) count: [ :aClass | (aClass traitGeneralizations size = 1) and: [aClass traitGeneralizations includes: aTrait]]) = 1
]

{ #category : #private }
FamixMetamodelBuilderPlantTextVisitor >> registerNewBehavior: aBehavior [

	| key |
	
	key := 'behavior_', aBehavior name, (behaviors size + 1) asString.
	behaviors at: key put: (Set with: aBehavior).
	^ key
	
	
]

{ #category : #private }
FamixMetamodelBuilderPlantTextVisitor >> traitsToShowFrom: aBuilder [

	| traitsToGenerate classesToGenerate |
	
	traitsToGenerate := aBuilder traits select: #willGenerate.
	classesToGenerate := aBuilder classes select: #willGenerate.
	
	^ self mergeTraits
		ifTrue: [ traitsToGenerate select: [ :aTrait |(classesToGenerate count: [ :aClass | aClass traitGeneralizations includes: aTrait ]) ~= 1 ]]
		ifFalse: [ traitsToGenerate ]

]

{ #category : #visiting }
FamixMetamodelBuilderPlantTextVisitor >> visitBuilder: aBuilder [

	stream << '@startuml'; cr; cr.
	stream << 'hide empty members'; cr; cr.
	self gatherTraits ifTrue: [ 
		stream << 'together {'; cr ].
	(aBuilder traits select: #willGenerate) do: [ :each | each acceptVisitor: self ].
	self gatherTraits ifTrue: [ 
		stream << '}'; cr ].
	aBuilder sortedClasses do: [ :each | each acceptVisitor: self ].	

	self writeGeneralizations.
	self writeRelations.	
	stream cr; << '@enduml'; cr.
	
]

{ #category : #visiting }
FamixMetamodelBuilderPlantTextVisitor >> visitClass: aClass [

	| behaviorKey mergesTrait displayedName | 
	
	aClass willGenerate ifFalse: [ ^ self ].
	
	mergesTrait := self mergeTraits 
		and: [aClass traitGeneralizations size = 1 
		and: [ self onlySingleUserOf: aClass traitGeneralizations first]].
	
	displayedName := aClass name.

	mergesTrait	ifTrue: [ 
		(self behaviorNameOrNilFor:	aClass traitGeneralizations first)
				ifNil: [ behaviorKey := self ensureBehaviorNameFor: aClass.
					self mergeTrat: aClass traitGeneralizations first withBehaviorNamed: behaviorKey. ]
				ifNotNil: [ :key |
					behaviorKey := key.
					self mergeTrat: aClass withBehaviorNamed: behaviorKey. ].
	
	displayedName := displayedName, ' / ', aClass traitGeneralizations first name ]
	ifFalse: [ 
	behaviorKey := self ensureBehaviorNameFor: aClass].

	stream << 'class ' << behaviorKey << ' as "' << displayedName << '" {'; cr.

	aClass properties do: [ :each | each acceptVisitor: self ].
	
	mergesTrait	ifTrue: [ 
		| defs |
		defs := typedProperties select: [ :each | each key = aClass traitGeneralizations first ].
		defs do: [ :assoc | 
			stream << assoc value ] ].

	stream << '}'; cr; cr.
	
	aClass classGeneralization ifNotNil: [ :generalization |
		generalizationDefinitions add: (generalization -> aClass)].
	
	mergesTrait ifFalse: [ 
		aClass traitGeneralizations ifNotEmpty: [ :generalizations |
			generalizations do: [ :generalization |
				generalizationDefinitions add: (generalization -> aClass)]]]
	
	
]

{ #category : #visiting }
FamixMetamodelBuilderPlantTextVisitor >> visitRelationSide: aRelationSide [

	relations add: aRelationSide relation.

]

{ #category : #visiting }
FamixMetamodelBuilderPlantTextVisitor >> visitTrait: aTrait [

	| behaviorKey |
	
	aTrait willGenerate ifFalse: [ ^ self ].

	behaviorKey := self ensureBehaviorNameFor: aTrait.
	
	(self onlySingleUserOf: aTrait) ifTrue: [ 
		| savedStream |
		savedStream := stream.
		stream := String new writeStream.
		aTrait properties do: [ :each | each acceptVisitor: self ].
		typedProperties add: (aTrait -> stream contents).
		stream := savedStream.
		^ self ].
	

	stream << 'class ' << behaviorKey << ' as "' << aTrait name << '" << (T,orchid) >> {'; cr.

	aTrait properties do: [ :each | each acceptVisitor: self ].

	stream << '}'; cr; cr.

]

{ #category : #visiting }
FamixMetamodelBuilderPlantTextVisitor >> visitTypedProperty: aTypedProperty [

	stream tab; << '- '; << aTypedProperty propertyType; space; << aTypedProperty name; cr. 
]

{ #category : #relations }
FamixMetamodelBuilderPlantTextVisitor >> writeGeneralizations [

	generalizationDefinitions do: [ :each| 
		
		(each key willGenerate and: [ each value willGenerate ])
			ifTrue: [  
				stream << (self ensureBehaviorNameFor: each key) << ' <|-- ' << (self ensureBehaviorNameFor: each value).
				stream cr ]].
	stream cr.
	
]

{ #category : #relations }
FamixMetamodelBuilderPlantTextVisitor >> writeRelations [

	relations do: [ :relation | 
		stream << (self ensureBehaviorNameFor: relation from trait) << ' "'.

		stream << relation from name; space; << relation shortCardinalityString; space; << '"'.
		
		stream space.
		relation from isContainer ifTrue: [ stream nextPutAll: 'o' ].
		stream nextPutAll: '-[#black]-'.
		relation to isContainer ifTrue: [ stream nextPutAll: 'o' ].
		stream space.
		
		stream << '"'.

		stream << relation to name ; space; << relation oppositeRelation shortCardinalityString; space.
		stream << '" ' << (self ensureBehaviorNameFor: relation to trait); cr.
		]
	
]
