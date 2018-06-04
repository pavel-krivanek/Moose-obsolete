Class {
	#name : #FamixMetamodelBuilderNavigationGroup,
	#superclass : #Object,
	#instVars : [
		'name',
		'entity'
	],
	#category : #'Famix-MetamodelBuilder-Core'
}

{ #category : #accessing }
FamixMetamodelBuilderNavigationGroup >> entity [
	^ entity
]

{ #category : #accessing }
FamixMetamodelBuilderNavigationGroup >> entity: anObject [
	entity := anObject
]

{ #category : #accessing }
FamixMetamodelBuilderNavigationGroup >> name [
	^ name
]

{ #category : #accessing }
FamixMetamodelBuilderNavigationGroup >> name: anObject [
	name := anObject
]
