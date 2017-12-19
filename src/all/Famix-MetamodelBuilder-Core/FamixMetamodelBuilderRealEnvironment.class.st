Class {
	#name : #FamixMetamodelBuilderRealEnvironment,
	#superclass : #FamixMetamodelBuilderEnvironment,
	#category : #'Famix-MetamodelBuilder-Core'
}

{ #category : #compiling }
FamixMetamodelBuilderRealEnvironment >> basicSuperclass [

	^ MooseEntity
]

{ #category : #compiling }
FamixMetamodelBuilderRealEnvironment >> basicTrait [

	^ FmxTraitEntity
]

{ #category : #compiling }
FamixMetamodelBuilderRealEnvironment >> compile: aSource in: aClass classified: aProtocol [

	^ aClass compile: aSource classified: aProtocol
]

{ #category : #compiling }
FamixMetamodelBuilderRealEnvironment >> createClassNamed: aClassName superclass: aSuperclass in: packageName [

	^ aSuperclass subclass: aClassName
			instanceVariableNames: ''
			classVariableNames: ''
			package: packageName.

]

{ #category : #compiling }
FamixMetamodelBuilderRealEnvironment >> createDummyClassNamed: aClassName in: packageName [

	^ Object subclass: aClassName
			instanceVariableNames: ''
			classVariableNames: ''
			package: packageName.

]

{ #category : #compiling }
FamixMetamodelBuilderRealEnvironment >> createTraitNamed: traitName slots: slots in: packageName [

	^ self basicTrait subclass: traitName asSymbol
		slots: slots
		classVariables: {  }
		category: packageName.	
]

{ #category : #compiling }
FamixMetamodelBuilderRealEnvironment >> slotNamed: slotName cardinality: cardinality type: type opposite: oppositeName [

	| cardinalityClass |
	
	cardinalityClass := cardinality = #one
		ifTrue: [ FMOne ]
		ifFalse: [ FMMany ].
		
	^ slotName asSymbol => cardinalityClass type: type asSymbol opposite: oppositeName asSymbol
]
