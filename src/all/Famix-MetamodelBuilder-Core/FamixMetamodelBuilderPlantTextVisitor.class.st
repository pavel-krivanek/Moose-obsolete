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
		'mergeTraits'
	],
	#category : #'Famix-MetamodelBuilder-Core'
}

{ #category : #visiting }
FamixMetamodelBuilderPlantTextVisitor >> behaviorNameFor: aBehavior [

	^ (behaviors associations detect: [ :each |
		each value includes: aBehavior ]) key
]

{ #category : #accessing }
FamixMetamodelBuilderPlantTextVisitor >> behaviors [
	^ behaviors
]

{ #category : #visiting }
FamixMetamodelBuilderPlantTextVisitor >> contents [

	^ stream contents
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

	(behaviors at: aBehaviorName) add: aTrait
	
	
	
]

{ #category : #private }
FamixMetamodelBuilderPlantTextVisitor >> onlySingleUserOf: aTrait [

	^ ((aTrait builder classes select: #willGenerate) count: [ :aClass | aClass traitGeneralizations includes: aTrait]) = 1
]

{ #category : #private }
FamixMetamodelBuilderPlantTextVisitor >> registerNewBehavior: aBehavior [

	| key |
	
	key := 'behavior', (behaviors size + 1) asString.
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
	self gatherTraits ifTrue: [ 
		stream << 'together {'; cr ].
	(aBuilder traits select: #willGenerate) do: [ :each | each acceptVisitor: self ].
	self gatherTraits ifTrue: [ 
		stream << '}'; cr ].
	aBuilder sortedClasses do: [ :each | each acceptVisitor: self ].	
	self writeRelations.	
	stream cr; << '@enduml'; cr.
	
]

{ #category : #visiting }
FamixMetamodelBuilderPlantTextVisitor >> visitClass: aClass [

	| behaviorKey mergesTrait displayedName | 
	
	aClass willGenerate ifFalse: [ ^ self ].
	
	behaviorKey := self registerNewBehavior: aClass.
	
	mergesTrait := self mergeTraits 
		and: [aClass traitGeneralizations size = 1 
		and: [ self onlySingleUserOf: aClass traitGeneralizations first]].
	
	displayedName := aClass name.

	mergesTrait	ifTrue: [ 
		self mergeTrat: aClass traitGeneralizations first withBehaviorNamed: behaviorKey.
		displayedName := displayedName, ' / ', aClass traitGeneralizations first name ].

	stream << 'class ' << behaviorKey << ' as "' << displayedName << '" {'; cr.

	aClass properties do: [ :each | each acceptVisitor: self ].

	stream << '}'; cr; cr.
	
	aClass classGeneralization ifNotNil: [ :generalization |
		stream << generalization name << ' <|-down- ' << aClass name; cr].
	
	mergesTrait ifFalse: [ 
		aClass traitGeneralizations ifNotEmpty: [ :generalizations |
			generalizations do: [ :generalization |
				stream << (self behaviorNameFor: generalization) << ' <|-down- ' << (self behaviorNameFor: aClass); cr ]]]
	
	
]

{ #category : #visiting }
FamixMetamodelBuilderPlantTextVisitor >> visitRelationSide: aRelationSide [

	relations add: aRelationSide relation.

]

{ #category : #visiting }
FamixMetamodelBuilderPlantTextVisitor >> visitTrait: aTrait [

	| behaviorKey |

	aTrait willGenerate ifFalse: [ ^ self ].
	
	(self onlySingleUserOf: aTrait) ifTrue: [ 
		aTrait properties do: [ :each | each acceptVisitor: self ].
		^ self ].
	
	behaviorKey := self registerNewBehavior: aTrait.

	stream << 'class ' << behaviorKey << ' as "' << aTrait name << '" << (T,orchid) >> {'; cr.

	aTrait properties do: [ :each | each acceptVisitor: self ].

	stream << '}'; cr; cr.

]

{ #category : #visiting }
FamixMetamodelBuilderPlantTextVisitor >> visitTypedProperty: aTypedProperty [

	stream tab; << '- '; << aTypedProperty propertyType; space; << aTypedProperty name; cr. 
]

{ #category : #relations }
FamixMetamodelBuilderPlantTextVisitor >> writeRelations [

	relations do: [ :relation | 
		stream << (self behaviorNameFor: relation from trait) << ' "'.

		stream << relation from name; space; << relation shortCardinalityString; space; << '"'.
		
		stream space.
		relation from isContainer ifTrue: [ stream nextPutAll: 'o' ].
		stream nextPutAll: '--'.
		relation to isContainer ifTrue: [ stream nextPutAll: 'o' ].
		stream space.
		
		stream << '"'.

		stream << relation to name ; space; << relation oppositeRelation shortCardinalityString; space.
		stream << '" ' << (self behaviorNameFor: relation to trait); cr.
		]
	
]
