"
builder := FamixMetamodelBuilder new.
builder 
	prefix: 'FmxNGTest';
	packageName: 'FmxNGTest'.

comment := builder newClassNamed: #Comment.
method := builder newClassNamed: #Method.
package := builder newClassNamed: #Package.

(package <>- comment)
	from
	




builder := FamixMetamodelBuilder new.

rel := builder newRelation 
	between: #TAccess and: #TWithAccesses;
	fromOne: #accessor toMany: #accesses.
	
	
rel := builder newRelation 
	between: #TAccess and: #TWithAccesses;
	fromOne: #accessor toMany: #accesses.
	
rel := builder newRelation
	from: [ :side |
		side name: #accessor;
			traitName: #TAccess;
			container;
			comment: 'some comment';
			one	 ];
	to: [ :opposite |
		opposite 	name: #accesses;
			traitName: #TWithAccesses;
			comment: 'ohter comment';
			many ].
		
	



"
Class {
	#name : #FamixMetamodelBuilder,
	#superclass : #Object,
	#instVars : [
		'environment',
		'prefix',
		'packageName',
		'classes',
		'traits',
		'relations',
		'classTag',
		'traitsTag',
		'traitTag',
		'basicSuperclassName',
		'basicTraitName',
		'traitsFlattening',
		'generator'
	],
	#category : #'Famix-MetamodelBuilder-Core'
}

