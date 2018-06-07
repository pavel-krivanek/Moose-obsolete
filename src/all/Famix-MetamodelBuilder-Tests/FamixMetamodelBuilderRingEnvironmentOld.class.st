"
an environment that uses Ring to simulate classes generation
"
Class {
	#name : #FamixMetamodelBuilderRingEnvironmentOld,
	#superclass : #FamixMetamodelBuilderEnvironment,
	#instVars : [
		'ringEnvironment'
	],
	#category : #'Famix-MetamodelBuilder-Tests-Support'
}

{ #category : #accessing }
FamixMetamodelBuilderRingEnvironmentOld >> basicSuperclass [

	^ self ringEnvironment ensureClassNamed: self builder basicSuperclassName
]

{ #category : #accessing }
FamixMetamodelBuilderRingEnvironmentOld >> basicTrait [

	^ self ringEnvironment ensureClassNamed: self builder basicTraitName
]

{ #category : #accessing }
FamixMetamodelBuilderRingEnvironmentOld >> compile: aSource in: aClass classified: aProtocol [

	aClass compile: aSource classified: aProtocol.
]

{ #category : #initialization }
FamixMetamodelBuilderRingEnvironmentOld >> createClassNamed: aClassName superclass: aSuperclass slots: slots in: packageName overwrite: shouldOverwrite [

	| aClass existingClass |
	
	existingClass := self ringEnvironment ask behaviorNamed: aClassName asSymbol.
	
	(existingClass notNil and: [ shouldOverwrite not]) 
		ifTrue: [ ^ existingClass ].
		
	aClass := self ringEnvironment ensureClassNamed: aClassName.
	aClass superclass: aSuperclass.
	aClass package: (self ringEnvironment ensurePackageNamed: packageName).
	aClass layout makeResolved.
	slots do: [ :slotInBadEnvironment |
		| slot |
		slot := slotInBadEnvironment isSpecial
			ifTrue: [ 			
				(RGUnknownSlot named: slotInBadEnvironment name parent: aClass layout) 
					expression: slotInBadEnvironment expression;
					yourself ]
			ifFalse: [ 
				RGInstanceVariableSlot named: slotInBadEnvironment name parent: aClass layout ].
		aClass layout addSlot: slot ].

	^ aClass
]

{ #category : #initialization }
FamixMetamodelBuilderRingEnvironmentOld >> createDummyClassNamed: aClassName in: packageName [
]

{ #category : #initialization }
FamixMetamodelBuilderRingEnvironmentOld >> createImportingcontextClassNamed: aClassName in: packageName [

	| resultantClass |
	
	(self hasBehaviorNamed: aClassName asSymbol ) 
		ifTrue: [ ^ self ringEnvironment ensureClassNamed: aClassName asSymbol ].
	
	resultantClass := self ringEnvironment ensureClassNamed: aClassName asSymbol.
	resultantClass superclass: (self ringEnvironment ensureClassNamed: self builder baseImportingContextName).
	resultantClass layout makeResolved.
	resultantClass package: (self ringEnvironment ensurePackageNamed: packageName).
						
	^ resultantClass

]

{ #category : #initialization }
FamixMetamodelBuilderRingEnvironmentOld >> createTraitNamed: traitName slots: slots in: packageName overwrite: shouldOverwrite [

	| aPackage aTrait existingClass |

	existingClass := self ringEnvironment ask behaviorNamed: traitName asSymbol.
	
	(existingClass notNil and: [ shouldOverwrite not]) 
		ifTrue: [ ^ existingClass ].

	aPackage := self ringEnvironment ensurePackageNamed: packageName.
	aTrait := ringEnvironment ensureClassNamed: traitName. 
	aTrait superclass: self basicTrait.
	aTrait package: aPackage.
	aTrait layout makeResolved.
	slots do: [ :slotInBadEnvironment |
		| slot |
		slot := slotInBadEnvironment isSpecial
			ifTrue: [ 			
				(RGUnknownSlot named: slotInBadEnvironment name parent: aTrait layout) 
					expression: slotInBadEnvironment expression;
					yourself ]
			ifFalse: [ 
				RGInstanceVariableSlot named: slotInBadEnvironment name parent: aTrait layout ].
		aTrait layout addSlot: slot ].
	
	^ aTrait
]

{ #category : #initialization }
FamixMetamodelBuilderRingEnvironmentOld >> flattenTraitsFor: aClass [

	self error: 'not supported'
]

{ #category : #initialization }
FamixMetamodelBuilderRingEnvironmentOld >> hasBehaviorNamed: aClassName [

	^ self ringEnvironment ask includesClassNamed: aClassName
]

{ #category : #initialization }
FamixMetamodelBuilderRingEnvironmentOld >> initialize [

	super initialize.
	
	ringEnvironment := RGEnvironment new.
	ringEnvironment version: 7.
	ringEnvironment ensureClassNamed: #FMOne.
	ringEnvironment ensureClassNamed: #FMMany.		

]

{ #category : #'public registration' }
FamixMetamodelBuilderRingEnvironmentOld >> registerPackage: aPackageName [

	^ self ringEnvironment ensurePackageNamed: aPackageName.

]

{ #category : #accessing }
FamixMetamodelBuilderRingEnvironmentOld >> ringEnvironment [
	^ ringEnvironment
]

{ #category : #initialization }
FamixMetamodelBuilderRingEnvironmentOld >> setComment: aString for: aClass [

	aClass comment content: aString
]

{ #category : #initialization }
FamixMetamodelBuilderRingEnvironmentOld >> slotNamed: slotName [ 

	^ (RGInstanceVariableSlot named: slotName asSymbol)
]

{ #category : #initialization }
FamixMetamodelBuilderRingEnvironmentOld >> slotNamed: slotName cardinality: cardinality type: type opposite: oppositeName [

	| cardinalityClassName |
	
	cardinalityClassName := cardinality = #one
		ifTrue: [ #FMOne ]
		ifFalse: [ #FMMany ].
		
	^ (RGUnknownSlot named: slotName asSymbol)
		 expression: ('{1} type: #{2} opposite: #{3}' 
			format: { cardinalityClassName. type. oppositeName}) 
]
