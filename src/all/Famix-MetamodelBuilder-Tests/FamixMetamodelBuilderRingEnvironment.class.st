"
an environment that uses Ring to simulate classes generation
"
Class {
	#name : #FamixMetamodelBuilderRingEnvironment,
	#superclass : #FamixMetamodelBuilderEnvironment,
	#instVars : [
		'ringEnvironment'
	],
	#category : #'Famix-MetamodelBuilder-Tests'
}

{ #category : #accessing }
FamixMetamodelBuilderRingEnvironment >> basicSuperclass [

	^ self ringEnvironment ensureClassNamed: #MooseEntity
]

{ #category : #accessing }
FamixMetamodelBuilderRingEnvironment >> basicTrait [

	^ self ringEnvironment ensureClassNamed: #FmxTraitEntity
]

{ #category : #accessing }
FamixMetamodelBuilderRingEnvironment >> compile: aSource in: aClass classified: aProtocol [

	aClass compile: aSource classified: aProtocol.
]

{ #category : #initialization }
FamixMetamodelBuilderRingEnvironment >> createClassNamed: aClassName superclass: aSuperclass slots: slots in: packageName [

	| aClass |
	aClass := self ringEnvironment ensureClassNamed: aClassName.
	aClass superclass: aSuperclass.
	aClass package: (self ringEnvironment ensurePackageNamed: packageName).
	aClass layout makeResolved.
	slots do: [ :slotInBadEnvironment |
		| slot |
		slot := slotInBadEnvironment isSpecial
			ifTrue: [ 			
				(RG2UnknownSlotDefinition named: slotInBadEnvironment name parent: aClass layout) 
					expression: slotInBadEnvironment expression;
					yourself ]
			ifFalse: [ 
				RG2InstanceVariableSlotDefinition named: slotInBadEnvironment name parent: aClass layout ].
		aClass layout addSlot: slot ].
	
	^ aClass
]

{ #category : #initialization }
FamixMetamodelBuilderRingEnvironment >> createDummyClassNamed: aClassName in: packageName [
]

{ #category : #initialization }
FamixMetamodelBuilderRingEnvironment >> createTraitNamed: traitName slots: slots in: packageName [

	| aPackage aTrait |
	
	aPackage := self ringEnvironment ensurePackageNamed: packageName.
	aTrait := ringEnvironment ensureClassNamed: traitName. 
	aTrait superclass: self basicTrait.
	aTrait package: aPackage.
	aTrait layout makeResolved.
	slots do: [ :slotInBadEnvironment |
		| slot |
		slot := slotInBadEnvironment isSpecial
			ifTrue: [ 			
				(RG2UnknownSlotDefinition named: slotInBadEnvironment name parent: aTrait layout) 
					expression: slotInBadEnvironment expression;
					yourself ]
			ifFalse: [ 
				RG2InstanceVariableSlotDefinition named: slotInBadEnvironment name parent: aTrait layout ].
		aTrait layout addSlot: slot ].
	^ aTrait
]

{ #category : #initialization }
FamixMetamodelBuilderRingEnvironment >> initialize [

	super initialize.
	
	ringEnvironment := RG2Environment new.
]

{ #category : #accessing }
FamixMetamodelBuilderRingEnvironment >> ringEnvironment [
	^ ringEnvironment
]

{ #category : #initialization }
FamixMetamodelBuilderRingEnvironment >> slotNamed: slotName [ 

	^ (RG2InstanceVariableSlotDefinition named: slotName asSymbol)
]

{ #category : #initialization }
FamixMetamodelBuilderRingEnvironment >> slotNamed: slotName cardinality: cardinality type: type opposite: oppositeName [

	| cardinalityClassName |
	
	cardinalityClassName := cardinality = #one
		ifTrue: [ #FMOne ]
		ifFalse: [ #FMMany ].
		
	^ (RG2UnknownSlotDefinition named: slotName asSymbol)
		 expression: ('{1} type: #{2} opposite: #{3}' 
			format: { cardinalityClassName. type. oppositeName}) 
]
