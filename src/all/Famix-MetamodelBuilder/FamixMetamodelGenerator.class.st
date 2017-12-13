Class {
	#name : #FamixMetamodelGenerator,
	#superclass : #Object,
	#instVars : [
		'builder'
	],
	#category : #'Famix-MetamodelBuilder'
}

{ #category : #accessing }
FamixMetamodelGenerator >> builder [
	^ builder
]

{ #category : #accessing }
FamixMetamodelGenerator >> builder: anObject [
	builder := anObject
]

{ #category : #accessing }
FamixMetamodelGenerator >> cleanPackage [

	self builder cleanPackage.
]

{ #category : #accessing }
FamixMetamodelGenerator >> define [

	self defineClasses.
	self defineTraits.
	self defineProperties.
	
]

{ #category : #accessing }
FamixMetamodelGenerator >> defineClasses [
]

{ #category : #accessing }
FamixMetamodelGenerator >> defineProperties [
]

{ #category : #accessing }
FamixMetamodelGenerator >> defineTraits [
]

{ #category : #accessing }
FamixMetamodelGenerator >> generate [

	self define.
	self builder generate
]
