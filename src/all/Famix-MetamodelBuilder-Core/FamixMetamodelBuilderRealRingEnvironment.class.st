Class {
	#name : #FamixMetamodelBuilderRealRingEnvironment,
	#superclass : #FamixMetamodelBuilderEnvironment,
	#instVars : [
		'ringEnvironment'
	],
	#category : #'Famix-MetamodelBuilder-Core'
}

{ #category : #installing }
FamixMetamodelBuilderRealRingEnvironment >> adoptClassDefinitionOf: realClass to: anRGClass [

	| superclass | 
	
	superclass := self class environment classNamed: anRGClass superclass name.
	self halt.
	(realClass superclass = superclass)
		ifFalse: [ realClass superclass: superclass ].

		
]

{ #category : #accessing }
FamixMetamodelBuilderRealRingEnvironment >> apply [

	self ensurePackagesFrom: ringEnvironment.
	self ensureClassesFrom: ringEnvironment.
	
 
]

{ #category : #accessing }
FamixMetamodelBuilderRealRingEnvironment >> basicSuperclass [

	^ self ringEnvironment ensureClassNamed: self builder basicSuperclassName
]

{ #category : #accessing }
FamixMetamodelBuilderRealRingEnvironment >> basicTrait [

	^ self ringEnvironment ensureClassNamed: self builder basicTraitName
]

{ #category : #accessing }
FamixMetamodelBuilderRealRingEnvironment >> compile: aSource in: aClass classified: aProtocol [

	aClass compile: aSource classified: aProtocol.
]

{ #category : #initialization }
FamixMetamodelBuilderRealRingEnvironment >> createClassNamed: aClassName superclass: aSuperclass slots: slots in: packageName overwrite: shouldOverwrite [

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
FamixMetamodelBuilderRealRingEnvironment >> createDummyClassNamed: aClassName in: packageName [
]

{ #category : #initialization }
FamixMetamodelBuilderRealRingEnvironment >> createImportingcontextClassNamed: aClassName in: packageName [

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
FamixMetamodelBuilderRealRingEnvironment >> createTraitNamed: traitName slots: slots in: packageName overwrite: shouldOverwrite [

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

{ #category : #installing }
FamixMetamodelBuilderRealRingEnvironment >> ensureClassesFrom: anRGEnvironment [
	
	| resolvedClasses |
	
	resolvedClasses := ringEnvironment ask behaviors select: [ :each | each isRingResolved ].
	resolvedClasses := resolvedClasses select: [ :each | each superclass isRingResolved ].

	resolvedClasses := resolvedClasses sorted: [ :a :b | a allSuperclasses size <= b allSuperclasses size].
	
	resolvedClasses do: [:each | self installClassChangesFor: each ].
]

{ #category : #installing }
FamixMetamodelBuilderRealRingEnvironment >> ensurePackagesFrom: anRGEnvironment [
	
	| resolvedPackages |
	
	resolvedPackages := anRGEnvironment ask packages select: [ :each | each isRingResolved ].

	resolvedPackages do: [ :each |
		(RPackageOrganizer default includesPackageNamed: each name)
			ifFalse: [ self halt. RPackageOrganizer default registerPackageNamed: each name]].
]

{ #category : #initialization }
FamixMetamodelBuilderRealRingEnvironment >> flattenTraitsFor: aClass [


]

{ #category : #initialization }
FamixMetamodelBuilderRealRingEnvironment >> hasBehaviorNamed: aClassName [

	^ self ringEnvironment ask includesClassNamed: aClassName
]

{ #category : #initialization }
FamixMetamodelBuilderRealRingEnvironment >> initialize [

	super initialize.
	
	ringEnvironment := RGEnvironment new.
	ringEnvironment ensureClassNamed: #FMOne.
	ringEnvironment ensureClassNamed: #FMMany.		

]

{ #category : #installing }
FamixMetamodelBuilderRealRingEnvironment >> installClassChangesFor: anRGClass [

	| realClass | 
	
	realClass := self class environment classNamed: anRGClass name.
	realClass 
		ifNil: [ 
			realClass := OpalCompiler evaluate: anRGClass definition ]
		ifNotNil: [ 
			self adoptClassDefinitionOf: realClass to: anRGClass ].
		
]

{ #category : #'public registration' }
FamixMetamodelBuilderRealRingEnvironment >> registerPackage: aPackageName [

	^ self ringEnvironment ensurePackageNamed: aPackageName.

]

{ #category : #accessing }
FamixMetamodelBuilderRealRingEnvironment >> ringEnvironment [
	^ ringEnvironment
]

{ #category : #initialization }
FamixMetamodelBuilderRealRingEnvironment >> setComment: aString for: aClass [

	aClass comment content: aString
]

{ #category : #initialization }
FamixMetamodelBuilderRealRingEnvironment >> slotNamed: slotName [ 

	^ (RGInstanceVariableSlot named: slotName asSymbol)
]

{ #category : #initialization }
FamixMetamodelBuilderRealRingEnvironment >> slotNamed: slotName cardinality: cardinality type: type opposite: oppositeName [

	| cardinalityClassName |
	
	cardinalityClassName := cardinality = #one
		ifTrue: [ #FMOne ]
		ifFalse: [ #FMMany ].
		
	^ (RGUnknownSlot named: slotName asSymbol)
		 expression: ('{1} type: #{2} opposite: #{3}' 
			format: { cardinalityClassName. type. oppositeName}) 
]
