"
FamixMetamodelBuilderEnvironment
"
Class {
	#name : #FamixMetamodelBuilderEnvironment,
	#superclass : #Object,
	#instVars : [
		'builder'
	],
	#category : #'Famix-MetamodelBuilder-Core'
}

{ #category : #'instance creation' }
FamixMetamodelBuilderEnvironment class >> for: aBuilder [

	^ self new 
		builder: aBuilder;
		yourself.
]

{ #category : #accessing }
FamixMetamodelBuilderEnvironment >> apply [


]

{ #category : #accessing }
FamixMetamodelBuilderEnvironment >> builder [
	^ builder
]

{ #category : #accessing }
FamixMetamodelBuilderEnvironment >> builder: anObject [
	builder := anObject
]
