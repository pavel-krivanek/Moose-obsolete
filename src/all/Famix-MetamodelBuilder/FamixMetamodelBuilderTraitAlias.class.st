Class {
	#name : #FamixMetamodelBuilderTraitAlias,
	#superclass : #FamixMetamodelBuilderBehaviorAlias,
	#instVars : [
		'builder'
	],
	#category : #'Famix-MetamodelBuilder'
}

{ #category : #accessing }
FamixMetamodelBuilderTraitAlias >> builder [
	^ builder
]

{ #category : #accessing }
FamixMetamodelBuilderTraitAlias >> builder: anObject [
	builder := anObject
]

{ #category : #accessing }
FamixMetamodelBuilderTraitAlias >> property: propertyName [

	^ FamixMetamodelBuilderRelationSide new
		builder: self builder;
		traitName: self traitName;
		name: propertyName;
		yourself.
]
