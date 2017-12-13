Class {
	#name : #FamixMetamodelBuilderTrait,
	#superclass : #FamixMetamodelBuilderBehavior,
	#instVars : [
		'sides'
	],
	#category : #'Famix-MetamodelBuilder'
}

{ #category : #accessing }
FamixMetamodelBuilderTrait >> addRelationSide: aRelationSide [

	sides add: aRelationSide
]

{ #category : #generating }
FamixMetamodelBuilderTrait >> classGeneralization [

	^ FmxTraitEntity
]

{ #category : #generating }
FamixMetamodelBuilderTrait >> generate [

	| aTrait traitName |
	
	self willGenerate ifFalse: [ ^ self ].
	
	traitName := (self builder prefix, self name) asSymbol.
	
	aTrait := FmxTraitEntity subclass: traitName asSymbol
	slots: self slotDefinitions
	classVariables: {  }
	category: self builder packageName.
			
	self realClass: aTrait.
	
	self generateAccessors.
	
	self willGenerate ifTrue: [ self generateAnnotationIn: aTrait ].

]

{ #category : #generating }
FamixMetamodelBuilderTrait >> generateAccessors [

	self sides do: [ :each | 
		self builder generateAccessorsFor: each in: self realClass ]

]

{ #category : #accessing }
FamixMetamodelBuilderTrait >> initialize [

	super initialize.
	
	sides := Set new.
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

	sides remove: aRelationSide ifAbsent: [ ].
]

{ #category : #accessing }
FamixMetamodelBuilderTrait >> sides [
	^ sides
]

{ #category : #accessing }
FamixMetamodelBuilderTrait >> sides: anObject [
	sides := anObject
]

{ #category : #generating }
FamixMetamodelBuilderTrait >> slotDefinitions [

	| slotGroups |
	
	slotGroups := (self sides collect: [ :each | self slotFor: each ]) groupedBy: #name.
	
	"check that all slots with the same name have the same properties"
	slotGroups values do: [ :similarSlots |
		self assert: (similarSlots collect: #name) asSet size = 1. ].
		
	^ slotGroups values collect: [ :each | each anyOne ].

]

{ #category : #generating }
FamixMetamodelBuilderTrait >> slotFor: aRelationSide [
	
	| slotName cardinality opposite type oppositeName |
	
	slotName := aRelationSide name.
	opposite := aRelationSide otherSide.
	cardinality := aRelationSide cardinality = #one
		ifTrue: [ FMOne ]
		ifFalse: [ FMMany ].
	type := self builder prefix, opposite traitName.
	oppositeName := opposite name.
	
	^ slotName asSymbol => cardinality type: type asSymbol opposite: oppositeName asSymbol
	
	
	
	
]
