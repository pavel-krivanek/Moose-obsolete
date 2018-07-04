Class {
	#name : #FamixMetamodelBuilderEntity,
	#superclass : #Object,
	#instVars : [
		'name',
		'comment',
		'builder',
		'willGenerate'
	],
	#category : #'Famix-MetamodelBuilder-Core'
}

{ #category : #accessing }
FamixMetamodelBuilderEntity >> builder [
	^ builder
]

{ #category : #accessing }
FamixMetamodelBuilderEntity >> builder: anObject [
	builder := anObject
]

{ #category : #accessing }
FamixMetamodelBuilderEntity >> comment [
	^ comment
]

{ #category : #accessing }
FamixMetamodelBuilderEntity >> comment: anObject [
	comment := anObject
]

{ #category : #initialization }
FamixMetamodelBuilderEntity >> initialize [

	super initialize.	

	comment := String new.
	willGenerate := true.
	navigationGroups := Set new.

]

{ #category : #accessing }
FamixMetamodelBuilderEntity >> name [
	^ name
]

{ #category : #accessing }
FamixMetamodelBuilderEntity >> name: anObject [
	name := anObject
]

{ #category : #accessing }
FamixMetamodelBuilderEntity >> willGenerate [
	^ willGenerate
]

{ #category : #accessing }
FamixMetamodelBuilderEntity >> willGenerate: anObject [
	willGenerate := anObject
]