{ #category : #'instance creation' }
FamixMetamodelBuilder class >> forGenerator: aGenerator [

	^ self new
		generator: aGenerator;
		yourself.
]

{ #category : #'instance creation' }
FamixMetamodelBuilder class >> forTesting [

	| aBuilder |
	aBuilder := self new.
	aBuilder
		environment: (FamixMetamodelBuilderRingEnvironment for: aBuilder);
		prefix: 'Tst';
		packageName: 'Tst';
		yourself.
	^ aBuilder.
]

{ #category : #visitor }
FamixMetamodelBuilder >> acceptVisitor: aVisitor [

	^ aVisitor visitBuilder: self.
]

{ #category : #accessing }
FamixMetamodelBuilder >> baseImportingContextName [

	^ #FamixImportingContext
]

{ #category : #accessing }
FamixMetamodelBuilder >> baseMooseImportingContextName [

	^ MooseImportingContext
]

{ #category : #settings }
FamixMetamodelBuilder >> basicSuperclassName [

	^ basicSuperclassName ifNil: [ basicSuperclassName := self defaultBasicSuperclassName ]
]

{ #category : #accessing }
FamixMetamodelBuilder >> basicSuperclassName: anObject [
	basicSuperclassName := anObject
]

{ #category : #settings }
FamixMetamodelBuilder >> basicTraitName [

	^ basicTraitName ifNil: [ basicTraitName := self defaultBasicTraitName ]
]

{ #category : #accessing }
FamixMetamodelBuilder >> basicTraitName: anObject [
	basicTraitName := anObject
]

{ #category : #settings }
FamixMetamodelBuilder >> classTag [

	^ classTag ifNil: [ classTag := self defaultClassTag ]
]

{ #category : #settings }
FamixMetamodelBuilder >> classTag: aSymbol [

	classTag := aSymbol
]

{ #category : #accessing }
FamixMetamodelBuilder >> classes [
	^ classes
]

{ #category : #accessing }
FamixMetamodelBuilder >> classesToGenerate [ 

	^ self classes select: #willGenerate
]

{ #category : #accessing }
FamixMetamodelBuilder >> cleanPackage [

	(self packageName asPackageIfAbsent: [ nil ]) 
		ifNotNil: [:aPackage | aPackage removeFromSystem ].
]

{ #category : #'settings - default' }
FamixMetamodelBuilder >> defaultBasicSuperclassName [

	^ #MooseEntity
]

{ #category : #'settings - default' }
FamixMetamodelBuilder >> defaultBasicTraitName [

	^ #FmxTraitEntity
]

{ #category : #'settings - default' }
FamixMetamodelBuilder >> defaultClassTag [

	^ #Entities
]

{ #category : #'settings - default' }
FamixMetamodelBuilder >> defaultTraitTag [

	^ #Traits
]

{ #category : #accessing }
FamixMetamodelBuilder >> doNotGenerateCurrent [

	self classes do: [ :each | each willGenerate: false ].
	self traits do: [ :each | each willGenerate: false ].
	
]

{ #category : #initialization }
FamixMetamodelBuilder >> ensureClassNamed: aString [

	^ self classes detect: [ :each | each name = aString and: [each prefix = self prefix]] ifNone: [ self newClassNamed: aString ]

]

{ #category : #initialization }
FamixMetamodelBuilder >> ensureTraitNamed: aString [

	^ self traits detect: [ :each | each name = aString and: [each prefix = self prefix]] ifNone: [ self newTraitNamed: aString ]

]

{ #category : #accessing }
FamixMetamodelBuilder >> environment [
	^ environment
]

{ #category : #accessing }
FamixMetamodelBuilder >> environment: anObject [
	environment := anObject
]

{ #category : #compiling }
FamixMetamodelBuilder >> flattenTraitsFor: aClass [

	self traitsFlattening ifTrue: [ 
		self environment flattenTraitsFor: aClass ]
]

{ #category : #generating }
FamixMetamodelBuilder >> generate [

	self traits do: [ :each | each generate ] displayingProgress: 'generating traits'.
	self sortedClasses do: [ :each | each generateDummy ] displayingProgress: 'generating dummy classes'.
	self sortedClasses do: [ :each | each generate ] displayingProgress: 'generating classes'.
	self generateImportingContext.
]

{ #category : #generating }
FamixMetamodelBuilder >> generateImportIn: contextClass [

	| source |

	self sortedClasses do: [ :each | 
		source := String streamContents: [ :s |
			s	nextPutAll: 'import'; nextPutAll: each name; cr;
				cr;
				tab; nextPutAll: '^ self import: '; nextPutAll: each fullName ].
		 self environment compile: source in: contextClass classified: 'testing' ] 

]

{ #category : #generating }
FamixMetamodelBuilder >> generateImportingContext [

	| contextClass |
	
	contextClass := self environment createImportingcontextClassNamed: self importingContextName in: self packageName.
	
	self generateShouldImportIn: contextClass.
	self generateImportIn: contextClass
]

{ #category : #generating }
FamixMetamodelBuilder >> generateShouldImportIn: contextClass [

	| source |

	self sortedClasses do: [ :each | 
		source := String streamContents: [ :s |
			s	nextPutAll: 'shouldImport'; nextPutAll: each name; cr;
				cr;
				tab; nextPutAll: '^ self shouldImport: '; nextPutAll: each fullName ].
		 self environment compile: source in: contextClass classified: 'testing' ] 

]

{ #category : #accessing }
FamixMetamodelBuilder >> generator [
	^ generator
]

{ #category : #accessing }
FamixMetamodelBuilder >> generator: anObject [
	generator := anObject
]

{ #category : #accessing }
FamixMetamodelBuilder >> importingContextName [

	^ (self prefix, 'ImportingContext') asSymbol
]

{ #category : #initialization }
FamixMetamodelBuilder >> initialize [

	environment := FamixMetamodelBuilderRealEnvironment for: self.

	classes := OrderedCollection new.
	traits := OrderedCollection new.
	relations := OrderedCollection new.
	
	traitsFlattening := false.
	
	
	
]

{ #category : #initialization }
FamixMetamodelBuilder >> newClass [

	| aClass |
	
	aClass := FamixMetamodelBuilderClass new.
	aClass builder: self.
	aClass prefix: self prefix.
	aClass packageName: self packageName.
	self classes add: aClass.
	^ aClass
	
]

{ #category : #initialization }
FamixMetamodelBuilder >> newClassNamed: aClassName [

	^ self newClass name: aClassName.
	
]

{ #category : #initialization }
FamixMetamodelBuilder >> newRelation [

	| aRelation |
	
	aRelation := FamixMetamodelBuilderRelation new.
	aRelation builder: self.
	self relations add: aRelation.
	^ aRelation
]

{ #category : #initialization }
FamixMetamodelBuilder >> newTrait [ 

	| aTrait |
	
	aTrait := FamixMetamodelBuilderTrait new.
	aTrait builder: self.
	aTrait prefix: self prefix.
	aTrait packageName: self packageName.
	self traits add: aTrait.
	^ aTrait
	
]

{ #category : #initialization }
FamixMetamodelBuilder >> newTraitNamed: aTraitName [

	^ self newTrait name: aTraitName.

]

{ #category : #accessing }
FamixMetamodelBuilder >> packageName [
	^ packageName ifNil: [ packageName := #'FamixMetamodelBulder-Generated' ]
]

{ #category : #accessing }
FamixMetamodelBuilder >> packageName: anObject [
	packageName := anObject
]

{ #category : #accessing }
FamixMetamodelBuilder >> prefix [
	^ prefix ifNil: [ prefix := '' ]
]

{ #category : #accessing }
FamixMetamodelBuilder >> prefix: anObject [
	prefix := anObject
]

{ #category : #accessing }
FamixMetamodelBuilder >> relations [
	^ relations
]

{ #category : #accessing }
FamixMetamodelBuilder >> safePackageName [
	
	^ packageName isLiteralSymbol
		ifTrue: [ ^ '#', packageName ]
		ifFalse: [ ^ '#''', packageName, '''' ]
]

{ #category : #accessing }
FamixMetamodelBuilder >> sortedClasses [

	^ self classes sorted: [ :a :b |
		b allClassGeneralizations includes: a].

]

{ #category : #accessing }
FamixMetamodelBuilder >> sortedTraits [

	^ self traits sorted: [ :a :b | a name <= b name].

]

{ #category : #'tests support' }
FamixMetamodelBuilder >> testingEnvironment [

	^ self environment ringEnvironment
]

{ #category : #accessing }
FamixMetamodelBuilder >> trait: aTraitName property: propertyName [

	^ FamixMetamodelBuilderRelationSide new
		traitName: aTraitName;
		name: propertyName;
		builder: self;
		yourself.
]

{ #category : #settings }
FamixMetamodelBuilder >> traitTag [

	^ traitTag ifNil: [ traitTag := self defaultTraitTag ]
]

{ #category : #settings }
FamixMetamodelBuilder >> traitTag: aSymbol [

	traitTag := aSymbol
]

{ #category : #accessing }
FamixMetamodelBuilder >> traits [
	^ traits
]

{ #category : #accessing }
FamixMetamodelBuilder >> traitsFlattening [
	^ traitsFlattening
]

{ #category : #accessing }
FamixMetamodelBuilder >> traitsFlattening: anObject [
	traitsFlattening := anObject
]

{ #category : #accessing }
FamixMetamodelBuilder >> traitsToGenerate [ 

	^ self traits select: #willGenerate.
]
