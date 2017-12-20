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
		'relations'
	],
	#category : #'Famix-MetamodelBuilder-Core'
}

{ #category : #'instance creation' }
FamixMetamodelBuilder class >> forTesting [

	^ self new
		environment: FamixMetamodelBuilderRingEnvironment new;
		prefix: 'Tst';
		packageName: 'Tst';
		yourself.
]

{ #category : #accessing }
FamixMetamodelBuilder >> classes [
	^ classes
]

{ #category : #accessing }
FamixMetamodelBuilder >> cleanPackage [

	(self packageName asPackageIfAbsent: [ nil ]) 
		ifNotNil: [:aPackage | aPackage removeFromSystem ].
]

{ #category : #accessing }
FamixMetamodelBuilder >> doNotGenerateCurrent [

	self classes do: [ :each | each willGenerate: false ].
	self traits do: [ :each | each willGenerate: false ].
	
]

{ #category : #initialization }
FamixMetamodelBuilder >> ensureClassNamed: aString [

	^ self classes detect: [ :each | each name = aString ] ifNone: [ self newClassNamed: aString ]

]

{ #category : #initialization }
FamixMetamodelBuilder >> ensureTraitNamed: aString [

	^ self traits detect: [ :each | each name = aString ] ifNone: [ self newTraitNamed: aString ]

]

{ #category : #accessing }
FamixMetamodelBuilder >> environment [
	^ environment
]

{ #category : #accessing }
FamixMetamodelBuilder >> environment: anObject [
	environment := anObject
]

{ #category : #accessing }
FamixMetamodelBuilder >> generate [

	self traits do: [ :each | each generate ].
	self sortedClasses do: [ :each | each generateDummy ].
	self sortedClasses do: [ :each | each generate ].

]

{ #category : #initialization }
FamixMetamodelBuilder >> initialize [

	environment := FamixMetamodelBuilderRealEnvironment new.

	operations := OrderedCollection new.
	classes := OrderedCollection new.
	traits := OrderedCollection new.
	relations := OrderedCollection new.
	
	
	
]

{ #category : #initialization }
FamixMetamodelBuilder >> newClass [

	| aClass |
	
	aClass := FamixMetamodelBuilderClass new.
	aClass builder: self.
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
	self traits add: aTrait.
	^ aTrait
	
]

{ #category : #initialization }
FamixMetamodelBuilder >> newTraitNamed: aTraitName [

	^ self newTrait name: aTraitName.

]

{ #category : #accessing }
FamixMetamodelBuilder >> packageName [
	^ packageName
]

{ #category : #accessing }
FamixMetamodelBuilder >> packageName: anObject [
	packageName := anObject
]

{ #category : #accessing }
FamixMetamodelBuilder >> prefix [
	^ prefix
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
FamixMetamodelBuilder >> relations: anObject [
	relations := anObject
]

{ #category : #accessing }
FamixMetamodelBuilder >> sortedClasses [

	^ self classes sorted: [ :a :b |
		b allClassGeneralizations includes: a].

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

{ #category : #accessing }
FamixMetamodelBuilder >> traits [
	^ traits
]
