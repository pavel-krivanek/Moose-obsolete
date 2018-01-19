"
FamixMetamodelBuilderRealEnvironment
"
Class {
	#name : #FamixMetamodelBuilderRealEnvironment,
	#superclass : #FamixMetamodelBuilderEnvironment,
	#category : #'Famix-MetamodelBuilder-Core'
}

{ #category : #compiling }
FamixMetamodelBuilderRealEnvironment >> basicSuperclass [

	^ self class environment at: self builder basicSuperclassName
]

{ #category : #compiling }
FamixMetamodelBuilderRealEnvironment >> basicTrait [

	^ self class environment at: self builder basicTraitName
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
FamixMetamodelBuilderRealEnvironment >> createClassNamed: aClassName superclass: aSuperclass slots: slots in: packageName [

	^ aSuperclass subclass: aClassName asSymbol
		slots: slots
		classVariables: {  }
		category: packageName.	

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
FamixMetamodelBuilderRealEnvironment >> flattenTraitsFor: aClass [ 

	self builder traitsFlattening ifTrue: [ 
		| info selectors foundTraits |
		info := StatefulTraitsMergedClassInfo on: aClass.
		selectors := (Pragma allNamed: #statefulTraits in: aClass classSide) 
			collect: [ :each | each method selector ].
		foundTraits := (selectors flatCollect: [ :selector | aClass perform: selector]) asSet.
		foundTraits do: [ :each | info addTrait: each ].
		info merge ]

]

{ #category : #compiling }
FamixMetamodelBuilderRealEnvironment >> setComment: aString for: aClass [

	aClass organization comment: aString
]

{ #category : #compiling }
FamixMetamodelBuilderRealEnvironment >> slotNamed: slotName [ 

	^ InstanceVariableSlot named: slotName asSymbol
]

{ #category : #compiling }
FamixMetamodelBuilderRealEnvironment >> slotNamed: slotName cardinality: cardinality type: type opposite: oppositeName [

	| cardinalityClass |
	
	cardinalityClass := cardinality = #one
		ifTrue: [ FMOne ]
		ifFalse: [ FMMany ].
		
	^ slotName asSymbol => cardinalityClass type: type asSymbol opposite: oppositeName asSymbol
]
