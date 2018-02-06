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
FamixMetamodelBuilderRealEnvironment >> createClassNamed: aClassName superclass: aSuperclass slots: slots in: packageName [

	| resultantClass aSubclass |
	
	resultantClass := aSuperclass subclass: aClassName, 'Generated' asSymbol
		slots: slots
		classVariables: {  }
		category: packageName.	
			
	self class environment at: aClassName asSymbol ifAbsent: [ 
		aSubclass := resultantClass subclass: aClassName asSymbol
			slots: {}
			classVariables: {  }
			category: packageName.].
			
	^ resultantClass

]

{ #category : #compiling }
FamixMetamodelBuilderRealEnvironment >> createDummyClassNamed: aClassName in: packageName [

	^ Object subclass: (aClassName, #Generated) asSymbol
			instanceVariableNames: ''
			classVariableNames: ''
			package: packageName.

]

{ #category : #compiling }
FamixMetamodelBuilderRealEnvironment >> createImportingcontextClassNamed: aClassName in: packageName [

	| resultantClass |
	
	resultantClass := (self class environment at: self builder baseImportingContextName) subclass: aClassName asSymbol
		instanceVariableNames: ''
		classVariableNames: ''
		package: packageName.	
						
	^ resultantClass

]

{ #category : #compiling }
FamixMetamodelBuilderRealEnvironment >> createTraitNamed: traitName slots: slots in: packageName [

	| resultantTrait aSubTrait|
	
	resultantTrait := self basicTrait subclass: traitName, 'Generated' asSymbol
		slots: slots
		classVariables: {  }
		category: packageName.	
			
	self class environment at: traitName asSymbol ifAbsent: [ 
		aSubTrait := resultantTrait subclass: traitName asSymbol
			slots: { }
			classVariables: {  }
			category: packageName. ].
		
	^ resultantTrait
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
FamixMetamodelBuilderRealEnvironment >> hasBehaviorNamed: aClassName [

	^ self class environment includesKey: aClassName
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
