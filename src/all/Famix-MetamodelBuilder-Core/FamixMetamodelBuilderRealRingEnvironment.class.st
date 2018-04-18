Class {
	#name : #FamixMetamodelBuilderRealRingEnvironment,
	#superclass : #FamixMetamodelBuilderEnvironment,
	#instVars : [
		'ringEnvironment'
	],
	#category : #'Famix-MetamodelBuilder-Core'
}

{ #category : #installing }
FamixMetamodelBuilderRealRingEnvironment >> adoptClassCommentOf: realClass to: anRGClass [
	
	anRGClass comment content isEmptyOrNil
		ifFalse: [ realClass comment: anRGClass comment content ]
]

{ #category : #installing }
FamixMetamodelBuilderRealRingEnvironment >> adoptClassDefinitionOf: realClass to: anRGClass [
	| superclass generatedOldSlots customSlots customSlotNames slotDefinitions classDefinition slotsString definition |

	generatedOldSlots := self generatedSlotsOf: realClass.
	customSlots := realClass slots copyWithoutAll: generatedOldSlots.
	customSlotNames := customSlots collect: #name.
	slotDefinitions := ((anRGClass slots
		reject: [ :each | customSlotNames includes: each name ])
		collect: #definitionString) asOrderedCollection.
	slotDefinitions addAll: (customSlots collect: #definitionString).
	slotDefinitions := slotDefinitions sorted.
	slotsString := '{' , (slotDefinitions joinUsing: '. ') , '}'.
	definition := '{superclass} subclass: #{className} 
		slots: {slots} 
		classVariables: {classVariables}
		poolDictionaries: ''''
		category: ''{category}'''
		format:
			(Dictionary
				newFrom:
					{(#superclass -> anRGClass superclass name).
					(#className -> anRGClass name).
					(#layout -> realClass classLayout class name).
					(#slots -> slotsString).
					(#classVariables -> (self classVariablesStringFor: realClass)).
					(#poolDictionaries -> realClass sharedPoolsString).
					(#category -> realClass category)}).
	
	self class compiler evaluate: definition.
	
	
]

{ #category : #installing }
FamixMetamodelBuilderRealRingEnvironment >> adoptMethodsOf: realClass to: anRGClass [

	| generatedMethods |

	generatedMethods := Pragma allNamed: #generated in: realClass.
	generatedMethods
		do: [ :each | realClass removeSelector: each methodSelector ].
	anRGClass localMethods
		do: [ :method | 
			(realClass localSelectors includes: method name)
				ifFalse: [ realClass compile: method sourceCode classified: method protocol ] ].
			
	generatedMethods := Pragma allNamed: #generated in: realClass classSide.
	generatedMethods
		do: [ :each | realClass classSide removeSelector: each methodSelector ].
	anRGClass classSide localMethods
		do: [ :method | 
			(realClass classSide localSelectors includes: method name)
				ifFalse: [ realClass classSide compile: method sourceCode classified: method protocol ] ]
			
]

{ #category : #accessing }
FamixMetamodelBuilderRealRingEnvironment >> apply [

ringEnvironment browse.
"
	self ensurePackagesFrom: ringEnvironment.
	self ensureClassesFrom: ringEnvironment.
"
 
]

{ #category : #accessing }
FamixMetamodelBuilderRealRingEnvironment >> basicSuperclass [

	^ self ringEnvironment ensureClassNamed: self builder basicSuperclassName
]

{ #category : #accessing }
FamixMetamodelBuilderRealRingEnvironment >> basicTrait [

	^ self ringEnvironment ensureClassNamed: self builder basicTraitName
]

{ #category : #installing }
FamixMetamodelBuilderRealRingEnvironment >> classVariablesStringFor: realClass [

	^ '{', ((realClass classVarNames collect: [ :each | '#', each ]) joinUsing: ' '), '}'
]

{ #category : #installing }
FamixMetamodelBuilderRealRingEnvironment >> cleanClass: realClass [

	realClass protocols 
		select: [ :each | each beginsWith: '_fromTrait_' ] 
		thenDo: [ :each | realClass removeProtocol: each ].

	realClass classSide protocols 
		select: [ :each | each beginsWith: '_fromTrait_' ] 
		thenDo: [ :each | realClass classSide removeProtocol: each ].

]

{ #category : #accessing }
FamixMetamodelBuilderRealRingEnvironment >> compile: aSource in: aClass classified: aProtocol [

	aClass compile: aSource classified: aProtocol.
]

{ #category : #initialization }
FamixMetamodelBuilderRealRingEnvironment >> createClassNamed: aClassName superclass: aSuperclass traitNames: traitNames slots: slots in: packageName overwrite: shouldOverwrite [

	| aClass existingClass composition transformations |
	
	existingClass := self ringEnvironment ask behaviorNamed: aClassName asSymbol.
	
	(existingClass notNil and: [ shouldOverwrite not]) 
		ifTrue: [ ^ existingClass ].
		
	aClass := self ringEnvironment ensureClassNamed: aClassName.
	aClass superclass: aSuperclass.


	composition := RGTraitComposition parent: aClass.
	aClass traitComposition: composition.
	transformations := RGTraitCompositionVisitor new parse: (traitNames joinUsing: ' + ') for: composition.
	transformations do: [ :each |
		composition addTransformation: each ].	
	
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
		aClass layout addSlot: slot.
		slot propertyNamed: #isGenerated put: true ].

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
		aTrait layout addSlot: slot.
		slot propertyNamed: #isGenerated put: true ].
	
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
			ifFalse: [ RPackageOrganizer default registerPackageNamed: each name]].
]

{ #category : #initialization }
FamixMetamodelBuilderRealRingEnvironment >> flattenTraitsFor: aClass [

	| info |
	info := StatefulTraitsMergedClassInfoForRing on: aClass.
	(aClass propertyNamed: #statefulTraits ifAbsent: [ Array new ])
		do: [ :aTraitName | 
			info addTrait: (aClass environment ask behaviorNamed: aTraitName) ].
	info merge.
]

{ #category : #installing }
FamixMetamodelBuilderRealRingEnvironment >> generateSlotsDescriptionFrom: anRGClass to: realClass [

	| generatedSlots |
	
	generatedSlots := anRGClass layout slots select: [ :each | each propertyNamed: #isGenerated ifAbsent: [false] ].
	
	realClass classSide compile: ('generatedSlots
	<generated>
	^ {1}' format: { '#(', ((generatedSlots collect: #name) joinUsing: ' '), ')' }) classified: 'generator'
		

]

{ #category : #installing }
FamixMetamodelBuilderRealRingEnvironment >> generatedSlotsOf: aRealClass [

	| slotNames |
	
	slotNames := (aRealClass canUnderstand: #generatedSlotNames)
		ifTrue: [ aRealClass generatedSlotNames ]
		ifFalse: [ Array new ].
		
	^ (slotNames collect: [ :slotName | aRealClass slotNamed: slotName ifFound: [ :slot | slot ] ifNone: nil ]) select: #notNil.
	
	
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
			realClass := self class compiler evaluate: anRGClass definition.]
		ifNotNil: [ 
			self adoptClassDefinitionOf: realClass to: anRGClass. ].
	self adoptClassCommentOf: realClass to: anRGClass.
	self cleanClass: realClass.
	self generateSlotsDescriptionFrom: anRGClass to: realClass.
	self adoptMethodsOf: realClass to: anRGClass
		
]

{ #category : #installing }
FamixMetamodelBuilderRealRingEnvironment >> leanClass: realClass [

	realClass protocols 
		select: [ :each | each beginsWith: '_fromTrait_' ] 
		thenDo: [ :each | realClass removeProtocol: each ].

	realClass classSide protocols 
		select: [ :each | each beginsWith: '_fromTrait_' ] 
		thenDo: [ :each | realClass classSide removeProtocol: each ].

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
