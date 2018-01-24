"
FamixMetamodelBuilderProperty
"
Class {
	#name : #FamixMetamodelBuilderProperty,
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
FamixMetamodelBuilderProperty >> asSlot [

	self subclassResponsibility
]

{ #category : #accessing }
FamixMetamodelBuilderProperty >> builder [
	^ builder
]

{ #category : #accessing }
FamixMetamodelBuilderProperty >> builder: anObject [
	builder := anObject
]

{ #category : #accessing }
FamixMetamodelBuilderProperty >> comment [
	^ comment
]

{ #category : #accessing }
FamixMetamodelBuilderProperty >> comment: anObject [
	comment := anObject
]

{ #category : #generating }
FamixMetamodelBuilderProperty >> generateAccessorsIn: aClassOrTrait [

	self generateGetterIn: aClassOrTrait.
	self generateSetterIn: aClassOrTrait.
]

{ #category : #accessing }
FamixMetamodelBuilderProperty >> initialize [

	super initialize.	

	comment := String new.
	willGenerate := true.

]

{ #category : #accessing }
FamixMetamodelBuilderProperty >> name [
	^ name
]

{ #category : #accessing }
FamixMetamodelBuilderProperty >> name: anObject [
	name := anObject
]

{ #category : #printing }
FamixMetamodelBuilderProperty >> printOn: aStream [

	super printOn: aStream.
	
	aStream 
		nextPutAll: '(';
		nextPutAll: self name;
		nextPutAll: ')'
]

{ #category : #accessing }
FamixMetamodelBuilderProperty >> willGenerate [
	^ willGenerate
]

{ #category : #accessing }
FamixMetamodelBuilderProperty >> willGenerate: anObject [
	willGenerate := anObject
]
