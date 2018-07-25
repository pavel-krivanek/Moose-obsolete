Trait {
	#name : #FmxNGTClassHierarchyNavigation,
	#category : #'FmxNG-Traits-Support'
}

{ #category : #meta }
FmxNGTClassHierarchyNavigation classSide >> annotation [

	<ignoreInTraitUsers>
	<MSEClass: #TClassHierarchyNavigation super: #Trait>
	<generated>
	<package: #'FmxNG-Traits'>
	^self
]

{ #category : #generator }
FmxNGTClassHierarchyNavigation classSide >> generatedSlotNames [
	<generated>
	'FmxNGTClassHierarchyNavigation class>>#generatedSlotNames'.
	^ #()
]

{ #category : #generator }
FmxNGTClassHierarchyNavigation classSide >> generatedTraitNames [
	<generated>
	^ #()
]

{ #category : #enumerating }
FmxNGTClassHierarchyNavigation >> allSubclassesDo: aBlock [
	self allSubclassesWithoutAliasesDo: aBlock.
	self typeAliases do: [ :each | each allSubclassesWithoutAliasesDo: aBlock ]
]

{ #category : #enumerating }
FmxNGTClassHierarchyNavigation >> allSubclassesWithoutAliasesDo: aBlock [
	self subInheritances do: [ :each | aBlock value: each subclass ].
	self subInheritances do: [ :each | each subclass allSubclassesDo: aBlock ]
]

{ #category : #enumerating }
FmxNGTClassHierarchyNavigation >> allSuperclassesDo: aBlock [
	self allSuperclassesWithoutAliasesDo: aBlock.

]

{ #category : #enumerating }
FmxNGTClassHierarchyNavigation >> allSuperclassesWithoutAliasesDo: aBlock [
	self superInheritances do: [:each | aBlock value: each superclass].
	self superInheritances do: [:each | each superclass allSuperclassesDo: aBlock]
]

{ #category : #enumerating }
FmxNGTClassHierarchyNavigation >> anySuperclass [
	"Mircea: this used to return interfaces too. fixed now. 
	also added superclass that does the same thing"

	self
		allSuperclassesDo: [ :each | 
			each isInterface
				ifFalse: [ ^ each ] ].
	^ nil
]

{ #category : #enumerating }
FmxNGTClassHierarchyNavigation >> directSubclasses [
	"returns a collection with all subclasses of this class"

	^ self subInheritances collect: [:each | each subclass]
]

{ #category : #enumerating }
FmxNGTClassHierarchyNavigation >> directSuperclasses [
	"returns a collection with all superclasses of this class"

	^ self superInheritances collect: [:each | each superclass]
]

{ #category : #enumerating }
FmxNGTClassHierarchyNavigation >> inheritedAttributes [
	| inheritedAttrs |
	inheritedAttrs := OrderedCollection new.
	self allSuperclassesDo: [:each | 
			each attributes do: [:attr | 
				attr isPrivate not ifTrue: [inheritedAttrs add: attr]]].
	^ inheritedAttrs
]

{ #category : #enumerating }
FmxNGTClassHierarchyNavigation >> inheritedMethods [
	| inheritedMethods |
	inheritedMethods := OrderedCollection new.
	self allSuperclassesDo: [:each | 
			each methodsDo: [:method | 
				method isPrivate not ifTrue: [inheritedMethods add: method]]].
	^inheritedMethods
]

{ #category : #enumerating }
FmxNGTClassHierarchyNavigation >> inheritedSignatures [
	| inheritedSignatures |
	inheritedSignatures := Set new.
	self superclassHierarchy do: [:each | 
			each methodsDo: [:method | 
				method isPrivate not ifTrue: [inheritedSignatures add: method signature]]].
	^ inheritedSignatures
]

{ #category : #enumerating }
FmxNGTClassHierarchyNavigation >> inheritedSignaturesToMethod [
	| inheritedSignaturesToMethod |
	inheritedSignaturesToMethod := Dictionary new.
	self allSuperclassesDo: [:each | 
			each methodsDo: [:method | 
				method isPrivate ifFalse: [
					inheritedSignaturesToMethod at: method signature ifAbsentPut: [method]]]].
	^ inheritedSignaturesToMethod
]

{ #category : #enumerating }
FmxNGTClassHierarchyNavigation >> inheritsFrom: aClass [
	self allSuperclassesDo: [:each | each = aClass ifTrue: [^true]].
	^ false
]

{ #category : #enumerating }
FmxNGTClassHierarchyNavigation >> isHierarchyRoot [
	^self superclassHierarchyGroup 
		allSatisfy: [:each | each isNil or: [each isStub] ]
]

{ #category : #enumerating }
FmxNGTClassHierarchyNavigation >> isHierarchyRootWithin: aClassGroup [
	^(self superclassHierarchyGroup intersection: aClassGroup) isEmpty
]

{ #category : #enumerating }
FmxNGTClassHierarchyNavigation >> subclassHierarchy [
	| subclasses |
	subclasses := OrderedCollection new.
	self allSubclassesDo: [:each | subclasses add: each].
	^ subclasses
]

{ #category : #enumerating }
FmxNGTClassHierarchyNavigation >> subclassHierarchyGroup [
	<navigation: 'All subclasses'>
	^ MooseGroup
		withAll: self subclassHierarchy asSet
		withDescription: 'All subclasses of ' , self mooseName
]

{ #category : #enumerating }
FmxNGTClassHierarchyNavigation >> superclass [
	^self anySuperclass
]

{ #category : #enumerating }
FmxNGTClassHierarchyNavigation >> superclassHierarchy [
	| superclasses |
	superclasses := OrderedCollection new.
	self allSuperclassesDo: [:each |  superclasses add: each].
	^ superclasses
]

{ #category : #enumerating }
FmxNGTClassHierarchyNavigation >> superclassHierarchyGroup [
	<navigation: 'All superclasses'>
	^ MooseGroup
		withAll: self superclassHierarchy asSet
		withDescription: 'All superclasses of ' , self mooseName
]

{ #category : #enumerating }
FmxNGTClassHierarchyNavigation >> withSubclassHierarchy [
	^ self subclassHierarchy 
		addFirst: self realType;
		addAll: self realType allTypeAliases;
		yourself
]

{ #category : #enumerating }
FmxNGTClassHierarchyNavigation >> withSubclassesDo: aBlock [
	aBlock value: self.
	self allSubclassesDo: aBlock
]

{ #category : #enumerating }
FmxNGTClassHierarchyNavigation >> withSuperclassesDo: aBlock [
	aBlock value: self.
	self allSuperclassesDo: aBlock
]
