Class {
	#name : #FamixMetamodelBuilderEntity,
	#superclass : #Object,
	#instVars : [
		'name',
		'comment',
		'builder',
		'willGenerate',
		'navigationGroups'
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

{ #category : #testing }
FamixMetamodelBuilderEntity >> isHierarchyRoot [

	^ false
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
FamixMetamodelBuilderEntity >> navigationGroups [
	^ navigationGroups
]

{ #category : #accessing }
FamixMetamodelBuilderEntity >> navigationGroups: anObject [
	navigationGroups := anObject
]

{ #category : #accessing }
FamixMetamodelBuilderEntity >> willGenerate [
	^ willGenerate
]

{ #category : #accessing }
FamixMetamodelBuilderEntity >> willGenerate: anObject [
	willGenerate := anObject
]

{ #category : #navigation }
FamixMetamodelBuilderEntity >> withNavigation [

	self navigationGroups add: (FamixMetamodelBuilderNavigationGroup new 
		name: self name;
		entity: self;
		yourself).
]
