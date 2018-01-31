"
FamixMetamodelGenerator
"
Class {
	#name : #FamixMetamodelGenerator,
	#superclass : #Object,
	#instVars : [
		'builder'
	],
	#classInstVars : [
		'metamodel'
	],
	#category : #'Famix-MetamodelBuilder-Core'
}

{ #category : #'as yet unclassified' }
FamixMetamodelGenerator class >> builderWithDefinitions [

	^ self new define builder
]

{ #category : #accessing }
FamixMetamodelGenerator class >> metamodel [
	^ metamodel ifNil: [ metamodel := self resetMetamodel ]
]

{ #category : #accessing }
FamixMetamodelGenerator class >> metamodel: anObject [
	metamodel := anObject
]

{ #category : #accessing }
FamixMetamodelGenerator class >> resetMetamodel [

	self subclassResponsibility
]

{ #category : #definition }
FamixMetamodelGenerator >> adoptBuilder: aBuilder [

	aBuilder 
		prefix: self prefix;
		packageName: self packageName.


]

{ #category : #accessing }
FamixMetamodelGenerator >> builder [
	^ builder
]

{ #category : #accessing }
FamixMetamodelGenerator >> builder: anObject [
	builder := anObject
]

{ #category : #cleanup }
FamixMetamodelGenerator >> cleanPackage [

	self builder cleanPackage.
]

{ #category : #definition }
FamixMetamodelGenerator >> define [

	self defineTraits.
	self defineClasses.
	self defineProperties.
	self defineRelations.
	
]

{ #category : #definition }
FamixMetamodelGenerator >> defineClasses [
]

{ #category : #definition }
FamixMetamodelGenerator >> defineProperties [
]

{ #category : #definition }
FamixMetamodelGenerator >> defineRelations [
]

{ #category : #definition }
FamixMetamodelGenerator >> defineTraits [
]

{ #category : #generation }
FamixMetamodelGenerator >> generate [

	self define.
	self builder generate
]

{ #category : #definition }
FamixMetamodelGenerator >> initialize [

	super initialize.
	
	builder := self newBuilder.
	self adoptBuilder: builder.

]

{ #category : #definition }
FamixMetamodelGenerator >> newBuilder [

	| aBuilder |
	
	aBuilder := FamixMetamodelBuilder new.
	
	^ aBuilder
]

{ #category : #definition }
FamixMetamodelGenerator >> packageName [

	^ #FmxSt

]

{ #category : #definition }
FamixMetamodelGenerator >> prefix [

	^ self packageName
]
