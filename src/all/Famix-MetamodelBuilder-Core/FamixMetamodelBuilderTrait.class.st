Class {
	#name : #FamixMetamodelBuilderTrait,
	#superclass : #FamixMetamodelBuilderBehavior,
	#instVars : [
		'sides'
	],
	#category : #'Famix-MetamodelBuilder-Core'
}

{ #category : #accessing }
FamixMetamodelBuilderTrait >> addRelationSide: aRelationSide [

	sides add: aRelationSide
]

{ #category : #generating }
FamixMetamodelBuilderTrait >> classGeneralization [

	^ self builder environment basicTrait
]

{ #category : #generating }
FamixMetamodelBuilderTrait >> defaultSuperclass [
	
	^ self builder environment basicTrait
]

{ #category : #accessing }
FamixMetamodelBuilderTrait >> generalization: anObject [

	self error: 'Traits cannot have a non-default superclasss'
]

{ #category : #generating }
FamixMetamodelBuilderTrait >> generate [

	| aTrait traitName |
	
	self willGenerate ifFalse: [ ^ self ].
	
	traitName := (self builder prefix, self name) asSymbol.
	
	aTrait := self builder environment createTraitNamed: traitName asSymbol slots: self slotDefinitions in: self builder packageName.
			
	self realClass: aTrait.
	
	self willGenerate ifTrue: [ 
		self generateAccessors.
		self generateAnnotationIn: aTrait ].

]

{ #category : #initialization }
FamixMetamodelBuilderTrait >> initialize [

	super initialize.
	

]

{ #category : #testing }
FamixMetamodelBuilderTrait >> isMetamodelTrait [

	^ true
]

{ #category : #generating }
FamixMetamodelBuilderTrait >> property: propertyName [

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
FamixMetamodelBuilderTrait >> removeRelationSide: aRelationSide [

	properties remove: aRelationSide ifAbsent: [ ].
]

{ #category : #accessing }
FamixMetamodelBuilderTrait >> sides [
	^ self properties
]

{ #category : #generating }
FamixMetamodelBuilderTrait >> slotDefinitions [

	| slotGroups |
	
	slotGroups := (self sides collect: [ :property | property asSlot ]) groupedBy: #name.
	
	"check that all slots with the same name have the same properties"
	slotGroups valuesDo: [ :similarSlots |
		self assert: (similarSlots collect: #name) asSet size = 1. ].
		
	^ slotGroups values collect: [ :each | each anyOne ].

]
