Class {
	#name : #FmxNGType,
	#superclass : #FmxNGTypeGenerated,
	#category : #'FmxNGCompatibility-Entities-Entities'
}

{ #category : #meta }
FmxNGType class >> annotation [

	<MSEClass: #Type super: #FmxNGTypeGenerated>
	<package: #'FmxNGCompatibility-Generated'>
	^self
]

{ #category : #'Moose-RoassalPaintings' }
FmxNGType >> abstractMethods [
	"Used for the class blueprint
	Alexandre.Bergel 3/28/2009 12:10"
	^ self methods select: #isAbstract
]

{ #category : #'Moose-RoassalPaintings' }
FmxNGType >> abstractMethodsGroup [
	<navigation: 'Abstract methods'>
	
	^ FAMIXMethodGroup 	withAll: (self abstractMethods)
							withDescription: 'Abstract methods in ', self name
]

{ #category : #'Famix-Extensions' }
FmxNGType >> accept: aVisitor [

	aVisitor visitType: self
]

{ #category : #'Famix-Extensions' }
FmxNGType >> accessTo: aFAMIXPackageOrFAMIXClass [ 

	|accesses|
	accesses := self methods flatCollect:[:each | each accesses].
	^ accesses 
		selectAsSet: [:access | (access variable isKindOf: #FmxNGAttribute) 
								and:[aFAMIXPackageOrFAMIXClass isAccessedBy: access]].
]

{ #category : #'Moose-RoassalPaintings' }
FmxNGType >> accessorMethods [
	
	^ self methods select: #isPureAccessor
]

{ #category : #'Moose-RoassalPaintings' }
FmxNGType >> accessorMethodsGroup [
	<navigation: 'Accessor methods'>
	
	^ FAMIXMethodGroup 	withAll: (self accessorMethods)
							withDescription: 'Pure accessors in ', self name
]

{ #category : #accessing }
FmxNGType >> addAttribute: anAttribute [
	attributes add: anAttribute
]

{ #category : #accessing }
FmxNGType >> addBehaviourWithDeclaredType: aBehaviour [
	self structuresWithDeclaredType add: aBehaviour
]

{ #category : #'Moose-Finder' }
FmxNGType >> addBlueprintLegendOn: view [

	| lb |
	lb := RTLegendBuilder new.
	lb onDemand.
	lb view: view.

	lb addColoredText: 'Class Blueprint' color: Color black.
	lb addText: 'large box = class'.
	lb addText: 'Each class is composed of 5 part, from left to right'.
	lb addText: '  constructor, public methods, private methods, accessors, variables'.
	lb addLineColor: Color cyan text: 'variable access'.
	lb addLineColor: Color gray text: 'method invocation'.
	lb addColor: Color red text: 'Setter'.
	lb addColor: Color orange text: 'Getter'.
	lb addColor: Color cyan text: 'Abstract'.
	lb addColor: Color brown text: 'Overriding'.
	lb addColor: Color gray text: 'Constant'.
	lb build.
]

{ #category : #accessing }
FmxNGType >> addIncomingReference: aReference [ 
	incomingReferences add: aReference
]

{ #category : #accessing }
FmxNGType >> addMethod: aMethod [
	methods add: aMethod
]

{ #category : #accessing }
FmxNGType >> addOutgoingTraitUsage: aTraitUsage [
	self outgoingTraitUsages add: aTraitUsage
]

{ #category : #accessing }
FmxNGType >> addStructureWithDeclaredType: aStructuralEntity [
	structuresWithDeclaredType add: aStructuralEntity
]

{ #category : #accessing }
FmxNGType >> addSubInheritance: anInheritance [ 
	subInheritances add: anInheritance
]

{ #category : #accessing }
FmxNGType >> addSuperInheritance: anInheritance [ 
	superInheritances add: anInheritance
]

{ #category : #accessing }
FmxNGType >> addTraitUsage: aTraitUsage [
	
]

{ #category : #'Famix-Implementation' }
FmxNGType >> addedMethods [
	| inheritedMethodNames |
	inheritedMethodNames := self inheritedMethods
		collect: [:each | each signature].
	^self methods
		reject: [:each | inheritedMethodNames includes: each signature]
]

{ #category : #'Famix-Extensions' }
FmxNGType >> allAnnotationInstances [
	| result |
	result := OrderedCollection new.
	result addAll: self annotationInstances.
	result addAll: (self methods flatCollect: [ :each | each annotationInstances ]).
	^ result 
]

{ #category : #'Famix-Extensions' }
FmxNGType >> allAnnotationTypes [
	^ self allAnnotationInstances collectAsSet: #annotationType
]

{ #category : #accessing }
FmxNGType >> allRecursiveTypes [
	"Retrieves all nested types recursively (including directly nested types and those nested in methods)"
	
	| result |
	result := Set new.
	self allRecursiveTypesDo: [:each | result add: each ].
	^ result
]

{ #category : #accessing }
FmxNGType >> allRecursiveTypesDo: aBlock [
	"Traverses all nested types recursively (including directly nested types and those nested in methods)"

	self types do: [ :each | 
		aBlock value: each.
		each allRecursiveTypesDo: aBlock ].
	self methods do: [ :each | each allRecursiveTypesDo: aBlock ]
]

{ #category : #'Famix-Implementation' }
FmxNGType >> allSubclassesDo: aBlock [
	self allSubclassesWithoutAliasesDo: aBlock.
	self typeAliases do: [ :each | each allSubclassesWithoutAliasesDo: aBlock ]
]

{ #category : #'Famix-Implementation' }
FmxNGType >> allSubclassesWithoutAliasesDo: aBlock [
	self subInheritances do: [ :each | aBlock value: each subclass ].
	self subInheritances do: [ :each | each subclass allSubclassesDo: aBlock ]
]

{ #category : #'Famix-Implementation' }
FmxNGType >> allSuperclassesDo: aBlock [
	self allSuperclassesWithoutAliasesDo: aBlock.
	self mooseModel sourceLanguage isC
		ifTrue: [ self typeAliases do: [ :each | each allSuperclassesWithoutAliasesDo: aBlock ] ]
]

{ #category : #'Famix-Implementation' }
FmxNGType >> allSuperclassesWithoutAliasesDo: aBlock [
	superInheritances do: [:each | aBlock value: each superclass].
	superInheritances do: [:each | each superclass allSuperclassesDo: aBlock]
]

{ #category : #'Famix-Implementation' }
FmxNGType >> allTypeAliases [
	| all |
	all := OrderedCollection withAll: self typeAliases.
	self typeAliases do: [:each | all addAll: each allTypeAliases ].
	^ all
]

{ #category : #'Famix-Implementation' }
FmxNGType >> anySuperclass [
	"Mircea: this used to return interfaces too. fixed now. 
	also added superclass that does the same thing"

	self
		allSuperclassesDo: [ :each | 
			each isInterface
				ifFalse: [ ^ each ] ].
	^ nil
]

{ #category : #'Famix-Java' }
FmxNGType >> argumentsInParameterizedTypes [
	<MSEProperty: #argumentsInParameterizedTypes type: #FmxNGParameterizedType opposite: #arguments>
	<multivalued> <derived>
	<MSEComment: 'Arguments of parameterized types that point to this type.'>
	
	^ self privateState 
		attributeAt: #argumentsInParameterizedTypes 
		ifAbsentPut: [
			FMMultiMultivalueLink on: self opposite: #arguments ]
]

{ #category : #'Famix-Java' }
FmxNGType >> argumentsInParameterizedTypes: aCollection [
	^ self argumentsInParameterizedTypes value: aCollection
]

{ #category : #accessing }
FmxNGType >> belongsTo [
	^ self container ifNil: [ self parentPackage ]
]

{ #category : #accessing }
FmxNGType >> belongsTo: aContainer [
	self container: aContainer 
]

{ #category : #'Famix-Smalltalk' }
FmxNGType >> classSide [
	^self isClassSide
		ifFalse:
			[self mooseModel allClasses
				entityNamed: (self mooseName , '_class') asSymbol]
		ifTrue: [self]
]

{ #category : #'Famix-Extensions' }
FmxNGType >> clientNamespaces [
	"returns a set of all the namespaces that depend on (some classes of them inherit, staticly access, or use some methods of) the receiver"

	"Moose cook was: ^ self inheritedByNamespaces union: self invokingNamespaces"

	^ (self queryAllIncoming atScope: FmxNGNamespace) withoutSelfLoops
]

{ #category : #'Famix-Extensions' }
FmxNGType >> clientPackages [
	"returns a set of all the packages that depend on (some classes of them inherit, staticly access, or use some methods of) the receiver"

	"Moose cook was: ^ self inheritedByPackages union: self invokingPackages"

	^ (self queryAllIncoming atScope: FmxNGPackage) withoutSelfLoops
]

{ #category : #'Famix-Extensions' }
FmxNGType >> clientTypes [
	<MSEProperty: #clientTypes type: #FmxNGType>
	<multivalued>
	<derived>
	<MSEComment: 'All types that depend on (inherit, staticly access, or use some methods of) the receiver'>
	^ (self queryAllIncoming atScope: FmxNGType) withoutSelfLoops
]

{ #category : #'Moose-RoassalPaintings' }
FmxNGType >> constantMethods [
	"Used for the class blueprint
	Alexandre.Bergel 3/28/2009 12:10"
	^ self methods select: #isConstant
]

{ #category : #'Moose-RoassalPaintings' }
FmxNGType >> constructors [
	"Used for the class blueprint
	Alexandre.Bergel 3/28/2009 12:10"
	^ self methods select: #isConstructor
]

{ #category : #accessing }
FmxNGType >> container [

	^ self typeContainer
]

{ #category : #accessing }
FmxNGType >> container: aContainerEntity [

	^ self typeContainer: aContainerEntity
]

{ #category : #'Famix-Extensions' }
FmxNGType >> copyFrom: anEntity within: aVisitor [

	super copyFrom: anEntity within: aVisitor.

	anEntity superInheritances do: [:inh|
		aVisitor visit: inh ].
	anEntity attributes do: [:a |
		self addAttribute: (aVisitor visit: a) ].
	anEntity methods do: [:m|
		self addMethod: (aVisitor visit: m) ].

]

{ #category : #'Moose-SmalltalkImporter' }
FmxNGType >> createReferenceFrom: aBehaviouralEntity [
	^ FmxNGReference source: aBehaviouralEntity target: self
]

{ #category : #'Famix-Implementation' }
FmxNGType >> directSubclasses [
	"returns a collection with all subclasses of this class"

	^ self subInheritances collect: [:each | each subclass]
]

{ #category : #'Famix-Implementation' }
FmxNGType >> directSuperclasses [
	"returns a collection with all superclasses of this class"

	^ self superInheritances collect: [:each | each superclass]
]

{ #category : #'Famix-Smalltalk' }
FmxNGType >> extendedInPackages [

	^ self privateState cacheAt: #extendedInPackages
							ifAbsentPut: [ self extendedMethods collectAsSet: [ :m| m packageScope ] ]


]

{ #category : #'Famix-Smalltalk' }
FmxNGType >> extendedMethods [
	"select methods which are class extensions in this class"

	^  self privateState cacheAt: #extendedMethods
							ifAbsentPut: [ self methods select: [ :m| m isExtension ] ]
]

{ #category : #'Moose-RoassalPaintings' }
FmxNGType >> externalFanin [

	^ self clientClassesOutOfMyPackage size
]

{ #category : #'Moose-RoassalPaintings' }
FmxNGType >> externalFanout [

	^ self providerClassesOutOfMyPackage size
]

{ #category : #'Famix-Extensions' }
FmxNGType >> fanIn [
	<MSEProperty: #fanIn type: #Number>
	<derived>
	<MSEComment: 'Number of client classes'>

	^self
		lookUpPropertyNamed: #fanIn
		computedAs: [self clientTypes size]
]

{ #category : #'Famix-Extensions' }
FmxNGType >> fanIn: aNumber [

	self privateState propertyAt: #fanIn put: aNumber
]

{ #category : #'Famix-Extensions' }
FmxNGType >> fanOut [
	<MSEProperty: #fanOut type: #Number>
	<derived>
	<MSEComment: 'Number of provider classes'>

	^self
		lookUpPropertyNamed: #fanOut
		computedAs: [self providerTypes size]
]

{ #category : #'Famix-Extensions' }
FmxNGType >> fanOut: aNumber [

	self privateState propertyAt: #fanOut put: aNumber
]

{ #category : #'Moose-RoassalPaintings' }
FmxNGType >> fanRatio [

	^ self fanIn / (self fanIn + self fanOut)
]

{ #category : #'Moose-RoassalPaintings' }
FmxNGType >> fanTotal [

	^ self fanIn + self fanOut
]

{ #category : #'Moose-RoassalPaintings' }
FmxNGType >> fanType [

	^ self externalFanin >= self internalFanin
			ifTrue: [
				self externalFanout >= self internalFanout
					ifTrue: [#eFieFo]
					ifFalse: [#eFiiFo]]
			ifFalse: [
				self externalFanout >= self internalFanout
					ifTrue: [#iFieFo]
					ifFalse: [#iFiiFo]]
]

{ #category : #'Moose-RoassalPaintings' }
FmxNGType >> faninBalance [

	| fanin |
	fanin := self fanIn.
	^ fanin = 0 	ifTrue: [0]
					ifFalse: [(self externalFanin - self internalFanin) / self fanIn]
]

{ #category : #'Moose-RoassalPaintings' }
FmxNGType >> fanoutBalance [

	^ (self externalFanout - self internalFanout) / self fanOut
]

{ #category : #'Moose-RoassalPaintings' }
FmxNGType >> getterMethods [
	"Used for the class blueprint
	Alexandre.Bergel 3/28/2009 12:10"
	^ self methods select: #isGetter
]

{ #category : #'Famix-Extensions' }
FmxNGType >> hasMethodWithSignature: aStringOrSymbol [
	| symbol |
	symbol := aStringOrSymbol asSymbol.
	^self methods anySatisfy: [:each | each signature asSymbol = symbol]
]

{ #category : #'Famix-Extensions' }
FmxNGType >> hasMethodsAnnotatedWith: aString [
	^ self methods anySatisfy: [ :each | each isAnnotatedWith: aString ]
]

{ #category : #'Famix-Extensions' }
FmxNGType >> hierarchyNestingLevel [
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
FmxNGType >> hierarchyNestingLevel: aNumber [

	self privateState propertyAt: #hierarchyNestingLevel put: aNumber
]

{ #category : #'Moose-RoassalPaintings' }
FmxNGType >> implementationMethods [
	^ self methods select: #isInternalImplementation
]

{ #category : #'Famix-Implementation' }
FmxNGType >> implementationOf: signature [
	self withSuperclassesDo: [ :class | | found |
			found := class methods
				detect: [ :method | method signature = signature ]
				ifNone: [ nil ].
			found ifNotNil: [ ^found ] ].
	^ nil
]

{ #category : #'Famix-Java' }
FmxNGType >> implementedInterfaces [

	^ self directSuperclasses select: #isInterface
]

{ #category : #'Famix-Implementation' }
FmxNGType >> implements: aString [
	^ self methods
		anySatisfy: [ :each | aString = each signature	 "was changed from match: for performances and because signature is case sensitive" ]
]

{ #category : #'Famix-Extensions' }
FmxNGType >> incomingAccesses [
	^ self privateState 
		cacheAt: #incomingAccesses
		ifAbsentPut: [ attributes flatCollect: [ :each | each incomingAccesses ] ]
]

{ #category : #'Famix-Extensions' }
FmxNGType >> incomingAccessesGroup [
	<navigation: 'Incoming accesses'>
	^ self privateState cacheAt:
		 #incomingAccessesGroup
		ifAbsentPut:
			[MooseGroup
				withAll: self incomingAccesses
				withDescription: 'Incoming accesses to ' , self mooseName]
]

{ #category : #'Famix-Implementation' }
FmxNGType >> inheritedAttributes [
	| inheritedAttrs |
	inheritedAttrs := OrderedCollection new.
	self allSuperclassesDo: [:each | 
			each attributes do: [:attr | 
				attr isPrivate not ifTrue: [inheritedAttrs add: attr]]].
	^ inheritedAttrs
]

{ #category : #'Famix-Implementation' }
FmxNGType >> inheritedMethods [
	| inheritedMethods |
	inheritedMethods := OrderedCollection new.
	self allSuperclassesDo: [:each | 
			each methodsDo: [:method | 
				method isPrivate not ifTrue: [inheritedMethods add: method]]].
	^inheritedMethods
]

{ #category : #'Famix-Implementation' }
FmxNGType >> inheritedSignatures [
	| inheritedSignatures |
	inheritedSignatures := Set new.
	self superclassHierarchy do: [:each | 
			each methodsDo: [:method | 
				method isPrivate not ifTrue: [inheritedSignatures add: method signature]]].
	^ inheritedSignatures
]

{ #category : #'Famix-Implementation' }
FmxNGType >> inheritedSignaturesToMethod [
	| inheritedSignaturesToMethod |
	inheritedSignaturesToMethod := Dictionary new.
	self allSuperclassesDo: [:each | 
			each methodsDo: [:method | 
				method isPrivate ifFalse: [
					inheritedSignaturesToMethod at: method signature ifAbsentPut: [method]]]].
	^ inheritedSignaturesToMethod
]

{ #category : #'Famix-Implementation' }
FmxNGType >> inheritsFrom: aClass [
	self allSuperclassesDo: [:each | each = aClass ifTrue: [^true]].
	^ false
]

{ #category : #'Moose-RoassalPaintings' }
FmxNGType >> initializers [

	^ self methods select: #isInitializer
]

{ #category : #'Famix-Smalltalk' }
FmxNGType >> instanceSide [
	^self isClassSide
		ifTrue:
			[self mooseModel allClasses
				entityNamed: (self mooseName removeSuffix: '_class') asSymbol]
		ifFalse: [self]
]

{ #category : #'Moose-RoassalPaintings' }
FmxNGType >> interfaceMethods [
	^ self methods select: [:each | each isInternalImplementation not & each isInitializer not & each isPureAccessor not]
]

{ #category : #'Moose-RoassalPaintings' }
FmxNGType >> internalFanin [

	^ self clientClassesIntoMyPackage size
]

{ #category : #'Moose-RoassalPaintings' }
FmxNGType >> internalFanout [

	^ self providerClassesIntoMyPackage size
]

{ #category : #'Moose-RoassalPaintings' }
FmxNGType >> internalInvocations [

	^ self outgoingInvocationsGroup select: [:each | 
				each candidates anySatisfy: [:c|
					c belongsTo == self ]].

]

{ #category : #'Moose-RoassalPaintings' }
FmxNGType >> internalLayerInvocations [

	^ self outgoingInvocationsGroup select: [:each | 
			each sender isInternalImplementation and: [ "internal sender"
				each candidates anySatisfy: [:cand|
					cand belongsTo == self and: [ "class candidate"
						each sender ~= cand and: [ "no recursive call"
							cand isInternalImplementation ]]]]] "internal candidate"

]

{ #category : #'Famix-Extensions' }
FmxNGType >> isAbstract [
	<MSEProperty: #isAbstract type: #Boolean> <derived>
	<MSEComment: 'Flag true for abstract classes.'>
	
	^super isAbstract
]

{ #category : #'Famix-Java' }
FmxNGType >> isAnonymousClass [
	^  self container notNil and: [
			self container isMethod or: [
				self name isAllDigits or: [
					'*_anonymous_*' match: self name ]] ]
]

{ #category : #'Famix-Extensions' }
FmxNGType >> isBrainClass [
	^ (self propertyNamed: #BrainClass) = true
]

{ #category : #'Famix-Smalltalk' }
FmxNGType >> isClassSide [
	"Kind of a hack. Uses the FAMIX2 Smalltalk naming convention that every Smalltalk
	 metaclass has _class appended to the classname of the class it is a metaclass of."

	^'*_class' match: self name
]

{ #category : #'Famix-Extensions' }
FmxNGType >> isDataClass [
	^ (self propertyNamed: #DataClass) = true
]

{ #category : #'Famix-Smalltalk' }
FmxNGType >> isExtended [

	^ self methods anySatisfy: [ :m| m isExtension ]
]

{ #category : #'Famix-Extensions' }
FmxNGType >> isGodClass [
	^ (self propertyNamed: #GodClass) = true
]

{ #category : #'Famix-Extensions' }
FmxNGType >> isHierarchyRoot [
	^self superclassHierarchyGroup 
		allSatisfy: [:each | each isNil or: [each isStub] ]
]

{ #category : #'Famix-Extensions' }
FmxNGType >> isHierarchyRootWithin: aClassGroup [
	^(self superclassHierarchyGroup intersection: aClassGroup) isEmpty
]

{ #category : #'Famix-Java' }
FmxNGType >> isInnerClass [
	<MSEProperty: #isInnerClass type: #Boolean>
	<derived>
	<MSEComment:
		'True if the method is considered as an innerclass (i.e. is contained elsewhere than a java package: class, method, enum,...)'>
	^ self container ifNotNil: [ :c | c isNamespace not ] ifNil: [ false ]
]

{ #category : #'Famix-Smalltalk' }
FmxNGType >> isInstanceSide [
	^self isClassSide not
]

{ #category : #'Famix-Extensions' }
FmxNGType >> isInterface [
	^ false
]

{ #category : #'Famix-Java' }
FmxNGType >> isJUnit3TestCase [
	^ self superclassHierarchy anySatisfy: [:each | each mooseName =  #'junit::framework::TestCase']
]

{ #category : #'Famix-Java' }
FmxNGType >> isJUnit4TestCase [
	<MSEProperty: #isJUnit4TestCase type: #Boolean>
	<derived>
	<MSEComment: 'True if the method is considered as a Junit 4 Java test'>
	^ self methods anySatisfy: [ :m | m isJUnit4Test ]
]

{ #category : #'Famix-Extensions' }
FmxNGType >> isLonelyWithin: aClassGroup [
	^ ( self subclassHierarchyGroup intersection: aClassGroup ) isEmpty and: [
		( self superclassHierarchyGroup intersection: aClassGroup ) isEmpty ]
]

{ #category : #'Famix-Java' }
FmxNGType >> isParameterType [
	^ false
]

{ #category : #'Famix-Java' }
FmxNGType >> isParameterizedType [
	^ false
]

{ #category : #'Famix-Smalltalk' }
FmxNGType >> isSUnitTestCase [
	self allSuperclassesDo: [:each | each name = 'TestCase' ifTrue: [^ true] ].
	^ false
]

{ #category : #'Famix-Java' }
FmxNGType >> isTestCase [
	<MSEProperty: #isTestCase type: #Boolean>
	<derived>
	<MSEComment: 'True if the method is considered as a Java test'>
	^ self isJUnit3TestCase or: [ self isJUnit4TestCase ] 
]

{ #category : #'Famix-Implementation' }
FmxNGType >> isType [
	^ true
]

{ #category : #'Famix-Smalltalk' }
FmxNGType >> localMethods [
	"select all locally defined methods"

	^ self privateState cacheAt: #localMethods
							ifAbsentPut: [ self methods reject: [ :m| m isExtension ] ]
]

{ #category : #'Famix-Extensions' }
FmxNGType >> lookUp: aMethodSignature [ 
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

{ #category : #'Famix-Implementation' }
FmxNGType >> methodsDo: aBlock [
	self methods do: aBlock
]

{ #category : #'Famix-Implementation' }
FmxNGType >> methodsGroup [
	<navigation: 'Methods'>
	^MooseGroup
		withAll: self methods
		withDescription: 'Methods from ' , self mooseName
]

{ #category : #'Moose-Finder' }
FmxNGType >> mooseFinderAttributesIn: composite [
	<moosePresentationOrder: 20>
	composite table
			title: 'Attributes';
			titleIcon: MooseIcons famixAttributeGroup;
			display: [ self attributes ];
			column: 'Name' evaluated: #name;
			column: 'Declared type' evaluated: [ :each | each declaredType gtDisplayString ];
			column: 'Modifiers' evaluated: [ '' ] tags: #modifiers;
			when: [ self attributes notEmpty ];
			selectionPopulate: #selection  
				entitled: 'Open declared type' 
				with:  [ :table | table selection declaredType ]
]

{ #category : #'Moose-Finder' }
FmxNGType >> mooseFinderBlueprintIn: composite [
	<moosePresentationOrder: 20>
	composite roassal2 
			title: 'Blueprint';
			titleIcon: MooseIcons mooseBlueprint;
			painting: [ :view :each | 
				view @ RTDraggableView.
				each mooseInterestingEntity viewBlueprintOn: view.
				self addBlueprintLegendOn: view.
 ]
]

{ #category : #'Moose-Finder' }
FmxNGType >> mooseFinderHierarchyIn: composite [
	<moosePresentationOrder: 20>
	composite roassal2
			title: 'Hierarchy';
			titleIcon: MooseIcons mooseSystemComplexity;
			initializeView: [ RTMondrian new ];
			painting: [ :b | self viewHierarchyOn: b ]
]

{ #category : #'Moose-Finder' }
FmxNGType >> mooseFinderMethodsIn: composite [
	<moosePresentationOrder: 20>
	composite table
			title: 'Methods';
			titleIcon: MooseIcons famixMethodGroup;
			display: [ self methods ];
			column: 'Name' evaluated: #signature;
			column: 'Declared type' evaluated: [ :each | each declaredType gtDisplayString ];
			when: [ self methods notEmpty ];
			selectionPopulate: #selection  
				entitled: 'Open declared type' 
				with:  [ :table | table selection declaredType ]
]

{ #category : #'Famix-Implementation' }
FmxNGType >> mooseNameOn: aStream [ 
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

{ #category : #'Famix-Extensions' }
FmxNGType >> numberOfAbstractMethods [
	<MSEProperty: #numberOfAbstractMethods type: #Number>
	<derived>
	<MSEComment: 'The number of abstract methods in the class'>
	
	^self
		lookUpPropertyNamed: #numberOfAbstractMethods
		computedAs: [self methodsGroup count: [:each | each isAbstract]]
]

{ #category : #'Famix-Extensions' }
FmxNGType >> numberOfAbstractMethods: aNumber [

	self privateState propertyAt: #numberOfAbstractMethods put: aNumber
]

{ #category : #'Famix-Extensions' }
FmxNGType >> numberOfAccessesToForeignData [
	<MSEProperty: #numberOfAccessesToForeignData type: #Number>
	<derived>
	<MSEComment: 'Number of accesses to foreign data'>
	
	^self
		lookUpPropertyNamed: #numberOfAccessesToForeignData
		computedAs: [self notExistentMetricValue]
]

{ #category : #'Famix-Extensions' }
FmxNGType >> numberOfAccessesToForeignData: aNumber [

	self privateState propertyAt: #numberOfAccessesToForeignData put: aNumber
]

{ #category : #'Famix-Extensions' }
FmxNGType >> numberOfAccessorMethods [
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
FmxNGType >> numberOfAccessorMethods: aNumber [

	self privateState propertyAt: #numberOfAccessorMethods put: aNumber
]

{ #category : #'Famix-Extensions' }
FmxNGType >> numberOfAnnotationInstances [
	<MSEProperty: #numberOfAnnotationInstances type: #Number>
	<derived>
	<MSEComment: 'The number of annotation instances defined in the class or in any of its methods'>

	^self
		lookUpPropertyNamed: #numberOfAnnotationInstances
		computedAs: [
			self annotationInstances size + (self methods inject: 0 into: [:sum :each | sum + each numberOfAnnotationInstances])]
]

{ #category : #'Famix-Extensions' }
FmxNGType >> numberOfAnnotationInstances: aNumber [

	self privateState propertyAt: #numberOfAnnotationInstances put: aNumber
]

{ #category : #'Famix-Extensions' }
FmxNGType >> numberOfAttributes [
	<MSEProperty: #numberOfAttributes type: #Number>
	<derived>
	<MSEComment: 'The number of attributes in the class'>
	
	^self
		lookUpPropertyNamed: #numberOfAttributes
		computedAs: [self attributes size]
]

{ #category : #'Famix-Extensions' }
FmxNGType >> numberOfAttributes: aNumber [

	self privateState propertyAt: #numberOfAttributes put: aNumber
]

{ #category : #'Famix-Extensions' }
FmxNGType >> numberOfAttributesInherited [
	<MSEProperty: #numberOfAttributesInherited type: #Number>
	<derived>
	<MSEComment: 'The number of attributes in a class inherited from super classes'>	
	
	^self
		lookUpPropertyNamed: #numberOfAttributesInherited
		computedAs: [self inheritedAttributes size]
]

{ #category : #'Famix-Extensions' }
FmxNGType >> numberOfAttributesInherited: aNumber [

	self privateState propertyAt: #numberOfAttributesInherited put: aNumber
]

{ #category : #'Famix-Extensions' }
FmxNGType >> numberOfComments [
	<MSEProperty: #numberOfComments type: #Number>
	<derived>
	<MSEComment: 'The number of comments in a class'>

	^ self lookUpPropertyNamed: #numberOfComments computedAs: [
		self comments size + 
		(self methods asArray inject: 0 into: [:sum : el| 
			el numberOfComments + sum ]) ]
]

{ #category : #'Famix-Extensions' }
FmxNGType >> numberOfComments: aNumber [

	self privateState propertyAt: #numberOfComments put: aNumber
]

{ #category : #'Famix-Extensions' }
FmxNGType >> numberOfConstructorMethods [
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
FmxNGType >> numberOfConstructorMethods: aNumber [

	self privateState propertyAt: #numberOfConstructorMethods put: aNumber
]

{ #category : #'Famix-Extensions' }
FmxNGType >> numberOfDirectSubclasses [
	<MSEProperty: #numberOfDirectSubclasses type: #Number>
	<MSEComment: 'The number of direct subclasses'>
	<derived>

	^ self privateState propertyAt: #numberOfDirectSubclasses ifAbsentPut: [self directSubclasses size]
]

{ #category : #'Famix-Extensions' }
FmxNGType >> numberOfDirectSubclasses: aNumber [

	self privateState propertyAt: #numberOfDirectSubclasses put: aNumber
]

{ #category : #'Famix-Extensions' }
FmxNGType >> numberOfDuplicatedLinesOfCodeInternally [
	<MSEProperty: #numberOfDuplicatedLinesOfCodeInternally type: #Number>
	<derived>
	<MSEComment: 'The number of duplicated lines of code internally'>		

	^self
		lookUpPropertyNamed: #numberOfDuplicatedLinesOfCodeInternally
		computedAs: [self notExistentMetricValue]
]

{ #category : #'Famix-Extensions' }
FmxNGType >> numberOfDuplicatedLinesOfCodeInternally: aNumber [

	self privateState propertyAt: #numberOfDuplicatedLinesOfCodeInternally put: aNumber
]

{ #category : #'Famix-Extensions' }
FmxNGType >> numberOfLinesOfCode [

	<MSEProperty: #numberOfLinesOfCode type: #Number>
	<derived>
	<MSEComment: 'The number of lines of code in a class'>

	^self
		lookUpPropertyNamed: #numberOfLinesOfCode
		computedAs: [self methodsGroup sumNumbers: #numberOfLinesOfCode]
]

{ #category : #'Famix-Extensions' }
FmxNGType >> numberOfLinesOfCode: aNumber [

	self privateState propertyAt: #numberOfLinesOfCode put: aNumber
]

{ #category : #'Famix-Extensions' }
FmxNGType >> numberOfMessageSends [
	<MSEProperty: #numberOfMessageSends type: #Number>
	<derived>
	<MSEComment: 'The number of message sends from a class'>
	
	^self
		lookUpPropertyNamed: #numberOfMessageSends
		computedAs: [self methodsGroup sumNumbers: #numberOfMessageSends]
]

{ #category : #'Famix-Extensions' }
FmxNGType >> numberOfMessageSends: aNumber [

	self privateState propertyAt: #numberOfMessageSends put: aNumber
]

{ #category : #'Famix-Smalltalk' }
FmxNGType >> numberOfMethodProtocols [
	<MSEProperty: #numberOfMethodProtocols type: #Number>
	<derived>
	<MSEComment: 'The number of method protocols in a class'>
	
	^self
		lookUpPropertyNamed: #numberOfMethodProtocols
		computedAs: [((self methods collect: [:each | each category]) reject: #isNil) asSet size]
]

{ #category : #'Famix-Smalltalk' }
FmxNGType >> numberOfMethodProtocols: aNumber [

	self privateState propertyAt: #numberOfMethodProtocols put: aNumber
]

{ #category : #'Famix-Extensions' }
FmxNGType >> numberOfMethods [
	<MSEProperty: #numberOfMethods type: #Number>
	<derived>
	<MSEComment: 'The number of methods in a class'>

	^self
		lookUpPropertyNamed: #numberOfMethods
		computedAs: [self methods size]
]

{ #category : #'Famix-Extensions' }
FmxNGType >> numberOfMethods: aNumber [

	self privateState propertyAt: #numberOfMethods put: aNumber
]

{ #category : #'Famix-Extensions' }
FmxNGType >> numberOfMethodsAdded [
	<MSEProperty: #numberOfMethodsAdded type: #Number>
	<derived>
	<MSEComment: 'The number of methods in a class added with respect to super classes'>	
	
	^self
		lookUpPropertyNamed: #numberOfMethodsAdded
		computedAs: [self addedMethods size]
]

{ #category : #'Famix-Extensions' }
FmxNGType >> numberOfMethodsAdded: aNumber [

	self privateState propertyAt: #numberOfMethodsAdded put: aNumber
]

{ #category : #'Famix-Extensions' }
FmxNGType >> numberOfMethodsInHierarchy [
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
FmxNGType >> numberOfMethodsInHierarchy: aNumber [

	self privateState propertyAt: #numberOfMethodsInHierarchy put: aNumber
]

{ #category : #'Famix-Extensions' }
FmxNGType >> numberOfMethodsInherited [
	<MSEProperty: #numberOfMethodsInherited type: #Number>
	<derived>
	<MSEComment: 'The number of methods in a class inherited from super classes'>	

	^self
		lookUpPropertyNamed: #numberOfMethodsInherited
		computedAs: [self inheritedMethods size]
]

{ #category : #'Famix-Extensions' }
FmxNGType >> numberOfMethodsInherited: aNumber [

	self privateState propertyAt: #numberOfMethodsInherited put: aNumber
]

{ #category : #'Famix-Extensions' }
FmxNGType >> numberOfMethodsOverriden [
	<MSEProperty: #numberOfMethodsOverriden type: #Number>
	<derived>
	<MSEComment: 'The number of methods in a class overriden with respect to super classes'>
			
	^self
		lookUpPropertyNamed: #numberOfMethodsOverriden
		computedAs: [self numberOfMethods - self numberOfMethodsAdded]
]

{ #category : #'Famix-Extensions' }
FmxNGType >> numberOfMethodsOverriden: aNumber [

	self privateState propertyAt: #numberOfMethodsOverriden put: aNumber
]

{ #category : #'Famix-Extensions' }
FmxNGType >> numberOfParents [
	<MSEProperty: #numberOfParents type: #Number>
	<derived>
	<MSEComment: 'The number of superclasses'>
			
	^self
		lookUpPropertyNamed: #numberOfParents
		computedAs: [self directSuperclasses size]
]

{ #category : #'Famix-Extensions' }
FmxNGType >> numberOfParents: aNumber [

	self privateState propertyAt: #numberOfParents put: aNumber
]

{ #category : #'Famix-Extensions' }
FmxNGType >> numberOfPrivateAttributes [
	<MSEProperty: #numberOfPrivateAttributes type: #Number>
	<derived>
	<MSEComment: 'The number of private attributes in a class'>
	
	^self
		lookUpPropertyNamed: #numberOfPrivateAttributes
		computedAs: [(self attributes select: [:each | each isPrivate]) size]
]

{ #category : #'Famix-Extensions' }
FmxNGType >> numberOfPrivateAttributes: aNumber [

	self privateState propertyAt: #numberOfPrivateAttributes put: aNumber
]

{ #category : #'Famix-Extensions' }
FmxNGType >> numberOfPrivateMethods [
	<MSEProperty: #numberOfPrivateMethods type: #Number>
	<derived>
	<MSEComment: 'The number of private methods in a class'>
			
	^self
		lookUpPropertyNamed: #numberOfPrivateMethods
		computedAs: [(self methods select: [:each | each isPrivate]) size]
]

{ #category : #'Famix-Extensions' }
FmxNGType >> numberOfPrivateMethods: aNumber [

	self privateState propertyAt: #numberOfPrivateMethods put: aNumber
]

{ #category : #'Famix-Extensions' }
FmxNGType >> numberOfProtectedAttributes [
	<MSEProperty: #numberOfProtectedAttributes type: #Number>
	<derived>
	<MSEComment: 'The number of protected attributes in a class'>				
	
	^self
		lookUpPropertyNamed: #numberOfProtectedAttributes
		computedAs: [(self attributes select: [:each | each isProtected]) size]
]

{ #category : #'Famix-Extensions' }
FmxNGType >> numberOfProtectedAttributes: aNumber [

	self privateState propertyAt: #numberOfProtectedAttributes put: aNumber
]

{ #category : #'Famix-Extensions' }
FmxNGType >> numberOfProtectedMethods [
	<MSEProperty: #numberOfProtectedMethods type: #Number>
	<derived>
	<MSEComment: 'The number of protected methods in a class'>		
	
	^self
		lookUpPropertyNamed: #numberOfProtectedMethods
		computedAs: [(self methods select: [:each | each isProtected]) size]
]

{ #category : #'Famix-Extensions' }
FmxNGType >> numberOfProtectedMethods: aNumber [

	self privateState propertyAt: #numberOfProtectedMethods put: aNumber
]

{ #category : #'Famix-Extensions' }
FmxNGType >> numberOfPublicAttributes [
	<MSEProperty: #numberOfPublicAttributes type: #Number>
	<derived>
	<MSEComment: 'The number of public attributes in a class'>
	
	^self
		lookUpPropertyNamed: #numberOfPublicAttributes
		computedAs: [(self attributes select: [:each | each isPublic]) size]
]

{ #category : #'Famix-Extensions' }
FmxNGType >> numberOfPublicAttributes: aNumber [

	self privateState propertyAt: #numberOfPublicAttributes put: aNumber
]

{ #category : #'Famix-Extensions' }
FmxNGType >> numberOfPublicMethods [
	<MSEProperty: #numberOfPublicMethods type: #Number>
	<derived>
	<MSEComment: 'The number of public methods in a class'>		
		
	^self
		lookUpPropertyNamed: #numberOfPublicMethods
		computedAs: [(self methods select: [:each | each isPublic]) size]
]

{ #category : #'Famix-Extensions' }
FmxNGType >> numberOfPublicMethods: aNumber [

	self privateState propertyAt: #numberOfPublicMethods put: aNumber
]

{ #category : #'Famix-Extensions' }
FmxNGType >> numberOfRevealedAttributes [
	<MSEProperty: #numberOfRevealedAttributes type: #Number>
	<derived>
	<MSEComment: 'The number of public attributes plus the number of accessor methods'>		

	^self
		lookUpPropertyNamed: #numberOfRevealedAttributes
		computedAs:
			[self numberOfPublicAttributes + self numberOfAccessorMethods]
]

{ #category : #'Famix-Extensions' }
FmxNGType >> numberOfRevealedAttributes: aNumber [

	self privateState propertyAt: #numberOfRevealedAttributes put: aNumber
]

{ #category : #'Famix-Extensions' }
FmxNGType >> numberOfStatements [
	<MSEProperty: #numberOfStatements type: #Number>
	<derived>
	<MSEComment: 'The number of statements in a class'>
			
	^self
		lookUpPropertyNamed: #numberOfStatements
		computedAs: [self methodsGroup sumNumbers: #numberOfStatements]
]

{ #category : #'Famix-Extensions' }
FmxNGType >> numberOfStatements: aNumber [

	self privateState propertyAt: #numberOfStatements put: aNumber
]

{ #category : #'Famix-Extensions' }
FmxNGType >> numberOfSubclasses [
	<MSEProperty: #numberOfSubclasses type: #Number>
	<derived>
	<MSEComment: 'The number of subclasses of a class'>
	^ self lookUpPropertyNamed: #numberOfSubclasses computedAs: [ self subInheritances size ]
]

{ #category : #'Famix-Extensions' }
FmxNGType >> numberOfSubclasses: aNumber [

	self privateState propertyAt: #numberOfSubclasses put: aNumber
]

{ #category : #'Famix-Extensions' }
FmxNGType >> outgoingInvocations [
	^ self methods flatCollect: [ :each | each outgoingInvocations ]
]

{ #category : #'Famix-Extensions' }
FmxNGType >> outgoingInvocationsGroup [
	<navigation: 'Outgoing invocations'>
	^ self privateState cacheAt:
		#outgoingInvocationsGroup
		ifAbsentPut:
			[MooseGroup
				withAll: self outgoingInvocations
				withDescription: 'Outgoing invocations from ' , self mooseName]
]

{ #category : #'Moose-RoassalPaintings' }
FmxNGType >> overridingMethods [
	"Used for the class blueprint
	Alexandre.Bergel 3/28/2009 12:10"
	^ self methods select: #isOverriding
]

{ #category : #'Famix-Implementation' }
FmxNGType >> parentScope [
	"Polymorphic alias to mimic GlobalVariable#parentScope and similar"

	^ self container
]

{ #category : #'Famix-Implementation' }
FmxNGType >> printOn: aStream [ 
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

{ #category : #'Famix-Extensions' }
FmxNGType >> providerNamespaces [
	"returns a set of all the namespaces that the receiver depends on (they include some classes that the receiver inherites, staticly accesses, or uses some of their methods)"

	"Moose cook was: ^ self inheritedNamespaces union: self invokedNamespaces"

	^ (self queryAllOutgoing atScope: FmxNGNamespace) withoutSelfLoops
]

{ #category : #'Famix-Extensions' }
FmxNGType >> providerPackages [
	"returns a set of all the packages that the receiver depends on (they include some classes that the receiver inherites, staticly accesses, or uses some of their methods)"

	"Moose cook was: ^ self inheritedPackages union: self invokedPackages"

	^ (self queryAllOutgoing atScope: FmxNGPackage) withoutSelfLoops
]

{ #category : #'Famix-Extensions' }
FmxNGType >> providerTypes [
	<MSEProperty: #providerTypes type: #FmxNGType>
	<derived>
	<multivalued>
	<MSEComment: 'All types that the receiver depends on (inherites, staticly accesses, or uses some of their methods)'>
	^ (self queryAllOutgoing atScope: FmxNGType) withoutSelfLoops
]

{ #category : #'Famix-Implementation' }
FmxNGType >> realType [
	"All types except the alias ones are real"
	^ self 
]

{ #category : #'Moose-RoassalPaintings' }
FmxNGType >> setterMethods [
	"Used for the class blueprint
	Alexandre.Bergel 3/28/2009 12:10"
	^ self methods select: #isSetter
]

{ #category : #'Famix-Implementation' }
FmxNGType >> subclassHierarchy [
	| subclasses |
	subclasses := OrderedCollection new.
	self allSubclassesDo: [:each | subclasses add: each].
	^ subclasses
]

{ #category : #'Famix-Extensions' }
FmxNGType >> subclassHierarchyDepth [ 
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
FmxNGType >> subclassHierarchyDepth: aNumber [

	self privateState propertyAt: #subclassHierarchyDepth put: aNumber
]

{ #category : #'Famix-Implementation' }
FmxNGType >> subclassHierarchyGroup [
	<navigation: 'All subclasses'>
	^ MooseGroup
		withAll: self subclassHierarchy asSet
		withDescription: 'All subclasses of ' , self mooseName
]

{ #category : #'Famix-Smalltalk' }
FmxNGType >> superclass [
	^self anySuperclass
]

{ #category : #'Famix-Implementation' }
FmxNGType >> superclassHierarchy [
	| superclasses |
	superclasses := OrderedCollection new.
	self allSuperclassesDo: [:each |  superclasses add: each].
	^ superclasses
]

{ #category : #'Famix-Implementation' }
FmxNGType >> superclassHierarchyGroup [
	<navigation: 'All superclasses'>
	^ MooseGroup
		withAll: self superclassHierarchy asSet
		withDescription: 'All superclasses of ' , self mooseName
]

{ #category : #'Famix-Extensions' }
FmxNGType >> tightClassCohesion [
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
FmxNGType >> tightClassCohesion: aNumber [

	self privateState propertyAt: #tightClassCohesion put: aNumber
]

{ #category : #'Famix-Extensions' }
FmxNGType >> totalNumberOfChildren [
	<MSEProperty: #totalNumberOfChildren type: #Number>
	<derived>	
	<MSEComment: 'The total number of subclasses of a class'>
	
	^self
		lookUpPropertyNamed: #totalNumberOfChildren
		computedAs: [self subclassHierarchyGroup size]
]

{ #category : #'Famix-Extensions' }
FmxNGType >> totalNumberOfChildren: aNumber [

	self privateState propertyAt: #totalNumberOfChildren put: aNumber
]

{ #category : #'Famix-Implementation' }
FmxNGType >> understands: signature [
	"returns true if a class is able to respond to an invocation to aSignature on itself; false otherwise"

	self withSuperclassesDo: [:each | 
		(each implements: signature) ifTrue: [^true]].
	^false
]

{ #category : #'Moose-RoassalPaintings' }
FmxNGType >> viewBlueprint [
	<menuItem: 'Class blueprint' category: 'Visualize'>
	| view |
	view := RTView new.
	view @ RTDraggableView.
	self viewBlueprintOn: view.
	^ view open
]

{ #category : #'Moose-RoassalPaintings' }
FmxNGType >> viewBlueprintOn: view [
	^ FAMIXClassBlueprint new view: self on: view
]

{ #category : #'Moose-RoassalPaintings' }
FmxNGType >> viewHierarchyOn: view [
	| hierarchy |
	hierarchy :=		(self withDeepCollect: [:each | each directSubclasses]), 
						(self deepCollect: [:each | each directSuperclasses reject: [:c | c isInterface]]).
	hierarchy asMooseGroup 
		viewSimpleSystemComplexityWithSelection: { self } 
		height: [ :c | c numberOfMethods ] 
		width: [ :c | c numberOfAttributes ] 
		color: [ :c | c numberOfLinesOfCode ] 
		on: view.

]

{ #category : #'Moose-RoassalPaintings' }
FmxNGType >> viewTypeNestingGraphOn: view [
	| visitor |
	visitor := FAMIXAttributesGraphTraverser new .
	self accept: visitor.
	view nodes: visitor value graph nodes.
	view edges: visitor value graph nodes from: #yourself toAll: #nextNodes.
	view horizontalDominanceTreeLayout
]

{ #category : #'Moose-RoassalPaintings' }
FmxNGType >> viewUML [
	<menuItem: 'UML class diagram' category: 'Visualize'> 
	
	| view |
	view := RTUMLClassBuilder new.
	self viewUMLOn: view.
	^ view openWithToolbarEntitled: 'UML class diagram'
]

{ #category : #'Moose-RoassalPaintings' }
FmxNGType >> viewUMLOn: view [

	view
		addObjects: {self};
		classname: #name;
		instanceVariables: #attributes;
		methodsNames: #methods;
		methodselector: #name;
		superclass: nil
]

{ #category : #'Famix-Extensions' }
FmxNGType >> weightOfAClass [
	<MSEProperty: #weightOfAClass type: #Number>
	<derived>
	<MSEComment: 'Weight of a class'>	
			
	^self
		lookUpPropertyNamed: #weightOfAClass
		computedAs: [self notExistentMetricValue]
]

{ #category : #'Famix-Extensions' }
FmxNGType >> weightOfAClass: aNumber [

	self privateState propertyAt: #weightOfAClass put: aNumber
]

{ #category : #'Famix-Extensions' }
FmxNGType >> weightedMethodCount [
	<MSEProperty: #weightedMethodCount type: #Number>
	<derived>
	<MSEComment: 'The sum of the complexity in a class'>
			
	^self
		lookUpPropertyNamed: #weightedMethodCount
		computedAs: [self methodsGroup sumNumbers: #cyclomaticComplexity]
]

{ #category : #'Famix-Extensions' }
FmxNGType >> weightedMethodCount: aNumber [

	self privateState propertyAt: #weightedMethodCount put: aNumber
]

{ #category : #'Famix-Implementation' }
FmxNGType >> withSubclassHierarchy [
	^ self subclassHierarchy 
		addFirst: self realType;
		addAll: self realType allTypeAliases;
		yourself
]

{ #category : #'Famix-Implementation' }
FmxNGType >> withSubclassHierarchyGroup [
	<navigation: 'With all subclasses'>
	^ MooseGroup
		withAll: (self subclassHierarchy asSet; addFirst: self; yourself)
		withDescription: 'With all subclasses of ' , self mooseName
]

{ #category : #'Famix-Implementation' }
FmxNGType >> withSubclassesDo: aBlock [
	aBlock value: self.
	self allSubclassesDo: aBlock
]

{ #category : #'Famix-Implementation' }
FmxNGType >> withSuperclassHierarchy [
	^ self realType superclassHierarchy 
		addFirst: self realType; 
		addAll: self realType allTypeAliases;
		yourself
]

{ #category : #'Famix-Implementation' }
FmxNGType >> withSuperclassHierarchyGroup [
	<navigation: 'With all superclasses'>
	^ MooseGroup
		withAll: self withSuperclassHierarchy asSet
		withDescription: 'With all superclasses of ' , self mooseName
]

{ #category : #'Famix-Implementation' }
FmxNGType >> withSuperclassesDo: aBlock [
	aBlock value: self.
	self allSuperclassesDo: aBlock
]
