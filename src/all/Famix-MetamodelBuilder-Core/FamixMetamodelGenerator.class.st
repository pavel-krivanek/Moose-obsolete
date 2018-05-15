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
FamixMetamodelGenerator class >> newRepository [

	| tower |
	
	tower := FMCompleteTower new.
	tower metamodel addAll: self metamodel elements.
	^ tower model.
]

{ #category : #accessing }
FamixMetamodelGenerator class >> packageName [

	self subclassResponsibility
]

{ #category : #accessing }
FamixMetamodelGenerator class >> prefix [

	^ self packageName
]

{ #category : #accessing }
FamixMetamodelGenerator class >> resetMetamodel [

	" self resetMetamodel"

	| classes tower |

	classes := self packageName asPackage definedClasses select: [ :each | each inheritsFrom: MooseEntity ].
	
	classes addAll: #'FmxNG-Generated' asPackage definedClasses.
	classes addAll: #'FmxNG-Traits' asPackage definedClasses.
	
	{ FmxTraitEntity. MooseModel. MooseAbstractGroup. MooseEntity. MooseGroup. FamixImportingContext} 
		do: [ :each | classes add: each ].

	tower := MooseModel metaBuilder: classes.
	self metamodel: tower metamodel.
	^ metamodel

	
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
	self builder 
		cleanPackage;
		generate.
]

{ #category : #generation }
FamixMetamodelGenerator >> generateWithoutCleaning [

	self define.
	self builder 
		generate.

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
	aBuilder generator: self.
	
	^ aBuilder
]

{ #category : #definition }
FamixMetamodelGenerator >> packageName [

	^ self class packageName

]

{ #category : #definition }
FamixMetamodelGenerator >> prefix [

	^ self class prefix
]
