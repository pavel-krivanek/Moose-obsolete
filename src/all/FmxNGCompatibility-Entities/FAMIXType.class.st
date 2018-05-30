Class {
	#name : #FAMIXType,
	#superclass : #FAMIXContainerEntity,
	#traits : 'FmxNGTParameterizedTypeUser + FmxNGTReferenceable + FmxNGTType + FmxNGTWithAttributes + FmxNGTWithMethods + FmxNGTWithSubInheritances + FmxNGTWithSuperInheritances + FmxNGTWithTypeAliases + FmxNGTWithTypedStructures',
	#classTraits : 'FmxNGTParameterizedTypeUser classTrait + FmxNGTReferenceable classTrait + FmxNGTType classTrait + FmxNGTWithAttributes classTrait + FmxNGTWithMethods classTrait + FmxNGTWithSubInheritances classTrait + FmxNGTWithSuperInheritances classTrait + FmxNGTWithTypeAliases classTrait + FmxNGTWithTypedStructures classTrait',
	#category : #'FmxNGCompatibility-Entities-Entities'
}

{ #category : #meta }
FAMIXType class >> annotation [

	<generated>
	<MSEClass: #Type super: #FAMIXContainerEntity>
	<package: #FAMIX>
	<generated>
	^self
]

{ #category : #generator }
FAMIXType class >> generatedSlotNames [
	<generated>
	^ #()
]

{ #category : #generator }
FAMIXType class >> generatedTraitNames [
	<generated>
	^ #(FmxNGTParameterizedTypeUser FmxNGTReferenceable FmxNGTType FmxNGTWithAttributes FmxNGTWithMethods FmxNGTWithSubInheritances FmxNGTWithSuperInheritances FmxNGTWithTypeAliases FmxNGTWithTypedStructures)
]

{ #category : #meta }
FAMIXType class >> requirements [

	<generated>
	^ {  }
]

{ #category : #'Famix-Extensions' }
FAMIXType >> accept: aVisitor [

	aVisitor visitType: self
]

{ #category : #'Famix-Extensions-navigation' }
FAMIXType >> accessTo: aFAMIXPackageOrFAMIXClass [ 

	|accesses|
	accesses := self methods flatCollect:[:each | each accesses].
	^ accesses 
		selectAsSet: [:access | (access variable isKindOf: #FAMIXAttribute) 
								and:[aFAMIXPackageOrFAMIXClass isAccessedBy: access]].
]

{ #category : #accessing }
FAMIXType >> addAttribute: anAttribute [
	attributes add: anAttribute
]

{ #category : #accessing }
FAMIXType >> addBehaviourWithDeclaredType: aBehaviour [
	self structuresWithDeclaredType add: aBehaviour
]

{ #category : #accessing }
FAMIXType >> addIncomingReference: aReference [ 
	incomingReferences add: aReference
]

{ #category : #accessing }
FAMIXType >> addMethod: aMethod [
	methods add: aMethod
]

{ #category : #accessing }
FAMIXType >> addOutgoingTraitUsage: aTraitUsage [
	self outgoingTraitUsages add: aTraitUsage
]

{ #category : #accessing }
FAMIXType >> addStructureWithDeclaredType: aStructuralEntity [
	structuresWithDeclaredType add: aStructuralEntity
]

{ #category : #accessing }
FAMIXType >> addSubInheritance: anInheritance [ 
	subInheritances add: anInheritance
]

{ #category : #accessing }
FAMIXType >> addSuperInheritance: anInheritance [ 
	superInheritances add: anInheritance
]

{ #category : #accessing }
FAMIXType >> addTraitUsage: aTraitUsage [
	
]

{ #category : #'Famix-Implementation' }
FAMIXType >> addedMethods [
	| inheritedMethodNames |
	inheritedMethodNames := self inheritedMethods
		collect: [:each | each signature].
	^self methods
		reject: [:each | inheritedMethodNames includes: each signature]
]

{ #category : #'Famix-Extensions' }
FAMIXType >> allAnnotationInstances [
	| result |
	result := OrderedCollection new.
	result addAll: self annotationInstances.
	result addAll: (self methods flatCollect: [ :each | each annotationInstances ]).
	^ result 
]

{ #category : #'Famix-Extensions' }
FAMIXType >> allAnnotationTypes [
	^ self allAnnotationInstances collectAsSet: #annotationType
]

{ #category : #accessing }
FAMIXType >> allRecursiveTypes [
	"Retrieves all nested types recursively (including directly nested types and those nested in methods)"
	
	| result |
	result := Set new.
	self allRecursiveTypesDo: [:each | result add: each ].
	^ result
]

{ #category : #accessing }
FAMIXType >> allRecursiveTypesDo: aBlock [
	"Traverses all nested types recursively (including directly nested types and those nested in methods)"

	self types do: [ :each | 
		aBlock value: each.
		each allRecursiveTypesDo: aBlock ].
	self methods do: [ :each | each allRecursiveTypesDo: aBlock ]
]

{ #category : #'Famix-Implementation' }
FAMIXType >> allSubclassesDo: aBlock [
	self allSubclassesWithoutAliasesDo: aBlock.
	self typeAliases do: [ :each | each allSubclassesWithoutAliasesDo: aBlock ]
]

{ #category : #'Famix-Implementation' }
FAMIXType >> allSubclassesWithoutAliasesDo: aBlock [
	self subInheritances do: [ :each | aBlock value: each subclass ].
	self subInheritances do: [ :each | each subclass allSubclassesDo: aBlock ]
]

{ #category : #'Famix-Implementation' }
FAMIXType >> allSuperclassesDo: aBlock [
	self allSuperclassesWithoutAliasesDo: aBlock.
	self mooseModel sourceLanguage isC
		ifTrue: [ self typeAliases do: [ :each | each allSuperclassesWithoutAliasesDo: aBlock ] ]
]

{ #category : #'Famix-Implementation' }
FAMIXType >> allSuperclassesWithoutAliasesDo: aBlock [
	superInheritances do: [:each | aBlock value: each superclass].
	superInheritances do: [:each | each superclass allSuperclassesDo: aBlock]
]

{ #category : #'Famix-Implementation' }
FAMIXType >> allTypeAliases [
	| all |
	all := OrderedCollection withAll: self typeAliases.
	self typeAliases do: [:each | all addAll: each allTypeAliases ].
	^ all
]

{ #category : #'Famix-Implementation' }
FAMIXType >> anySuperclass [
	"Mircea: this used to return interfaces too. fixed now. 
	also added superclass that does the same thing"

	self
		allSuperclassesDo: [ :each | 
			each isInterface
				ifFalse: [ ^ each ] ].
	^ nil
]

{ #category : #accessing }
FAMIXType >> behavioursWithDeclaredType [

	^ self structuresWithDeclaredType
]

{ #category : #accessing }
FAMIXType >> behavioursWithDeclaredType: anObject [

	^ self structuresWithDeclaredType: anObject
]

{ #category : #accessing }
FAMIXType >> belongsTo [
	^ self container ifNil: [ self parentPackage ]
]

{ #category : #accessing }
FAMIXType >> belongsTo: aContainer [
	self container: aContainer 
]

{ #category : #'Famix-Smalltalk' }
FAMIXType >> classSide [
	^self isClassSide
		ifFalse:
			[self mooseModel allClasses
				entityNamed: (self mooseName , '_class') asSymbol]
		ifTrue: [self]
]

{ #category : #'Famix-Extensions-nav All Dependencies' }
FAMIXType >> clientClasses [
	self deprecated: 'use clientTypes'.
	
	^ self clientTypes 
]

{ #category : #'Famix-Extensions-nav All Dependencies' }
FAMIXType >> clientNamespaces [
	"returns a set of all the namespaces that depend on (some classes of them inherit, staticly access, or use some methods of) the receiver"

	"Moose cook was: ^ self inheritedByNamespaces union: self invokingNamespaces"

	^ (self queryAllIncoming atScope: FAMIXNamespace) withoutSelfLoops
]

{ #category : #'Famix-Extensions-nav All Dependencies' }
FAMIXType >> clientPackages [
	"returns a set of all the packages that depend on (some classes of them inherit, staticly access, or use some methods of) the receiver"

	"Moose cook was: ^ self inheritedByPackages union: self invokingPackages"

	^ (self queryAllIncoming atScope: FAMIXPackage) withoutSelfLoops
]

{ #category : #'Famix-Extensions-nav All Dependencies' }
FAMIXType >> clientTypes [
	<MSEProperty: #clientTypes type: #FAMIXType>
	<multivalued>
	<derived>
	<MSEComment: 'All types that depend on (inherit, staticly access, or use some methods of) the receiver'>
	^ (self queryAllIncoming atScope: FAMIXType) withoutSelfLoops
]

{ #category : #'as yet unclassified' }
FAMIXType >> container [

	<generated>
	<MSEProperty: #container type: #FAMIXContainerEntity>
	<MSEComment: 'Deprected, use typeContainer'>
	<container>
	<derived>

	^ self typeContainer
]

{ #category : #'as yet unclassified' }
FAMIXType >> container: aContainer [

	self typeContainer: aContainer
]

{ #category : #'Famix-Extensions' }
FAMIXType >> copyFrom: anEntity within: aVisitor [

	super copyFrom: anEntity within: aVisitor.

	anEntity superInheritances do: [:inh|
		aVisitor visit: inh ].
	anEntity attributes do: [:a |
		self addAttribute: (aVisitor visit: a) ].
	anEntity methods do: [:m|
		self addMethod: (aVisitor visit: m) ].

]

{ #category : #'Famix-Implementation' }
FAMIXType >> directSubclasses [
	"returns a collection with all subclasses of this class"

	^ self subInheritances collect: [:each | each subclass]
]

{ #category : #'Famix-Implementation' }
FAMIXType >> directSuperclasses [
	"returns a collection with all superclasses of this class"

	^ self superInheritances collect: [:each | each superclass]
]

{ #category : #'Famix-Smalltalk' }
FAMIXType >> extendedInPackages [

	^ self privateState cacheAt: #extendedInPackages
							ifAbsentPut: [ self extendedMethods collectAsSet: [ :m| m packageScope ] ]


]

{ #category : #'Famix-Smalltalk' }
FAMIXType >> extendedMethods [
	"select methods which are class extensions in this class"

	^  self privateState cacheAt: #extendedMethods
							ifAbsentPut: [ self methods select: [ :m| m isExtension ] ]
]

{ #category : #'Famix-Extensions' }
FAMIXType >> fanIn [
	<MSEProperty: #fanIn type: #Number>
	<derived>
	<MSEComment: 'Number of client classes'>

	^self
		lookUpPropertyNamed: #fanIn
		computedAs: [self clientTypes size]
]

{ #category : #'Famix-Extensions' }
FAMIXType >> fanIn: aNumber [

	self privateState propertyAt: #fanIn put: aNumber
]

{ #category : #'Famix-Extensions' }
FAMIXType >> fanOut [
	<MSEProperty: #fanOut type: #Number>
	<derived>
	<MSEComment: 'Number of provider classes'>

	^self
		lookUpPropertyNamed: #fanOut
		computedAs: [self providerTypes size]
]

{ #category : #'Famix-Extensions' }
FAMIXType >> fanOut: aNumber [

	self privateState propertyAt: #fanOut put: aNumber
]

{ #category : #'Famix-Extensions' }
FAMIXType >> hasMethodWithSignature: aStringOrSymbol [
	| symbol |
	symbol := aStringOrSymbol asSymbol.
	^self methods anySatisfy: [:each | each signature asSymbol = symbol]
]

{ #category : #'Famix-Extensions' }
FAMIXType >> hasMethodsAnnotatedWith: aString [
	^ self methods anySatisfy: [ :each | each isAnnotatedWith: aString ]
]

{ #category : #'Famix-Extensions' }
FAMIXType >> hierarchyNestingLevel [
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

{ #category : #'Famix-Extensions' }
FAMIXType >> hierarchyNestingLevel: aNumber [

	self privateState propertyAt: #hierarchyNestingLevel put: aNumber
]

{ #category : #'Famix-Implementation' }
FAMIXType >> implementationOf: signature [
	self withSuperclassesDo: [ :class | | found |
			found := class methods
				detect: [ :method | method signature = signature ]
				ifNone: [ nil ].
			found ifNotNil: [ ^found ] ].
	^ nil
]

{ #category : #'Famix-Java' }
FAMIXType >> implementedInterfaces [

	^ self directSuperclasses select: #isInterface
]

{ #category : #'Famix-Implementation' }
FAMIXType >> implements: aString [
	^ self methods
		anySatisfy: [ :each | aString = each signature	 "was changed from match: for performances and because signature is case sensitive" ]
]

{ #category : #'Famix-Extensions-navigation' }
FAMIXType >> incomingAccesses [
	^ self privateState 
		cacheAt: #incomingAccesses
		ifAbsentPut: [ attributes flatCollect: [ :each | each incomingAccesses ] ]
]

{ #category : #'Famix-Extensions-navigation' }
FAMIXType >> incomingAccessesGroup [
	<navigation: 'Incoming accesses'>
	^ self privateState cacheAt:
		 #incomingAccessesGroup
		ifAbsentPut:
			[MooseGroup
				withAll: self incomingAccesses
				withDescription: 'Incoming accesses to ' , self mooseName]
]

{ #category : #'moosequery-queries-incoming' }
FAMIXType >> incomingTypeDeclarations [
	^ self structuresWithDeclaredType , self behavioursWithDeclaredType collect: [ :var | MooseChefTypeDeclarationAssociation newFrom: var to: self ]
]

{ #category : #'Famix-Implementation' }
FAMIXType >> inheritedAttributes [
	| inheritedAttrs |
	inheritedAttrs := OrderedCollection new.
	self allSuperclassesDo: [:each | 
			each attributes do: [:attr | 
				attr isPrivate not ifTrue: [inheritedAttrs add: attr]]].
	^ inheritedAttrs
]

{ #category : #'Famix-Implementation' }
FAMIXType >> inheritedMethods [
	| inheritedMethods |
	inheritedMethods := OrderedCollection new.
	self allSuperclassesDo: [:each | 
			each methodsDo: [:method | 
				method isPrivate not ifTrue: [inheritedMethods add: method]]].
	^inheritedMethods
]

{ #category : #'Famix-Implementation' }
FAMIXType >> inheritedSignatures [
	| inheritedSignatures |
	inheritedSignatures := Set new.
	self superclassHierarchy do: [:each | 
			each methodsDo: [:method | 
				method isPrivate not ifTrue: [inheritedSignatures add: method signature]]].
	^ inheritedSignatures
]

{ #category : #'Famix-Implementation' }
FAMIXType >> inheritedSignaturesToMethod [
	| inheritedSignaturesToMethod |
	inheritedSignaturesToMethod := Dictionary new.
	self allSuperclassesDo: [:each | 
			each methodsDo: [:method | 
				method isPrivate ifFalse: [
					inheritedSignaturesToMethod at: method signature ifAbsentPut: [method]]]].
	^ inheritedSignaturesToMethod
]

{ #category : #'Famix-Implementation' }
FAMIXType >> inheritsFrom: aClass [
	self allSuperclassesDo: [:each | each = aClass ifTrue: [^true]].
	^ false
]

{ #category : #'Famix-Smalltalk' }
FAMIXType >> instanceSide [
	^self isClassSide
		ifTrue:
			[self mooseModel allClasses
				entityNamed: (self mooseName removeSuffix: '_class') asSymbol]
		ifFalse: [self]
]

{ #category : #'Famix-Extensions' }
FAMIXType >> isAbstract [
	<MSEProperty: #isAbstract type: #Boolean> <derived>
	<MSEComment: 'Flag true for abstract classes.'>
	
	^super isAbstract
]

{ #category : #'Famix-Java' }
FAMIXType >> isAnonymousClass [
	^  self container notNil and: [
			self container isMethod or: [
				self name isAllDigits or: [
					'*_anonymous_*' match: self name ]] ]
]

{ #category : #'Famix-Extensions' }
FAMIXType >> isBrainClass [
	^ (self propertyNamed: #BrainClass) = true
]

{ #category : #'Famix-Smalltalk' }
FAMIXType >> isClassSide [
	"Kind of a hack. Uses the FAMIX2 Smalltalk naming convention that every Smalltalk
	 metaclass has _class appended to the classname of the class it is a metaclass of."

	^'*_class' match: self name
]

{ #category : #'Famix-Extensions' }
FAMIXType >> isDataClass [
	^ (self propertyNamed: #DataClass) = true
]

{ #category : #'Famix-Smalltalk' }
FAMIXType >> isExtended [

	^ self methods anySatisfy: [ :m| m isExtension ]
]

{ #category : #'Famix-Extensions' }
FAMIXType >> isGodClass [
	^ (self propertyNamed: #GodClass) = true
]

{ #category : #'Famix-Extensions' }
FAMIXType >> isHierarchyRoot [
	^self superclassHierarchyGroup 
		allSatisfy: [:each | each isNil or: [each isStub] ]
]

{ #category : #'Famix-Extensions' }
FAMIXType >> isHierarchyRootWithin: aClassGroup [
	^(self superclassHierarchyGroup intersection: aClassGroup) isEmpty
]

{ #category : #'Famix-Java' }
FAMIXType >> isInnerClass [
	<MSEProperty: #isInnerClass type: #Boolean>
	<derived>
	<MSEComment:
		'True if the method is considered as an innerclass (i.e. is contained elsewhere than a java package: class, method, enum,...)'>
	^ self container ifNotNil: [ :c | c isNamespace not ] ifNil: [ false ]
]

{ #category : #'Famix-Smalltalk' }
FAMIXType >> isInstanceSide [
	^self isClassSide not
]

{ #category : #'Famix-Extensions' }
FAMIXType >> isInterface [
	^ false
]

{ #category : #'Famix-Java' }
FAMIXType >> isJUnit3TestCase [
	^ self superclassHierarchy anySatisfy: [:each | each mooseName =  #'junit::framework::TestCase']
]

{ #category : #'Famix-Java' }
FAMIXType >> isJUnit4TestCase [
	<MSEProperty: #isJUnit4TestCase type: #Boolean>
	<derived>
	<MSEComment: 'True if the method is considered as a Junit 4 Java test'>
	^ self methods anySatisfy: [ :m | m isJUnit4Test ]
]

{ #category : #'Famix-Extensions' }
FAMIXType >> isLonelyWithin: aClassGroup [
	^ ( self subclassHierarchyGroup intersection: aClassGroup ) isEmpty and: [
		( self superclassHierarchyGroup intersection: aClassGroup ) isEmpty ]
]

{ #category : #'Famix-Java' }
FAMIXType >> isParameterType [
	^ false
]

{ #category : #'Famix-Java' }
FAMIXType >> isParameterizedType [
	^ false
]

{ #category : #'Famix-Smalltalk' }
FAMIXType >> isSUnitTestCase [
	self allSuperclassesDo: [:each | each name = 'TestCase' ifTrue: [^ true] ].
	^ false
]

{ #category : #'Famix-Java' }
FAMIXType >> isTestCase [
	<MSEProperty: #isTestCase type: #Boolean>
	<derived>
	<MSEComment: 'True if the method is considered as a Java test'>
	^ self isJUnit3TestCase or: [ self isJUnit4TestCase ] 
]

{ #category : #'Famix-Implementation' }
FAMIXType >> isType [
	^ true
]

{ #category : #'Famix-Smalltalk' }
FAMIXType >> localMethods [
	"select all locally defined methods"

	^ self privateState cacheAt: #localMethods
							ifAbsentPut: [ self methods reject: [ :m| m isExtension ] ]
]

{ #category : #'Famix-Extensions-operations' }
FAMIXType >> lookUp: aMethodSignature [ 
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

{ #category : #'moosechef-scoping-filtering' }
FAMIXType >> methodScope [
	"This only makes sense to reject self loops in #collectAtScope:"

	^ self methods
]

{ #category : #'Famix-Implementation' }
FAMIXType >> methodsDo: aBlock [
	self methods do: aBlock
]

{ #category : #'Famix-Implementation' }
FAMIXType >> methodsGroup [
	<navigation: 'Methods'>
	^MooseGroup
		withAll: self methods
		withDescription: 'Methods from ' , self mooseName
]

{ #category : #'Famix-Implementation' }
FAMIXType >> mooseNameOn: aStream [ 
	| parent |
	parent := self container.
	parent ifNotNil: 
		[ 
			parent mooseNameOn: aStream.
			aStream
				nextPut: $:;
				nextPut: $: ].
	self name ifNotNil: [aStream nextPutAll: self name]
]

{ #category : #'moosechef-scoping-filtering' }
FAMIXType >> namespaceScope [
	"we ask the container for the namespaceScope
	because we can have classes in methods or in other classes.
	Thus, we need to traverse recursively until we reach a namespace"
	
	^ self container 
		ifNotNil: [ self container namespaceScope ]
]

{ #category : #'Famix-Extensions' }
FAMIXType >> numberOfAbstractMethods [
	<MSEProperty: #numberOfAbstractMethods type: #Number>
	<derived>
	<MSEComment: 'The number of abstract methods in the class'>
	
	^self
		lookUpPropertyNamed: #numberOfAbstractMethods
		computedAs: [self methodsGroup count: [:each | each isAbstract]]
]

{ #category : #'Famix-Extensions' }
FAMIXType >> numberOfAbstractMethods: aNumber [

	self privateState propertyAt: #numberOfAbstractMethods put: aNumber
]

{ #category : #'Famix-Extensions' }
FAMIXType >> numberOfAccessesToForeignData [
	<MSEProperty: #numberOfAccessesToForeignData type: #Number>
	<derived>
	<MSEComment: 'Number of accesses to foreign data'>
	
	^self
		lookUpPropertyNamed: #numberOfAccessesToForeignData
		computedAs: [self notExistentMetricValue]
]

{ #category : #'Famix-Extensions' }
FAMIXType >> numberOfAccessesToForeignData: aNumber [

	self privateState propertyAt: #numberOfAccessesToForeignData put: aNumber
]

{ #category : #'Famix-Extensions' }
FAMIXType >> numberOfAccessorMethods [
	<MSEProperty: #numberOfAccessorMethods type: #Number>
	<derived>
	<MSEComment: 'The number of accessor methods in a class'>
	^ self
		lookUpPropertyNamed: #numberOfAccessorMethods
		computedAs: [ 
			| noa |
			noa := 0.
			self methods
				do: [ :method | 
					method isPureAccessor
						ifNotNil: [ 
							(method isPureAccessor or: [ (method propertyNamed: #AccessorMethod) isNil not ])
								ifTrue: [ noa := noa + 1 ] ] ].
			noa ]
]

{ #category : #'Famix-Extensions' }
FAMIXType >> numberOfAccessorMethods: aNumber [

	self privateState propertyAt: #numberOfAccessorMethods put: aNumber
]

{ #category : #'Famix-Extensions' }
FAMIXType >> numberOfAnnotationInstances [
	<MSEProperty: #numberOfAnnotationInstances type: #Number>
	<derived>
	<MSEComment: 'The number of annotation instances defined in the class or in any of its methods'>

	^self
		lookUpPropertyNamed: #numberOfAnnotationInstances
		computedAs: [
			self annotationInstances size + (self methods inject: 0 into: [:sum :each | sum + each numberOfAnnotationInstances])]
]

{ #category : #'Famix-Extensions' }
FAMIXType >> numberOfAnnotationInstances: aNumber [

	self privateState propertyAt: #numberOfAnnotationInstances put: aNumber
]

{ #category : #'Famix-Extensions' }
FAMIXType >> numberOfAttributes [
	<MSEProperty: #numberOfAttributes type: #Number>
	<derived>
	<MSEComment: 'The number of attributes in the class'>
	
	^self
		lookUpPropertyNamed: #numberOfAttributes
		computedAs: [self attributes size]
]

{ #category : #'Famix-Extensions' }
FAMIXType >> numberOfAttributes: aNumber [

	self privateState propertyAt: #numberOfAttributes put: aNumber
]

{ #category : #'Famix-Extensions' }
FAMIXType >> numberOfAttributesInherited [
	<MSEProperty: #numberOfAttributesInherited type: #Number>
	<derived>
	<MSEComment: 'The number of attributes in a class inherited from super classes'>	
	
	^self
		lookUpPropertyNamed: #numberOfAttributesInherited
		computedAs: [self inheritedAttributes size]
]

{ #category : #'Famix-Extensions' }
FAMIXType >> numberOfAttributesInherited: aNumber [

	self privateState propertyAt: #numberOfAttributesInherited put: aNumber
]

{ #category : #'Famix-Extensions' }
FAMIXType >> numberOfComments [
	<MSEProperty: #numberOfComments type: #Number>
	<derived>
	<MSEComment: 'The number of comments in a class'>

	^ self lookUpPropertyNamed: #numberOfComments computedAs: [
		self comments size + 
		(self methods asArray inject: 0 into: [:sum : el| 
			el numberOfComments + sum ]) ]
]

{ #category : #'Famix-Extensions' }
FAMIXType >> numberOfComments: aNumber [

	self privateState propertyAt: #numberOfComments put: aNumber
]

{ #category : #'Famix-Extensions' }
FAMIXType >> numberOfConstructorMethods [
	<MSEProperty: #numberOfConstructorMethods type: #Number>
	<derived>
	<MSEComment: 'The number of constructor methods in a class'>
	^ self
		lookUpPropertyNamed: #numberOfConstructorMethods
		computedAs: [ 
			| nc |
			nc := 0.
			self methods
				do: [ :method | 
					method isConstructor
						ifNotNil: [ 
							method isConstructor
								ifTrue: [ nc := 1 ] ] ].
			nc ]
]

{ #category : #'Famix-Extensions' }
FAMIXType >> numberOfConstructorMethods: aNumber [

	self privateState propertyAt: #numberOfConstructorMethods put: aNumber
]

{ #category : #'Famix-Extensions' }
FAMIXType >> numberOfDirectSubclasses [
	<MSEProperty: #numberOfDirectSubclasses type: #Number>
	<MSEComment: 'The number of direct subclasses'>
	<derived>

	^ self privateState propertyAt: #numberOfDirectSubclasses ifAbsentPut: [self directSubclasses size]
]

{ #category : #'Famix-Extensions' }
FAMIXType >> numberOfDirectSubclasses: aNumber [

	self privateState propertyAt: #numberOfDirectSubclasses put: aNumber
]

{ #category : #'Famix-Extensions' }
FAMIXType >> numberOfDuplicatedLinesOfCodeInternally [
	<MSEProperty: #numberOfDuplicatedLinesOfCodeInternally type: #Number>
	<derived>
	<MSEComment: 'The number of duplicated lines of code internally'>		

	^self
		lookUpPropertyNamed: #numberOfDuplicatedLinesOfCodeInternally
		computedAs: [self notExistentMetricValue]
]

{ #category : #'Famix-Extensions' }
FAMIXType >> numberOfDuplicatedLinesOfCodeInternally: aNumber [

	self privateState propertyAt: #numberOfDuplicatedLinesOfCodeInternally put: aNumber
]

{ #category : #'Famix-Extensions' }
FAMIXType >> numberOfLinesOfCode [

	<MSEProperty: #numberOfLinesOfCode type: #Number>
	<derived>
	<MSEComment: 'The number of lines of code in a class'>

	^self
		lookUpPropertyNamed: #numberOfLinesOfCode
		computedAs: [self methodsGroup sumNumbers: #numberOfLinesOfCode]
]

{ #category : #'Famix-Extensions' }
FAMIXType >> numberOfLinesOfCode: aNumber [

	self privateState propertyAt: #numberOfLinesOfCode put: aNumber
]

{ #category : #'Famix-Extensions' }
FAMIXType >> numberOfMessageSends [
	<MSEProperty: #numberOfMessageSends type: #Number>
	<derived>
	<MSEComment: 'The number of message sends from a class'>
	
	^self
		lookUpPropertyNamed: #numberOfMessageSends
		computedAs: [self methodsGroup sumNumbers: #numberOfMessageSends]
]

{ #category : #'Famix-Extensions' }
FAMIXType >> numberOfMessageSends: aNumber [

	self privateState propertyAt: #numberOfMessageSends put: aNumber
]

{ #category : #'Famix-Smalltalk' }
FAMIXType >> numberOfMethodProtocols [
	<MSEProperty: #numberOfMethodProtocols type: #Number>
	<derived>
	<MSEComment: 'The number of method protocols in a class'>
	
	^self
		lookUpPropertyNamed: #numberOfMethodProtocols
		computedAs: [((self methods collect: [:each | each category]) reject: #isNil) asSet size]
]

{ #category : #'Famix-Smalltalk' }
FAMIXType >> numberOfMethodProtocols: aNumber [

	self privateState propertyAt: #numberOfMethodProtocols put: aNumber
]

{ #category : #'Famix-Extensions' }
FAMIXType >> numberOfMethods [
	<MSEProperty: #numberOfMethods type: #Number>
	<derived>
	<MSEComment: 'The number of methods in a class'>

	^self
		lookUpPropertyNamed: #numberOfMethods
		computedAs: [self methods size]
]

{ #category : #'Famix-Extensions' }
FAMIXType >> numberOfMethods: aNumber [

	self privateState propertyAt: #numberOfMethods put: aNumber
]

{ #category : #'Famix-Extensions' }
FAMIXType >> numberOfMethodsAdded [
	<MSEProperty: #numberOfMethodsAdded type: #Number>
	<derived>
	<MSEComment: 'The number of methods in a class added with respect to super classes'>	
	
	^self
		lookUpPropertyNamed: #numberOfMethodsAdded
		computedAs: [self addedMethods size]
]

{ #category : #'Famix-Extensions' }
FAMIXType >> numberOfMethodsAdded: aNumber [

	self privateState propertyAt: #numberOfMethodsAdded put: aNumber
]

{ #category : #'Famix-Extensions' }
FAMIXType >> numberOfMethodsInHierarchy [
	<MSEProperty: #numberOfMethodsInHierarchy type: #Number>
	<derived>
	<MSEComment: 'The number of methods of a class included the inherited ones'>	
	
	| totNom |
	totNom := self methods size.
	self superclassHierarchyGroup
		do: [:aClass | totNom := totNom + aClass methods size].
	^totNom
]

{ #category : #'Famix-Extensions' }
FAMIXType >> numberOfMethodsInHierarchy: aNumber [

	self privateState propertyAt: #numberOfMethodsInHierarchy put: aNumber
]

{ #category : #'Famix-Extensions' }
FAMIXType >> numberOfMethodsInherited [
	<MSEProperty: #numberOfMethodsInherited type: #Number>
	<derived>
	<MSEComment: 'The number of methods in a class inherited from super classes'>	

	^self
		lookUpPropertyNamed: #numberOfMethodsInherited
		computedAs: [self inheritedMethods size]
]

{ #category : #'Famix-Extensions' }
FAMIXType >> numberOfMethodsInherited: aNumber [

	self privateState propertyAt: #numberOfMethodsInherited put: aNumber
]

{ #category : #'Famix-Extensions' }
FAMIXType >> numberOfMethodsOverriden [
	<MSEProperty: #numberOfMethodsOverriden type: #Number>
	<derived>
	<MSEComment: 'The number of methods in a class overriden with respect to super classes'>
			
	^self
		lookUpPropertyNamed: #numberOfMethodsOverriden
		computedAs: [self numberOfMethods - self numberOfMethodsAdded]
]

{ #category : #'Famix-Extensions' }
FAMIXType >> numberOfMethodsOverriden: aNumber [

	self privateState propertyAt: #numberOfMethodsOverriden put: aNumber
]

{ #category : #'Famix-Extensions' }
FAMIXType >> numberOfParents [
	<MSEProperty: #numberOfParents type: #Number>
	<derived>
	<MSEComment: 'The number of superclasses'>
			
	^self
		lookUpPropertyNamed: #numberOfParents
		computedAs: [self directSuperclasses size]
]

{ #category : #'Famix-Extensions' }
FAMIXType >> numberOfParents: aNumber [

	self privateState propertyAt: #numberOfParents put: aNumber
]

{ #category : #'Famix-Extensions' }
FAMIXType >> numberOfPrivateAttributes [
	<MSEProperty: #numberOfPrivateAttributes type: #Number>
	<derived>
	<MSEComment: 'The number of private attributes in a class'>
	
	^self
		lookUpPropertyNamed: #numberOfPrivateAttributes
		computedAs: [(self attributes select: [:each | each isPrivate]) size]
]

{ #category : #'Famix-Extensions' }
FAMIXType >> numberOfPrivateAttributes: aNumber [

	self privateState propertyAt: #numberOfPrivateAttributes put: aNumber
]

{ #category : #'Famix-Extensions' }
FAMIXType >> numberOfPrivateMethods [
	<MSEProperty: #numberOfPrivateMethods type: #Number>
	<derived>
	<MSEComment: 'The number of private methods in a class'>
			
	^self
		lookUpPropertyNamed: #numberOfPrivateMethods
		computedAs: [(self methods select: [:each | each isPrivate]) size]
]

{ #category : #'Famix-Extensions' }
FAMIXType >> numberOfPrivateMethods: aNumber [

	self privateState propertyAt: #numberOfPrivateMethods put: aNumber
]

{ #category : #'Famix-Extensions' }
FAMIXType >> numberOfProtectedAttributes [
	<MSEProperty: #numberOfProtectedAttributes type: #Number>
	<derived>
	<MSEComment: 'The number of protected attributes in a class'>				
	
	^self
		lookUpPropertyNamed: #numberOfProtectedAttributes
		computedAs: [(self attributes select: [:each | each isProtected]) size]
]

{ #category : #'Famix-Extensions' }
FAMIXType >> numberOfProtectedAttributes: aNumber [

	self privateState propertyAt: #numberOfProtectedAttributes put: aNumber
]

{ #category : #'Famix-Extensions' }
FAMIXType >> numberOfProtectedMethods [
	<MSEProperty: #numberOfProtectedMethods type: #Number>
	<derived>
	<MSEComment: 'The number of protected methods in a class'>		
	
	^self
		lookUpPropertyNamed: #numberOfProtectedMethods
		computedAs: [(self methods select: [:each | each isProtected]) size]
]

{ #category : #'Famix-Extensions' }
FAMIXType >> numberOfProtectedMethods: aNumber [

	self privateState propertyAt: #numberOfProtectedMethods put: aNumber
]

{ #category : #'Famix-Extensions' }
FAMIXType >> numberOfPublicAttributes [
	<MSEProperty: #numberOfPublicAttributes type: #Number>
	<derived>
	<MSEComment: 'The number of public attributes in a class'>
	
	^self
		lookUpPropertyNamed: #numberOfPublicAttributes
		computedAs: [(self attributes select: [:each | each isPublic]) size]
]

{ #category : #'Famix-Extensions' }
FAMIXType >> numberOfPublicAttributes: aNumber [

	self privateState propertyAt: #numberOfPublicAttributes put: aNumber
]

{ #category : #'Famix-Extensions' }
FAMIXType >> numberOfPublicMethods [
	<MSEProperty: #numberOfPublicMethods type: #Number>
	<derived>
	<MSEComment: 'The number of public methods in a class'>		
		
	^self
		lookUpPropertyNamed: #numberOfPublicMethods
		computedAs: [(self methods select: [:each | each isPublic]) size]
]

{ #category : #'Famix-Extensions' }
FAMIXType >> numberOfPublicMethods: aNumber [

	self privateState propertyAt: #numberOfPublicMethods put: aNumber
]

{ #category : #'Famix-Extensions' }
FAMIXType >> numberOfRevealedAttributes [
	<MSEProperty: #numberOfRevealedAttributes type: #Number>
	<derived>
	<MSEComment: 'The number of public attributes plus the number of accessor methods'>		

	^self
		lookUpPropertyNamed: #numberOfRevealedAttributes
		computedAs:
			[self numberOfPublicAttributes + self numberOfAccessorMethods]
]

{ #category : #'Famix-Extensions' }
FAMIXType >> numberOfRevealedAttributes: aNumber [

	self privateState propertyAt: #numberOfRevealedAttributes put: aNumber
]

{ #category : #'Famix-Extensions' }
FAMIXType >> numberOfStatements [
	<MSEProperty: #numberOfStatements type: #Number>
	<derived>
	<MSEComment: 'The number of statements in a class'>
			
	^self
		lookUpPropertyNamed: #numberOfStatements
		computedAs: [self methodsGroup sumNumbers: #numberOfStatements]
]

{ #category : #'Famix-Extensions' }
FAMIXType >> numberOfStatements: aNumber [

	self privateState propertyAt: #numberOfStatements put: aNumber
]

{ #category : #'Famix-Extensions' }
FAMIXType >> numberOfSubclasses [
	<MSEProperty: #numberOfSubclasses type: #Number>
	<derived>
	<MSEComment: 'The number of subclasses of a class'>
	^ self lookUpPropertyNamed: #numberOfSubclasses computedAs: [ self subInheritances size ]
]

{ #category : #'Famix-Extensions' }
FAMIXType >> numberOfSubclasses: aNumber [

	self privateState propertyAt: #numberOfSubclasses put: aNumber
]

{ #category : #'Famix-Extensions-navigation' }
FAMIXType >> outgoingInvocations [
	^ self methods flatCollect: [ :each | each outgoingInvocations ]
]

{ #category : #'Famix-Extensions-navigation' }
FAMIXType >> outgoingInvocationsGroup [
	<navigation: 'Outgoing invocations'>
	^ self privateState cacheAt:
		#outgoingInvocationsGroup
		ifAbsentPut:
			[MooseGroup
				withAll: self outgoingInvocations
				withDescription: 'Outgoing invocations from ' , self mooseName]
]

{ #category : #'moosechef-scoping-filtering' }
FAMIXType >> packageScope [

	^ self parentPackage
]

{ #category : #'Famix-Implementation' }
FAMIXType >> parentScope [
	"Polymorphic alias to mimic GlobalVariable#parentScope and similar"

	^ self container
]

{ #category : #'Famix-Implementation' }
FAMIXType >> printOn: aStream [ 
	| parent |
	
	self name ifNotNil: [ aStream nextPutAll: self name ].
	parent := self container.
	parent ifNotNil: [ 
		aStream nextPutAll: ' in '.
		parent mooseNameOn: aStream ].
	aStream 
		nextPutAll: ' (';
		nextPutAll: (self class name removePrefix: 'FAMIX');
		nextPutAll: ')'
]

{ #category : #'Famix-Extensions-nav All Dependencies' }
FAMIXType >> providerClasses [
	self deprecated: 'use providerTypes'.
	^ self providerTypes
]

{ #category : #'Famix-Extensions-nav All Dependencies' }
FAMIXType >> providerNamespaces [
	"returns a set of all the namespaces that the receiver depends on (they include some classes that the receiver inherites, staticly accesses, or uses some of their methods)"

	"Moose cook was: ^ self inheritedNamespaces union: self invokedNamespaces"

	^ (self queryAllOutgoing atScope: FAMIXNamespace) withoutSelfLoops
]

{ #category : #'Famix-Extensions-nav All Dependencies' }
FAMIXType >> providerPackages [
	"returns a set of all the packages that the receiver depends on (they include some classes that the receiver inherites, staticly accesses, or uses some of their methods)"

	"Moose cook was: ^ self inheritedPackages union: self invokedPackages"

	^ (self queryAllOutgoing atScope: FAMIXPackage) withoutSelfLoops
]

{ #category : #'Famix-Extensions-nav All Dependencies' }
FAMIXType >> providerTypes [
	<MSEProperty: #providerTypes type: #FAMIXType>
	<derived>
	<multivalued>
	<MSEComment: 'All types that the receiver depends on (inherites, staticly accesses, or uses some of their methods)'>
	^ (self queryAllOutgoing atScope: FAMIXType) withoutSelfLoops
]

{ #category : #'Famix-Implementation' }
FAMIXType >> realType [
	"All types except the alias ones are real"
	^ self 
]

{ #category : #'Famix-Implementation' }
FAMIXType >> subclassHierarchy [
	| subclasses |
	subclasses := OrderedCollection new.
	self allSubclassesDo: [:each | subclasses add: each].
	^ subclasses
]

{ #category : #'Famix-Extensions' }
FAMIXType >> subclassHierarchyDepth [ 
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

{ #category : #'Famix-Extensions' }
FAMIXType >> subclassHierarchyDepth: aNumber [

	self privateState propertyAt: #subclassHierarchyDepth put: aNumber
]

{ #category : #'Famix-Implementation' }
FAMIXType >> subclassHierarchyGroup [
	<navigation: 'All subclasses'>
	^ MooseGroup
		withAll: self subclassHierarchy asSet
		withDescription: 'All subclasses of ' , self mooseName
]

{ #category : #'Famix-Smalltalk' }
FAMIXType >> superclass [
	^self anySuperclass
]

{ #category : #'Famix-Implementation' }
FAMIXType >> superclassHierarchy [
	| superclasses |
	superclasses := OrderedCollection new.
	self allSuperclassesDo: [:each |  superclasses add: each].
	^ superclasses
]

{ #category : #'Famix-Implementation' }
FAMIXType >> superclassHierarchyGroup [
	<navigation: 'All superclasses'>
	^ MooseGroup
		withAll: self superclassHierarchy asSet
		withDescription: 'All superclasses of ' , self mooseName
]

{ #category : #'Famix-Extensions' }
FAMIXType >> tightClassCohesion [
	<MSEProperty: #tightClassCohesion type: #Number>
	<derived>
	<MSEComment: 'Tight class cohesion of a class'>
	self flag: #TODO.
	^ self
		lookUpPropertyNamed: #tightClassCohesion
		computedAs: [ 
			| tcc accessDictionary nom |
			tcc := 0.
			accessDictionary := Dictionary new.
			self
				methodsDo: [ :eachMethod | 
					eachMethod accesses
						do: [ :eachAccess | 
							| var |
							var := eachAccess variable.
							var isAttribute
								ifTrue: [ 
									| varName accessedFrom |
									varName := var name.
									accessedFrom := accessDictionary at: varName ifAbsent: [  ].
									accessedFrom isNil
										ifTrue: [ 
											accessedFrom := Set new.
											accessDictionary at: varName put: accessedFrom ].
									accessedFrom add: eachMethod name ] ] ].
			accessDictionary values
				do: [ :each | 
					| size |
					size := each size.
					tcc := tcc + (size * (size - 1) / 2) ].
			nom := self numberOfMethods.
			tcc := (nom = 0 or: [ nom = 1 ])
				ifFalse: [ tcc / (nom * (nom - 1) / 2) ]
				ifTrue: [ 0 ].
			tcc asFloat ]
]

{ #category : #'Famix-Extensions' }
FAMIXType >> tightClassCohesion: aNumber [

	self privateState propertyAt: #tightClassCohesion put: aNumber
]

{ #category : #'Famix-Extensions' }
FAMIXType >> totalNumberOfChildren [
	<MSEProperty: #totalNumberOfChildren type: #Number>
	<derived>	
	<MSEComment: 'The total number of subclasses of a class'>
	
	^self
		lookUpPropertyNamed: #totalNumberOfChildren
		computedAs: [self subclassHierarchyGroup size]
]

{ #category : #'Famix-Extensions' }
FAMIXType >> totalNumberOfChildren: aNumber [

	self privateState propertyAt: #totalNumberOfChildren put: aNumber
]

{ #category : #'moosechef-scoping-filtering' }
FAMIXType >> typeScope [
	"all types are not classes. Redefined in FamixClass"

	^ self
]

{ #category : #'Famix-Implementation' }
FAMIXType >> understands: signature [
	"returns true if a class is able to respond to an invocation to aSignature on itself; false otherwise"

	self withSuperclassesDo: [:each | 
		(each implements: signature) ifTrue: [^true]].
	^false
]

{ #category : #'Famix-Extensions' }
FAMIXType >> weightOfAClass [
	<MSEProperty: #weightOfAClass type: #Number>
	<derived>
	<MSEComment: 'Weight of a class'>	
			
	^self
		lookUpPropertyNamed: #weightOfAClass
		computedAs: [self notExistentMetricValue]
]

{ #category : #'Famix-Extensions' }
FAMIXType >> weightOfAClass: aNumber [

	self privateState propertyAt: #weightOfAClass put: aNumber
]

{ #category : #'Famix-Extensions' }
FAMIXType >> weightedMethodCount [
	<MSEProperty: #weightedMethodCount type: #Number>
	<derived>
	<MSEComment: 'The sum of the complexity in a class'>
			
	^self
		lookUpPropertyNamed: #weightedMethodCount
		computedAs: [self methodsGroup sumNumbers: #cyclomaticComplexity]
]

{ #category : #'Famix-Extensions' }
FAMIXType >> weightedMethodCount: aNumber [

	self privateState propertyAt: #weightedMethodCount put: aNumber
]

{ #category : #'Famix-Implementation' }
FAMIXType >> withSubclassHierarchy [
	^ self subclassHierarchy 
		addFirst: self realType;
		addAll: self realType allTypeAliases;
		yourself
]

{ #category : #'Famix-Implementation' }
FAMIXType >> withSubclassHierarchyGroup [
	<navigation: 'With all subclasses'>
	^ MooseGroup
		withAll: (self subclassHierarchy asSet; addFirst: self; yourself)
		withDescription: 'With all subclasses of ' , self mooseName
]

{ #category : #'Famix-Implementation' }
FAMIXType >> withSubclassesDo: aBlock [
	aBlock value: self.
	self allSubclassesDo: aBlock
]

{ #category : #'Famix-Implementation' }
FAMIXType >> withSuperclassHierarchy [
	^ self realType superclassHierarchy 
		addFirst: self realType; 
		addAll: self realType allTypeAliases;
		yourself
]

{ #category : #'Famix-Implementation' }
FAMIXType >> withSuperclassHierarchyGroup [
	<navigation: 'With all superclasses'>
	^ MooseGroup
		withAll: self withSuperclassHierarchy asSet
		withDescription: 'With all superclasses of ' , self mooseName
]

{ #category : #'Famix-Implementation' }
FAMIXType >> withSuperclassesDo: aBlock [
	aBlock value: self.
	self allSuperclassesDo: aBlock
]
