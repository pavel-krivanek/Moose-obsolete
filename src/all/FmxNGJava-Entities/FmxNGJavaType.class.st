Class {
	#name : #FmxNGJavaType,
	#superclass : #FmxNGJavaContainerEntity,
	#traits : 'FmxNGTParameterizedTypeUser + FmxNGTReferenceable + FmxNGTType + FmxNGTWithAttributes + FmxNGTWithMethods + FmxNGTWithSubInheritances + FmxNGTWithSuperInheritances + FmxNGTWithTypeAliases + FmxNGTWithTypedStructures',
	#classTraits : 'FmxNGTParameterizedTypeUser classTrait + FmxNGTReferenceable classTrait + FmxNGTType classTrait + FmxNGTWithAttributes classTrait + FmxNGTWithMethods classTrait + FmxNGTWithSubInheritances classTrait + FmxNGTWithSuperInheritances classTrait + FmxNGTWithTypeAliases classTrait + FmxNGTWithTypedStructures classTrait',
	#category : #'FmxNGJava-Entities-Entities'
}

{ #category : #meta }
FmxNGJavaType class >> annotation [

	<generated>
	<MSEClass: #Type super: #FmxNGJavaContainerEntity>
	<package: #'FmxNGJava-Entities'>
	<generated>
	^self
]

{ #category : #generator }
FmxNGJavaType class >> generatedSlotNames [
	<generated>
	'FmxNGJavaType class>>#generatedSlotNames'.
	^ #()
]

{ #category : #generator }
FmxNGJavaType class >> generatedTraitNames [
	<generated>
	^ #(FmxNGTParameterizedTypeUser FmxNGTReferenceable FmxNGTType FmxNGTWithAttributes FmxNGTWithMethods FmxNGTWithSubInheritances FmxNGTWithSuperInheritances FmxNGTWithTypeAliases FmxNGTWithTypedStructures)
]

{ #category : #meta }
FmxNGJavaType class >> requirements [

	<generated>
	^ { FmxNGJavaContainerEntity }
]

{ #category : #'as yet unclassified' }
FmxNGJavaType >> accept: aVisitor [

	aVisitor visitType: self
]

{ #category : #'as yet unclassified' }
FmxNGJavaType >> accessTo: aFAMIXPackageOrFAMIXClass [ 

	|accesses|
	accesses := self methods flatCollect:[:each | each accesses].
	^ accesses 
		selectAsSet: [:access | (access variable isKindOf: #FmxNGJavaAttribute) 
								and:[aFAMIXPackageOrFAMIXClass isAccessedBy: access]].
]

{ #category : #'as yet unclassified' }
FmxNGJavaType >> addAttribute: anAttribute [
	attributes add: anAttribute
]

{ #category : #'as yet unclassified' }
FmxNGJavaType >> addBehaviourWithDeclaredType: aBehaviour [
	self structuresWithDeclaredType add: aBehaviour
]

{ #category : #'as yet unclassified' }
FmxNGJavaType >> addIncomingReference: aReference [ 
	incomingReferences add: aReference
]

{ #category : #'as yet unclassified' }
FmxNGJavaType >> addOutgoingTraitUsage: aTraitUsage [
	self outgoingTraitUsages add: aTraitUsage
]

{ #category : #'as yet unclassified' }
FmxNGJavaType >> addStructureWithDeclaredType: aStructuralEntity [
	structuresWithDeclaredType add: aStructuralEntity
]

{ #category : #'as yet unclassified' }
FmxNGJavaType >> addTraitUsage: aTraitUsage [
	
]

{ #category : #'as yet unclassified' }
FmxNGJavaType >> addedMethods [
	| inheritedMethodNames |
	inheritedMethodNames := self inheritedMethods
		collect: [:each | each signature].
	^self methods
		reject: [:each | inheritedMethodNames includes: each signature]
]

{ #category : #'as yet unclassified' }
FmxNGJavaType >> allAnnotationInstances [
	| result |
	result := OrderedCollection new.
	result addAll: self annotationInstances.
	result addAll: (self methods flatCollect: [ :each | each annotationInstances ]).
	^ result 
]

{ #category : #'as yet unclassified' }
FmxNGJavaType >> allAnnotationTypes [
	^ self allAnnotationInstances collectAsSet: #annotationType
]

{ #category : #'as yet unclassified' }
FmxNGJavaType >> allSubclassesDo: aBlock [
	self allSubclassesWithoutAliasesDo: aBlock.
	self typeAliases do: [ :each | each allSubclassesWithoutAliasesDo: aBlock ]
]

{ #category : #'as yet unclassified' }
FmxNGJavaType >> allSubclassesWithoutAliasesDo: aBlock [
	self subInheritances do: [ :each | aBlock value: each subclass ].
	self subInheritances do: [ :each | each subclass allSubclassesDo: aBlock ]
]

{ #category : #'as yet unclassified' }
FmxNGJavaType >> allSuperclassesDo: aBlock [
	self allSuperclassesWithoutAliasesDo: aBlock.
	self mooseModel sourceLanguage isC
		ifTrue: [ self typeAliases do: [ :each | each allSuperclassesWithoutAliasesDo: aBlock ] ]
]

{ #category : #'as yet unclassified' }
FmxNGJavaType >> allSuperclassesWithoutAliasesDo: aBlock [
	superInheritances do: [:each | aBlock value: each superclass].
	superInheritances do: [:each | each superclass allSuperclassesDo: aBlock]
]

{ #category : #'as yet unclassified' }
FmxNGJavaType >> anySuperclass [
	"Mircea: this used to return interfaces too. fixed now. 
	also added superclass that does the same thing"

	self
		allSuperclassesDo: [ :each | 
			each isInterface
				ifFalse: [ ^ each ] ].
	^ nil
]

{ #category : #'as yet unclassified' }
FmxNGJavaType >> behavioursWithDeclaredType [

	^ self structuresWithDeclaredType
]

{ #category : #'as yet unclassified' }
FmxNGJavaType >> behavioursWithDeclaredType: anObject [

	^ self structuresWithDeclaredType: anObject
]

{ #category : #'as yet unclassified' }
FmxNGJavaType >> belongsTo [
	^ self container ifNil: [ self parentPackage ]
]

{ #category : #'as yet unclassified' }
FmxNGJavaType >> belongsTo: aContainer [
	self container: aContainer 
]

{ #category : #'as yet unclassified' }
FmxNGJavaType >> classSide [
	^self isClassSide
		ifFalse:
			[self mooseModel allClasses
				entityNamed: (self mooseName , '_class') asSymbol]
		ifTrue: [self]
]

{ #category : #'as yet unclassified' }
FmxNGJavaType >> clientClasses [
	self deprecated: 'use clientTypes'.
	
	^ self clientTypes 
]

{ #category : #'as yet unclassified' }
FmxNGJavaType >> clientNamespaces [
	"returns a set of all the namespaces that depend on (some classes of them inherit, staticly access, or use some methods of) the receiver"

	"Moose cook was: ^ self inheritedByNamespaces union: self invokingNamespaces"

	^ (self queryAllIncoming atScope: FmxNGTNamespace) withoutSelfLoops
]

{ #category : #'as yet unclassified' }
FmxNGJavaType >> clientPackages [
	"returns a set of all the packages that depend on (some classes of them inherit, staticly access, or use some methods of) the receiver"

	"Moose cook was: ^ self inheritedByPackages union: self invokingPackages"

	^ (self queryAllIncoming atScope: FmxNGTPackage) withoutSelfLoops
]

{ #category : #'as yet unclassified' }
FmxNGJavaType >> clientTypes [
	<MSEProperty: #clientTypes type: #FmxNGJavaType>
	<multivalued>
	<derived>
	<MSEComment: 'All types that depend on (inherit, staticly access, or use some methods of) the receiver'>
	^ (self queryAllIncoming atScope: FmxNGTType) withoutSelfLoops
]

{ #category : #'as yet unclassified' }
FmxNGJavaType >> container [

	<MSEProperty: #container type: #FmxNGJavaContainerEntity>
	<MSEComment: 'Deprected, use typeContainer'>
	<container>
	<derived>

	^ self typeContainer
]

{ #category : #'as yet unclassified' }
FmxNGJavaType >> container: aContainer [

	self typeContainer: aContainer
]

{ #category : #'as yet unclassified' }
FmxNGJavaType >> copyFrom: anEntity within: aVisitor [

	super copyFrom: anEntity within: aVisitor.

	anEntity superInheritances do: [:inh|
		aVisitor visit: inh ].
	anEntity attributes do: [:a |
		self addAttribute: (aVisitor visit: a) ].
	anEntity methods do: [:m|
		self addMethod: (aVisitor visit: m) ].

]

{ #category : #'as yet unclassified' }
FmxNGJavaType >> directSubclasses [
	"returns a collection with all subclasses of this class"

	^ self subInheritances collect: [:each | each subclass]
]

{ #category : #'as yet unclassified' }
FmxNGJavaType >> directSuperclasses [
	"returns a collection with all superclasses of this class"

	^ self superInheritances collect: [:each | each superclass]
]

{ #category : #'as yet unclassified' }
FmxNGJavaType >> extendedInPackages [

	^ self privateState cacheAt: #extendedInPackages
							ifAbsentPut: [ self extendedMethods collectAsSet: [ :m| m packageScope ] ]


]

{ #category : #'as yet unclassified' }
FmxNGJavaType >> extendedMethods [
	"select methods which are class extensions in this class"

	^  self privateState cacheAt: #extendedMethods
							ifAbsentPut: [ self methods select: [ :m| m isExtension ] ]
]

{ #category : #'as yet unclassified' }
FmxNGJavaType >> fanIn [
	<MSEProperty: #fanIn type: #Number>
	<derived>
	<MSEComment: 'Number of client classes'>

	^self
		lookUpPropertyNamed: #fanIn
		computedAs: [self clientTypes size]
]

{ #category : #'as yet unclassified' }
FmxNGJavaType >> fanIn: aNumber [

	self privateState propertyAt: #fanIn put: aNumber
]

{ #category : #'as yet unclassified' }
FmxNGJavaType >> fanOut [
	<MSEProperty: #fanOut type: #Number>
	<derived>
	<MSEComment: 'Number of provider classes'>

	^self
		lookUpPropertyNamed: #fanOut
		computedAs: [self providerTypes size]
]

{ #category : #'as yet unclassified' }
FmxNGJavaType >> fanOut: aNumber [

	self privateState propertyAt: #fanOut put: aNumber
]

{ #category : #'as yet unclassified' }
FmxNGJavaType >> hasMethodWithSignature: aStringOrSymbol [
	| symbol |
	symbol := aStringOrSymbol asSymbol.
	^self methods anySatisfy: [:each | each signature asSymbol = symbol]
]

{ #category : #'as yet unclassified' }
FmxNGJavaType >> hasMethodsAnnotatedWith: aString [
	^ self methods anySatisfy: [ :each | each isAnnotatedWith: aString ]
]

{ #category : #'as yet unclassified' }
FmxNGJavaType >> hierarchyNestingLevel [
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

{ #category : #'as yet unclassified' }
FmxNGJavaType >> hierarchyNestingLevel: aNumber [

	self privateState propertyAt: #hierarchyNestingLevel put: aNumber
]

{ #category : #'as yet unclassified' }
FmxNGJavaType >> implementationOf: signature [
	self withSuperclassesDo: [ :class | | found |
			found := class methods
				detect: [ :method | method signature = signature ]
				ifNone: [ nil ].
			found ifNotNil: [ ^found ] ].
	^ nil
]

{ #category : #'as yet unclassified' }
FmxNGJavaType >> implementedInterfaces [

	^ self directSuperclasses select: #isInterface
]

{ #category : #'as yet unclassified' }
FmxNGJavaType >> implements: aString [
	^ self methods
		anySatisfy: [ :each | aString = each signature	 "was changed from match: for performances and because signature is case sensitive" ]
]

{ #category : #'as yet unclassified' }
FmxNGJavaType >> incomingAccesses [
	^ self privateState 
		cacheAt: #incomingAccesses
		ifAbsentPut: [ attributes flatCollect: [ :each | each incomingAccesses ] ]
]

{ #category : #'as yet unclassified' }
FmxNGJavaType >> incomingAccessesGroup [
	<navigation: 'Incoming accesses'>
	^ self privateState cacheAt:
		 #incomingAccessesGroup
		ifAbsentPut:
			[MooseGroup
				withAll: self incomingAccesses
				withDescription: 'Incoming accesses to ' , self mooseName]
]

{ #category : #'as yet unclassified' }
FmxNGJavaType >> incomingTypeDeclarations [

	^ self structuresWithDeclaredType , self behavioursWithDeclaredType collect: [ :var | MooseChefTypeDeclarationAssociation newFrom: var to: self ]
]

{ #category : #'as yet unclassified' }
FmxNGJavaType >> inheritedAttributes [
	| inheritedAttrs |
	inheritedAttrs := OrderedCollection new.
	self allSuperclassesDo: [:each | 
			each attributes do: [:attr | 
				attr isPrivate not ifTrue: [inheritedAttrs add: attr]]].
	^ inheritedAttrs
]

{ #category : #'as yet unclassified' }
FmxNGJavaType >> inheritedMethods [
	| inheritedMethods |
	inheritedMethods := OrderedCollection new.
	self allSuperclassesDo: [:each | 
			each methodsDo: [:method | 
				method isPrivate not ifTrue: [inheritedMethods add: method]]].
	^inheritedMethods
]

{ #category : #'as yet unclassified' }
FmxNGJavaType >> inheritedSignatures [
	| inheritedSignatures |
	inheritedSignatures := Set new.
	self superclassHierarchy do: [:each | 
			each methodsDo: [:method | 
				method isPrivate not ifTrue: [inheritedSignatures add: method signature]]].
	^ inheritedSignatures
]

{ #category : #'as yet unclassified' }
FmxNGJavaType >> inheritedSignaturesToMethod [
	| inheritedSignaturesToMethod |
	inheritedSignaturesToMethod := Dictionary new.
	self allSuperclassesDo: [:each | 
			each methodsDo: [:method | 
				method isPrivate ifFalse: [
					inheritedSignaturesToMethod at: method signature ifAbsentPut: [method]]]].
	^ inheritedSignaturesToMethod
]

{ #category : #'as yet unclassified' }
FmxNGJavaType >> inheritsFrom: aClass [
	self allSuperclassesDo: [:each | each = aClass ifTrue: [^true]].
	^ false
]

{ #category : #'as yet unclassified' }
FmxNGJavaType >> instanceSide [
	^self isClassSide
		ifTrue:
			[self mooseModel allClasses
				entityNamed: (self mooseName removeSuffix: '_class') asSymbol]
		ifFalse: [self]
]

{ #category : #'as yet unclassified' }
FmxNGJavaType >> isAbstract [
	<MSEProperty: #isAbstract type: #Boolean> <derived>
	<MSEComment: 'Flag true for abstract classes.'>
	
	^super isAbstract
]

{ #category : #'as yet unclassified' }
FmxNGJavaType >> isAnonymousClass [
	^  self container notNil and: [
			self container isMethod or: [
				self name isAllDigits or: [
					'*_anonymous_*' match: self name ]] ]
]

{ #category : #'as yet unclassified' }
FmxNGJavaType >> isBrainClass [
	^ (self propertyNamed: #BrainClass) = true
]

{ #category : #'as yet unclassified' }
FmxNGJavaType >> isClassSide [
	"Kind of a hack. Uses the FAMIX2 Smalltalk naming convention that every Smalltalk
	 metaclass has _class appended to the classname of the class it is a metaclass of."

	^'*_class' match: self name
]

{ #category : #'as yet unclassified' }
FmxNGJavaType >> isDataClass [
	^ (self propertyNamed: #DataClass) = true
]

{ #category : #'as yet unclassified' }
FmxNGJavaType >> isExtended [

	^ self methods anySatisfy: [ :m| m isExtension ]
]

{ #category : #'as yet unclassified' }
FmxNGJavaType >> isGodClass [
	^ (self propertyNamed: #GodClass) = true
]

{ #category : #'as yet unclassified' }
FmxNGJavaType >> isHierarchyRoot [
	^self superclassHierarchyGroup 
		allSatisfy: [:each | each isNil or: [each isStub] ]
]

{ #category : #'as yet unclassified' }
FmxNGJavaType >> isHierarchyRootWithin: aClassGroup [
	^(self superclassHierarchyGroup intersection: aClassGroup) isEmpty
]

{ #category : #'as yet unclassified' }
FmxNGJavaType >> isInnerClass [
	<MSEProperty: #isInnerClass type: #Boolean>
	<derived>
	<MSEComment:
		'True if the method is considered as an innerclass (i.e. is contained elsewhere than a java package: class, method, enum,...)'>
	^ self container ifNotNil: [ :c | c isNamespace not ] ifNil: [ false ]
]

{ #category : #'as yet unclassified' }
FmxNGJavaType >> isInstanceSide [
	^self isClassSide not
]

{ #category : #'as yet unclassified' }
FmxNGJavaType >> isInterface [
	^ false
]

{ #category : #'as yet unclassified' }
FmxNGJavaType >> isJUnit3TestCase [
	^ self superclassHierarchy anySatisfy: [:each | each mooseName =  #'junit::framework::TestCase']
]

{ #category : #'as yet unclassified' }
FmxNGJavaType >> isJUnit4TestCase [
	<MSEProperty: #isJUnit4TestCase type: #Boolean>
	<derived>
	<MSEComment: 'True if the method is considered as a Junit 4 Java test'>
	^ self methods anySatisfy: [ :m | m isJUnit4Test ]
]

{ #category : #'as yet unclassified' }
FmxNGJavaType >> isLonelyWithin: aClassGroup [
	^ ( self subclassHierarchyGroup intersection: aClassGroup ) isEmpty and: [
		( self superclassHierarchyGroup intersection: aClassGroup ) isEmpty ]
]

{ #category : #'as yet unclassified' }
FmxNGJavaType >> isParameterType [
	^ false
]

{ #category : #'as yet unclassified' }
FmxNGJavaType >> isParameterizedType [
	^ false
]

{ #category : #'as yet unclassified' }
FmxNGJavaType >> isSUnitTestCase [
	self allSuperclassesDo: [:each | each name = 'TestCase' ifTrue: [^ true] ].
	^ false
]

{ #category : #'as yet unclassified' }
FmxNGJavaType >> isTestCase [
	<MSEProperty: #isTestCase type: #Boolean>
	<derived>
	<MSEComment: 'True if the method is considered as a Java test'>
	^ self isJUnit3TestCase or: [ self isJUnit4TestCase ] 
]

{ #category : #testing }
FmxNGJavaType >> isType [
	^ true
]

{ #category : #'as yet unclassified' }
FmxNGJavaType >> localMethods [
	"select all locally defined methods"

	^ self privateState cacheAt: #localMethods
							ifAbsentPut: [ self methods reject: [ :m| m isExtension ] ]
]

{ #category : #'as yet unclassified' }
FmxNGJavaType >> lookUp: aMethodSignature [ 
	"Returns the first method that has as signature #aMethodSignature. 
	The search starts from the receiver's methods and traveses the inherited methods from the receiver's superclasses heirarchy.
	If such a method has not been found, it returns nil"

	| c toSearchIt searchedM |
	c := self.
	searchedM := nil.
	toSearchIt := true.
	[c notNil and: [toSearchIt]] whileTrue: 
			[searchedM := c methods 
						detect: [:m | m signature = aMethodSignature]
						ifNone: [nil].
			searchedM
				ifNil: [c := c superclass]
				ifNotNil: [toSearchIt := false]
			].
	^searchedM
]

{ #category : #'as yet unclassified' }
FmxNGJavaType >> methodScope [
	"This only makes sense to reject self loops in #collectAtScope:"

	^ self methods
]

{ #category : #printing }
FmxNGJavaType >> mooseNameOn: aStream [ 
	| parent |
	parent := self typeContainer.
	parent ifNotNil: 
		[ 
			parent mooseNameOn: aStream.
			aStream
				nextPut: $:;
				nextPut: $: ].
	self name ifNotNil: [aStream nextPutAll: self name]
]

{ #category : #'as yet unclassified' }
FmxNGJavaType >> namespaceScope [
	"we ask the container for the namespaceScope
	because we can have classes in methods or in other classes.
	Thus, we need to traverse recursively until we reach a namespace"
	
	^ self container 
		ifNotNil: [ self container namespaceScope ]
]

{ #category : #'as yet unclassified' }
FmxNGJavaType >> packageScope [

	^ self parentPackage
]

{ #category : #'as yet unclassified' }
FmxNGJavaType >> parentScope [
	"Polymorphic alias to mimic GlobalVariable#parentScope and similar"

	^ self container
]

{ #category : #'as yet unclassified' }
FmxNGJavaType >> printOn: aStream [ 
	| parent |
	
	self name ifNotNil: [ aStream nextPutAll: self name ].
	parent := self container.
	parent ifNotNil: [ 
		aStream nextPutAll: ' in '.
		parent mooseNameOn: aStream ].
	aStream 
		nextPutAll: ' (';
		nextPutAll: (self class name removePrefix: 'FmxNGJava');
		nextPutAll: ')'
]

{ #category : #'as yet unclassified' }
FmxNGJavaType >> providerClasses [
	self deprecated: 'use providerTypes'.
	^ self providerTypes
]

{ #category : #'as yet unclassified' }
FmxNGJavaType >> providerNamespaces [
	"returns a set of all the namespaces that the receiver depends on (they include some classes that the receiver inherites, staticly accesses, or uses some of their methods)"

	"Moose cook was: ^ self inheritedNamespaces union: self invokedNamespaces"

	^ (self queryAllOutgoing atScope: FmxNGTNamespace) withoutSelfLoops
]

{ #category : #'as yet unclassified' }
FmxNGJavaType >> providerPackages [
	"returns a set of all the packages that the receiver depends on (they include some classes that the receiver inherites, staticly accesses, or uses some of their methods)"

	"Moose cook was: ^ self inheritedPackages union: self invokedPackages"

	^ (self queryAllOutgoing atScope: FmxNGTPackage) withoutSelfLoops
]

{ #category : #'as yet unclassified' }
FmxNGJavaType >> providerTypes [
	<MSEProperty: #providerTypes type: #FmxNGJavaType>
	<derived>
	<multivalued>
	<MSEComment: 'All types that the receiver depends on (inherites, staticly accesses, or uses some of their methods)'>
	^ (self queryAllOutgoing atScope: FmxNGTType) withoutSelfLoops
]

{ #category : #'as yet unclassified' }
FmxNGJavaType >> realType [
	"All types except the alias ones are real"
	^ self 
]

{ #category : #'as yet unclassified' }
FmxNGJavaType >> subclassHierarchy [
	| subclasses |
	subclasses := OrderedCollection new.
	self allSubclassesDo: [:each | subclasses add: each].
	^ subclasses
]

{ #category : #'as yet unclassified' }
FmxNGJavaType >> subclassHierarchyGroup [
	<navigation: 'All subclasses'>
	^ MooseGroup
		withAll: self subclassHierarchy asSet
		withDescription: 'All subclasses of ' , self mooseName
]

{ #category : #'as yet unclassified' }
FmxNGJavaType >> superclass [
	^self anySuperclass
]

{ #category : #'as yet unclassified' }
FmxNGJavaType >> superclassHierarchy [
	| superclasses |
	superclasses := OrderedCollection new.
	self allSuperclassesDo: [:each |  superclasses add: each].
	^ superclasses
]

{ #category : #'as yet unclassified' }
FmxNGJavaType >> superclassHierarchyGroup [
	<navigation: 'All superclasses'>
	^ MooseGroup
		withAll: self superclassHierarchy asSet
		withDescription: 'All superclasses of ' , self mooseName
]

{ #category : #'as yet unclassified' }
FmxNGJavaType >> typeScope [
	"all types are not classes. Redefined in FamixClass"

	^ self
]

{ #category : #'as yet unclassified' }
FmxNGJavaType >> understands: signature [
	"returns true if a class is able to respond to an invocation to aSignature on itself; false otherwise"

	self withSuperclassesDo: [:each | 
		(each implements: signature) ifTrue: [^true]].
	^false
]

{ #category : #'as yet unclassified' }
FmxNGJavaType >> withSubclassHierarchy [
	^ self subclassHierarchy 
		addFirst: self realType;
		addAll: self realType allTypeAliases;
		yourself
]

{ #category : #'as yet unclassified' }
FmxNGJavaType >> withSubclassHierarchyGroup [
	<navigation: 'With all subclasses'>
	^ MooseGroup
		withAll: (self subclassHierarchy asSet; addFirst: self; yourself)
		withDescription: 'With all subclasses of ' , self mooseName
]

{ #category : #'as yet unclassified' }
FmxNGJavaType >> withSubclassesDo: aBlock [
	aBlock value: self.
	self allSubclassesDo: aBlock
]

{ #category : #'as yet unclassified' }
FmxNGJavaType >> withSuperclassHierarchy [
	^ self realType superclassHierarchy 
		addFirst: self realType; 
		addAll: self realType allTypeAliases;
		yourself
]

{ #category : #'as yet unclassified' }
FmxNGJavaType >> withSuperclassHierarchyGroup [
	<navigation: 'With all superclasses'>
	^ MooseGroup
		withAll: self withSuperclassHierarchy asSet
		withDescription: 'With all superclasses of ' , self mooseName
]

{ #category : #'as yet unclassified' }
FmxNGJavaType >> withSuperclassesDo: aBlock [
	aBlock value: self.
	self allSuperclassesDo: aBlock
]
