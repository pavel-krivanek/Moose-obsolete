Trait {
	#name : #FmxNGTClassHierarchyNavigation,
	#category : #'FmxNG-Traits-Support'
}

{ #category : #meta }
FmxNGTClassHierarchyNavigation classSide >> annotation [

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

{ #category : #metrics }
FmxNGTClassHierarchyNavigation >> addedMethods [
	| inheritedMethodNames |
	inheritedMethodNames := self inheritedMethods
		collect: [:each | each signature].
	^self methods
		reject: [:each | inheritedMethodNames includes: each signature]
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

{ #category : #metrics }
FmxNGTClassHierarchyNavigation >> hierarchyNestingLevel [
	<MSEProperty: #hierarchyNestingLevel type: #Number>
	<derived>
	<MSEComment: 'The nesting of a class inside the hierarchy'>

	^self
		lookUpPropertyNamed: #hierarchyNestingLevel
		computedAs:
			[| currentMaxDepth |
			(self directSuperclasses isEmpty or: [self isStub])
				ifTrue: [0]
				ifFalse:
					[currentMaxDepth := 0.
					self
						allSuperclassesDo:
							[:aClass | currentMaxDepth := currentMaxDepth max: aClass hierarchyNestingLevel].
					currentMaxDepth + 1]]
]

{ #category : #metrics }
FmxNGTClassHierarchyNavigation >> hierarchyNestingLevel: aNumber [

	self privateState propertyAt: #hierarchyNestingLevel put: aNumber
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

{ #category : #metrics }
FmxNGTClassHierarchyNavigation >> numberOfAttributesInherited [
	<MSEProperty: #numberOfAttributesInherited type: #Number>
	<derived>
	<MSEComment: 'The number of attributes in a class inherited from super classes'>	
	
	^self
		lookUpPropertyNamed: #numberOfAttributesInherited
		computedAs: [self inheritedAttributes size]
]

{ #category : #metrics }
FmxNGTClassHierarchyNavigation >> numberOfAttributesInherited: aNumber [

	self privateState propertyAt: #numberOfAttributesInherited put: aNumber
]

{ #category : #metrics }
FmxNGTClassHierarchyNavigation >> numberOfDirectSubclasses [
	<MSEProperty: #numberOfDirectSubclasses type: #Number>
	<MSEComment: 'The number of direct subclasses'>
	<derived>

	^ self privateState propertyAt: #numberOfDirectSubclasses ifAbsentPut: [self directSubclasses size]
]

{ #category : #metrics }
FmxNGTClassHierarchyNavigation >> numberOfDirectSubclasses: aNumber [

	self privateState propertyAt: #numberOfDirectSubclasses put: aNumber
]

{ #category : #metrics }
FmxNGTClassHierarchyNavigation >> numberOfMethodsAdded [
	<MSEProperty: #numberOfMethodsAdded type: #Number>
	<derived>
	<MSEComment: 'The number of methods in a class added with respect to super classes'>	
	
	^self
		lookUpPropertyNamed: #numberOfMethodsAdded
		computedAs: [self addedMethods size]
]

{ #category : #metrics }
FmxNGTClassHierarchyNavigation >> numberOfMethodsAdded: aNumber [

	self privateState propertyAt: #numberOfMethodsAdded put: aNumber
]

{ #category : #metrics }
FmxNGTClassHierarchyNavigation >> numberOfMethodsInHierarchy [
	<MSEProperty: #numberOfMethodsInHierarchy type: #Number>
	<derived>
	<MSEComment: 'The number of methods of a class included the inherited ones'>	
	
	| totNom |
	totNom := self methods size.
	self superclassHierarchyGroup
		do: [:aClass | totNom := totNom + aClass methods size].
	^totNom
]

{ #category : #metrics }
FmxNGTClassHierarchyNavigation >> numberOfMethodsInHierarchy: aNumber [

	self privateState propertyAt: #numberOfMethodsInHierarchy put: aNumber
]

{ #category : #metrics }
FmxNGTClassHierarchyNavigation >> numberOfMethodsInherited [
	<MSEProperty: #numberOfMethodsInherited type: #Number>
	<derived>
	<MSEComment: 'The number of methods in a class inherited from super classes'>	

	^self
		lookUpPropertyNamed: #numberOfMethodsInherited
		computedAs: [self inheritedMethods size]
]

{ #category : #metrics }
FmxNGTClassHierarchyNavigation >> numberOfMethodsInherited: aNumber [

	self privateState propertyAt: #numberOfMethodsInherited put: aNumber
]

{ #category : #metrics }
FmxNGTClassHierarchyNavigation >> numberOfMethodsOverriden [
	<MSEProperty: #numberOfMethodsOverriden type: #Number>
	<derived>
	<MSEComment: 'The number of methods in a class overriden with respect to super classes'>
			
	^self
		lookUpPropertyNamed: #numberOfMethodsOverriden
		computedAs: [self numberOfMethods - self numberOfMethodsAdded]
]

{ #category : #metrics }
FmxNGTClassHierarchyNavigation >> numberOfMethodsOverriden: aNumber [

	self privateState propertyAt: #numberOfMethodsOverriden put: aNumber
]

{ #category : #metrics }
FmxNGTClassHierarchyNavigation >> numberOfParents [
	<MSEProperty: #numberOfParents type: #Number>
	<derived>
	<MSEComment: 'The number of superclasses'>
			
	^self
		lookUpPropertyNamed: #numberOfParents
		computedAs: [self directSuperclasses size]
]

{ #category : #metrics }
FmxNGTClassHierarchyNavigation >> numberOfParents: aNumber [

	self privateState propertyAt: #numberOfParents put: aNumber
]

{ #category : #enumerating }
FmxNGTClassHierarchyNavigation >> subclassHierarchy [
	| subclasses |
	subclasses := OrderedCollection new.
	self allSubclassesDo: [:each | subclasses add: each].
	^ subclasses
]

{ #category : #metrics }
FmxNGTClassHierarchyNavigation >> subclassHierarchyDepth [ 
	<MSEProperty: #subclassHierarchyDepth type: #Number>
	<derived>
	<MSEComment: 'The depth of the class hierarchy for which I am the root'>
		
	^ self directSubclasses isEmpty 
		ifTrue: [ 0 ] 
		ifFalse: 
			[ | currentMaxDepth| 
				currentMaxDepth := 0. 
				self allSubclassesDo: 
					[ :aClass | currentMaxDepth := currentMaxDepth max: aClass subclassHierarchyDepth ]. 
            1 + currentMaxDepth ] 
]

{ #category : #metrics }
FmxNGTClassHierarchyNavigation >> subclassHierarchyDepth: aNumber [

	self privateState propertyAt: #subclassHierarchyDepth put: aNumber
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

{ #category : #metrics }
FmxNGTClassHierarchyNavigation >> totalNumberOfChildren [
	<MSEProperty: #totalNumberOfChildren type: #Number>
	<derived>	
	<MSEComment: 'The total number of subclasses of a class'>
	
	^self
		lookUpPropertyNamed: #totalNumberOfChildren
		computedAs: [self subclassHierarchyGroup size]
]

{ #category : #metrics }
FmxNGTClassHierarchyNavigation >> totalNumberOfChildren: aNumber [

	self privateState propertyAt: #totalNumberOfChildren put: aNumber
]

{ #category : #enumerating }
FmxNGTClassHierarchyNavigation >> withSubclassHierarchy [
	^ self subclassHierarchy 
		addFirst: self realType;
		addAll: self realType allTypeAliases;
		yourself
]

{ #category : #'Famix-Implementation' }
FmxNGTClassHierarchyNavigation >> withSubclassHierarchyGroup [
	<navigation: 'With all subclasses'>
	^ MooseGroup
		withAll: (self subclassHierarchy asSet; addFirst: self; yourself)
		withDescription: 'With all subclasses of ' , self mooseName
]

{ #category : #enumerating }
FmxNGTClassHierarchyNavigation >> withSubclassesDo: aBlock [
	aBlock value: self.
	self allSubclassesDo: aBlock
]

{ #category : #'Famix-Implementation' }
FmxNGTClassHierarchyNavigation >> withSuperclassHierarchy [
	^ self realType superclassHierarchy 
		addFirst: self realType; 
		addAll: self realType allTypeAliases;
		yourself
]

{ #category : #enumerating }
FmxNGTClassHierarchyNavigation >> withSuperclassesDo: aBlock [
	aBlock value: self.
	self allSuperclassesDo: aBlock
]
