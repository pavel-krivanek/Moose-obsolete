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
		'operations',
		'classes',
		'traits',
		'relations'
	],
	#category : #'Famix-MetamodelBuilder-Core'
}

{ #category : #writing }
FamixMetamodelBuilder class >> famixClasses [

	| traits res |
	traits := (FmxEntity allSubclasses select: [ :each | each package name = 'Famix-Compatibility' ]) sorted: [:a :b | a name <= b name].

	res := String streamContents: [ :s |
		traits do: [ :each |
			s << ((each name withoutPrefix: #Fmx) uncapitalized, ' := builder newClassNamed: #', (each name withoutPrefix: #Fmx), '.').
			s cr ] ].
	
	^ res
	
	"(traits collect: [:each | 't', (each name withoutPrefix: #Fmx) uncapitalized ]) joinUsing: ' '"
]

{ #category : #writing }
FamixMetamodelBuilder class >> famixProperties [

	| traits processedSlots res |
	traits := FmxTraitEntity allSubclasses select: [ :each | each package name = 'Famix-General' ].
	processedSlots := Set new.
	res := String streamContents: [ :s |
		traits do: [ :trait | 
			
			trait slots do: [ :slot |
				(slot isFMRelationSlot and: [(processedSlots includes: slot) not ]) ifTrue: [ 
					s << '((' << ('t', (trait name withoutPrefix: #FmxT)) << ' property: #' << slot name << ')'.
					FamixMetamodelBuilder writeOriginalPropertiesOf: trait slot: slot to: s.
					s <<')'; cr.
					s tab.
					slot isToOneSlot ifFalse: [ s << '*' ].
					s << '-'.
					slot inverseSlot isToOneSlot ifFalse: [ s << '*' ].
					s cr.
					s << '((' << ('t', (slot targetClass name withoutPrefix: #FmxT)) << ' property: #' << slot inverseSlot name << ')'.
					FamixMetamodelBuilder writeOppositeOriginalPropertiesOf: trait slot: slot to: s.
					s <<')'; << '.'; cr; cr.
					
					processedSlots add: slot.
					processedSlots add: slot inverseSlot.				
				]]]].
	^ res.

]

{ #category : #writing }
FamixMetamodelBuilder class >> famixTraits [

	| traits |
	traits := FmxTraitEntity allSubclasses select: [ :each | each package name = 'Famix-General' ].

	^ String streamContents: [ :s |
		traits do: [ :each |
			s << ('t', (each name withoutPrefix: #FmxT), ' := builder newTraitNamed: #', (each name withoutPrefix: #Fmx), '.').
			s cr ] ].
	
	"(traits collect: [:each | 't', (each name withoutPrefix: #FmxT) ]) joinUsing: ' '"
]

{ #category : #writing }
FamixMetamodelBuilder class >> forTesting [

	^ self new
		environment: FamixMetamodelBuilderRingEnvironment new;
		prefix: 'Tst';
		packageName: 'Tst';
		yourself.
]

{ #category : #writing }
FamixMetamodelBuilder class >> originalOppositeOf: aTrait slot: aSlot [

	| original method propertyPragma |
	original := Smalltalk at: (#FAMIX, (aTrait name withoutPrefix: #FmxT)) asSymbol ifAbsent: [ ^ self ].
	method := original compiledMethodAt: aSlot name asSymbol ifAbsent: [ ^ self ].
	
	propertyPragma := method pragmaAt: #MSEProperty:type:opposite:.
	^ propertyPragma ifNotNil: [ 
		Smalltalk at:  (propertyPragma argumentAt: 2) ]
]

{ #category : #writing }
FamixMetamodelBuilder class >> writeOppositeOriginalPropertiesOf: aTrait slot: aSlot to: aStream [

	| method  oppositeOriginal |
	
	Smalltalk at: (#FAMIX, (aTrait name withoutPrefix: #FmxT)) asSymbol ifAbsent: [ ^ self ].
	oppositeOriginal := self originalOppositeOf: aTrait slot: aSlot.
	method := oppositeOriginal compiledMethodAt: aSlot inverseSlot name asSymbol ifAbsent: [ ^ self ].
	
	self writeOriginalPropertiesOf: oppositeOriginal method: method to: aStream.
]

{ #category : #writing }
FamixMetamodelBuilder class >> writeOriginalPropertiesOf: original method: method to: aStream [

	| commentPragma messages |
	
	messages := OrderedCollection new.
	
	commentPragma := method pragmaAt: #MSEComment:.
	commentPragma ifNotNil: [ 
		messages add: ('comment: ''', (commentPragma argumentAt: 1), '''')].

	(method pragmaAt: #source) ifNotNil: [ messages add: 'source' ].
	(method pragmaAt: #target) ifNotNil: [ messages add: 'target' ].
	(method pragmaAt: #container) ifNotNil: [ messages add: 'container' ].
	
	messages ifNotEmpty: [ aStream cr; tab; tab ].
	aStream nextPutAll: (messages joinUsing: (';', String cr, '		'))

]

{ #category : #writing }
FamixMetamodelBuilder class >> writeOriginalPropertiesOf: aTrait slot: aSlot to: aStream [

	| original method |
	original := Smalltalk at: (#FAMIX, (aTrait name withoutPrefix: #FmxT)) asSymbol ifAbsent: [ ^ self ].
	method := original compiledMethodAt: aSlot name asSymbol ifAbsent: [ ^ self ].
	
	self writeOriginalPropertiesOf: original method: method to: aStream.
]

{ #category : #accessing }
FamixMetamodelBuilder >> classes [
	^ classes
]

{ #category : #accessing }
FamixMetamodelBuilder >> classes: anObject [
	classes := anObject
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

{ #category : #generation }
FamixMetamodelBuilder >> generateAccessorsFor: relationSide in: aTrait [

	relationSide generateGetterIn: aTrait.
	relationSide generateSetterIn: aTrait.	
]

{ #category : #generation }
FamixMetamodelBuilder >> generateGetterFor: relationSide in: aTrait [

	| source |
	
	source := String streamContents: [ :s |
		s nextPutAll: relationSide name; nextPutAll: ': anObject'; cr; cr.
		(relationSide cardinality = #one)
			ifTrue: [ s tab; nextPutAll: relationSide name, ' := anObject'; cr ]
			ifFalse: [ s tab; nextPutAll: relationSide name, ' value: anObject'; cr ] ].
		
	self environment compile: source in: aTrait classified: 'accessing'.	

	
]

{ #category : #generation }
FamixMetamodelBuilder >> generateSetterFor: relationSide in: aTrait [

	| source commentDefinition |
	
	commentDefinition := relationSide comment
		ifNotEmpty: [ '<MSEComment: ''{1}''>' format: { relationSide comment } ].

	source := String streamContents: [ :s |
		s nextPutAll: relationSide name; cr; cr.
		commentDefinition  
			ifNotEmpty: [ s tab; nextPutAll: commentDefinition; cr].
			relationSide isContainer ifTrue: [ 
				s tab; nextPutAll: '<container>'; cr; cr ].
			relationSide isDerived ifTrue: [ 
				s tab; nextPutAll: '<derived>'; cr; cr ].
			relationSide isSource ifTrue: [ 
				s tab; nextPutAll: '<source>'; cr; cr ].
			relationSide isTarget ifTrue: [ 
				s tab; nextPutAll: '<target>'; cr; cr ].
		s tab; nextPutAll: '^ ';
			nextPutAll: relationSide name.].
		
	self environment compile: source in: aTrait classified: 'accessing'.	
	

	
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
FamixMetamodelBuilder >> operations [
	^ operations
]

{ #category : #accessing }
FamixMetamodelBuilder >> operations: anObject [
	operations := anObject
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
FamixMetamodelBuilder >> slotFor: aRelationSide [
	
	| slotName cardinality opposite type oppositeName |
	
	slotName := aRelationSide name.
	opposite := aRelationSide otherSide.
	cardinality := aRelationSide cardinality.
	type := self prefix, opposite traitName.
	oppositeName := opposite name.
	
	^ self environment slotNamed: slotName asSymbol cardinality: cardinality type: type asSymbol opposite: oppositeName asSymbol

	
	
	
	
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

{ #category : #accessing }
FamixMetamodelBuilder >> traits: anObject [
	traits := anObject
]
