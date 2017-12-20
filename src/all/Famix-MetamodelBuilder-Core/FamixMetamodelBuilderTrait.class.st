Class {
	#name : #FamixMetamodelBuilderTrait,
	#superclass : #FamixMetamodelBuilderBehavior,
	#instVars : [
		'sides'
	],
	#category : #'Famix-MetamodelBuilder-Core'
}

{ #category : #accessing }
FamixMetamodelBuilderTrait >> asTrait [

	^ self
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
	
	traitName := self fullName.
	
	aTrait := self builder environment createTraitNamed: traitName asSymbol slots: self slotDefinitions in: self builder packageName.
			
	self realClass: aTrait.
	
	self generateAccessors.
	self generateAnnotationIn: aTrait.

]

{ #category : #initialization }
FamixMetamodelBuilderTrait >> initialize [

	super initialize.
	

]

{ #category : #testing }
FamixMetamodelBuilderTrait >> isMetamodelTrait [

	^ true
]

{ #category : #accessing }
FamixMetamodelBuilderTrait >> removeRelationSide: aRelationSide [

	properties remove: aRelationSide ifAbsent: [ ].
]
