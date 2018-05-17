Class {
	#name : #FmxNGClass,
	#superclass : #FmxNGType,
	#traits : 'FmxNGTClass + FmxNGTWithExceptions',
	#classTraits : 'FmxNGTClass classTrait + FmxNGTWithExceptions classTrait',
	#instVars : [
		'#isInterface'
	],
	#category : #'FmxNGCompatibility-Entities-Entities'
}

{ #category : #meta }
FmxNGClass class >> annotation [

	<generated>
	<MSEClass: #Class super: #FmxNGType>
	<package: #'FmxNGCompatibility-Entities'>
	<generated>
	^self
]

{ #category : #generator }
FmxNGClass class >> generatedSlotNames [
	<generated>
	^ #()
]

{ #category : #generator }
FmxNGClass class >> generatedTraitNames [
	<generated>
	^ #(FmxNGTClass FmxNGTWithExceptions)
]

{ #category : #meta }
FmxNGClass class >> requirements [

	<generated>
	^ {  }
]

{ #category : #'Famix-Extensions-visitor' }
FmxNGClass >> accept: aVisitor [

	aVisitor visitClass: self
]

{ #category : #'Famix-Extensions-metrics-support' }
FmxNGClass >> accessedAttributes [
	
	"Returns my attributes accessed by my methods. If the same attribute is accessed 
	by two different methods it is counted twice.
	Used to support the calculation of LCOM"
	
	^ self methodsWithoutSutbsAndConstructors asOrderedCollection flatCollect: [ :method | method accessedAttributes ]
]

{ #category : #'SmallDude-Moose-accessing derived' }
FmxNGClass >> allDuplicatingClasses [ 
	 
	<navigation: 'Classes with fragments duplicated here'> 
	| files | 
	files := OrderedCollection new. 
	self allExternalDuplications 
		do: 
			[:dup |  
			| other | 
			other := dup referenceCode entity. 
			self ~= other 
				ifTrue: 
					[files 
						indexOf: other 
						ifAbsent: [files add: other]]. 
			other := dup duplicateCode entity. 
			self ~= other 
				ifTrue: 
					[files 
						indexOf: other 
						ifAbsent: [files add: other]]]. 
	^MooseGroup 
		withAll: files 
		withDescription: 'All classes with parts duplicated in ' , self mooseName
]

{ #category : #'SmallDude-Moose-accessing derived' }
FmxNGClass >> allExternalDuplications [ 
	 
	<navigation: 'External duplications'> 
	^DudeDuplicationGroup 
		withAll: 
			((self mooseModel ifNil: [ MooseModel new ]) allDuplications 
				select: 
					[:dup | (dup isSelfDuplicationOf: self) not and: [dup isDuplicationOf: self]]) 
		withDescription: 'All external duplications of ' , self mooseName
]

{ #category : #'SmallDude-Moose-accessing derived' }
FmxNGClass >> allExternalMultiplications [ 
	 
	<navigation: 'External multiplications'> 
	^DudeMultiplicationGroup 
		withAll: 
			((self mooseModel ifNil: [MooseModel new]) 
				allMultiplications select: 
					[:each | (each isInternalTo: self) not and: [each isMultiplicationOf: self]]) 
		withDescription: 'All external multiplications of ' , self mooseName
]

{ #category : #'SmallDude-Moose-accessing derived' }
FmxNGClass >> allInternalDuplications [ 
	 
	<navigation: 'Internal duplications'> 
	^DudeDuplicationGroup 
		withAll: 
			((self mooseModel ifNil: [ MooseModel new ]) allDuplications 
				select: [:dup | dup isSelfDuplicationOf: self]) 
		withDescription: 'All internal duplications of ' , self mooseName
]

{ #category : #'SmallDude-Moose-accessing derived' }
FmxNGClass >> allInternalMultiplications [ 
	 
	<navigation: 'Internal multiplications'> 
	^DudeMultiplicationGroup 
		withAll: 
			((self mooseModel ifNil: [MooseModel new]) 
				allMultiplications 
				select: [:each | each isInternalTo: self]) 
		withDescription: 'All internal multiplications of ' , self mooseName
]

{ #category : #'SmallDude-Moose-accessing derived' }
FmxNGClass >> allMultiplications [ 
	 
	<navigation: 'All multiplications'> 
	^DudeMultiplicationGroup 
		withAll: 
			((self mooseModel ifNil: [ MooseModel new ]) 
				allMultiplications 
					select: [:each | each isMultiplicationOf: self]) 
		withDescription: 'All multiplications of ' , self mooseName
]

{ #category : #'Moose-Finder' }
FmxNGClass >> browseSource [
	<menuItem: 'Source' category: 'Browse'>
	| browser |
	self mooseModel isSmalltalk 
		ifTrue: [ (Smalltalk at: self name) browse ]
	ifFalse: [ 
		browser := MooseNamespacesCodeBrowser new browser.
		browser openOn: (self mooseModel allNamespaces select: #isRoot).
		(browser pane port: #focusOnClass) value: self.
		 ]
]

{ #category : #'Famix-Extensions-metrics-support' }
FmxNGClass >> calculateLCOM2 [
	
	"Definitions used for LCOM2 and LCOM3 m	number of procedures (methods) in class
	m	         number of procedures (methods) in class
	a             number of variables (attributes) in class
	mA	         number of methods that access a variable (attribute)
	sum(mA)  sum of mA over attributes of a class
	LCOM2 = 1 - sum(mA)/(m*a)
	LCOM3 = (m - sum(mA)/a) / (m-1)"

	| m a sumMa |
	
	m := self methodsWithoutSutbsAndConstructors size.
	a := self numberOfAttributes.
	sumMa := self accessedAttributes size.
	
	"If the number of methods or attributes is zero, 
	LCOM2 is undefined and displayed as zero"
	((m = 0) or: [ a = 0 ])
		ifTrue: [^ 0].
	
	^ (1 - (sumMa / (m*a)))
]

{ #category : #'Famix-Extensions-metrics-support' }
FmxNGClass >> calculateLCOM3 [
	
	"Definitions used for LCOM2 and LCOM3 m	number of procedures (methods) in class
	m	         number of procedures (methods) in class
	a             number of variables (attributes) in class
	mA	         number of methods that access a variable (attribute)
	sum(mA)  sum of mA over attributes of a class
	LCOM2 = 1 - sum(mA)/(m*a)
	LCOM3 = (m - sum(mA)/a) / (m-1)"

	| m a sumMa |
	
	m := self methodsWithoutSutbsAndConstructors size.
	a := self numberOfAttributes.
	sumMa := self accessedAttributes size.
	
	"If there are no more than one method in a class, LCOM3 is undefined. 
	 If there are no variables in a class, LCOM3 is undefined. 
	An undefined LCOM3 is displayed as zero."
	((m <= 1) or: [ a = 0 ])
		ifTrue: [ ^ 0].
	
	^ (m - (sumMa/a)) / (m-1)
]

{ #category : #'Famix-Extensions-Testing' }
FmxNGClass >> containsTheReceiverOf: anInvocation [ 
	 
	^anInvocation receivingVariable notNil 
		ifTrue: 
			[anInvocation receivingVariable class name = #FmxNGClass 
				ifTrue: [anInvocation receivingVariable == self] 
				ifFalse: 
					[anInvocation receivingVariable class name = #FmxNGImplicitVariable 
						ifTrue: [anInvocation receivingVariable belongsTo == self] 
						ifFalse: [false]]] 
		ifFalse: [false]
]

{ #category : #'Moose-RoassalPaintings-PackageBlueprint' }
FmxNGClass >> inheritedClasses [
	
	self flag: #fixme.
	^ #()
]

{ #category : #'Moose-RoassalPaintings-PackageBlueprint' }
FmxNGClass >> inheritedClassesOutOfMyPackage [
	
	self flag: #fixme.
	^ #()
]

{ #category : #initialization }
FmxNGClass >> initialize [

	super initialize.
	isInterface := false
]

{ #category : #'Famix-Extensions-HierarchyTesting' }
FmxNGClass >> isADirectSubclassOf: aClass [ 
	 
	aClass class = FmxNGClass 
		ifTrue: [^aClass directSubclasses includes: self] 
		ifFalse: [^false]
]

{ #category : #'Famix-Extensions-HierarchyTesting' }
FmxNGClass >> isADirectSuperclassOf: aClass [ 
	 
	aClass class = FmxNGClass 
		ifTrue: [^aClass superclass = self] 
		ifFalse: [^false]
]

{ #category : #'Famix-Extensions-HierarchyTesting' }
FmxNGClass >> isASubclassOf: aClass [ 
	 
	^aClass class = FmxNGClass 
		ifTrue: [aClass subclassHierarchyGroup includes: self] 
		ifFalse: [false]
]

{ #category : #'Famix-Extensions-HierarchyTesting' }
FmxNGClass >> isASuperclassOf: aClass [ 
	 
	^aClass class = FmxNGClass 
		ifTrue: [aClass superclassHierarchyGroup includes: self] 
		ifFalse: [false]
]

{ #category : #'Famix-Extensions-Testing' }
FmxNGClass >> isAccessedBy: anAccess [ 
	 
	^anAccess accesses == self
]

{ #category : #'Famix-Java' }
FmxNGClass >> isIgnored [
	<MSEProperty: #isIgnored type: #Boolean>
	<multivalued>
	<derived>
	<MSEComment:
		'If the class is a test class, it can be annotated with Ignore, all the tests of contained are bypassed'>
	^ (self isAnnotatedWith: 'Ignore') 
]

{ #category : #'Famix-Extensions-Testing' }
FmxNGClass >> isInheritedBy: anInheritance [ 
	 
	^anInheritance superclass == self
]

{ #category : #accessing }
FmxNGClass >> isInterface [
	<MSEProperty: #isInterface type: #Boolean>
	<MSEComment: 'This is a boolean flag used to distinguish between classes with implementation and interfaces. It is particularly relevant for Java systems.'>
	^ isInterface ifNil: [ false ]
]

{ #category : #accessing }
FmxNGClass >> isInterface: boolean [
	isInterface := boolean
]

{ #category : #'Famix-Extensions-Testing' }
FmxNGClass >> isInvokedBy: anInvocation [ 
	 
	^(anInvocation candidateList notNil 
		and: [anInvocation candidateList notEmpty]) 
		ifTrue: 
			[anInvocation candidateList 
				anySatisfy: 
					[:mtd | mtd class name = #FmxStMethod and: [mtd belongsTo == self]]] 
		ifFalse: [false]
]

{ #category : #'SmallDude-Moose-testing' }
FmxNGClass >> isMultipliedWithin: aGroup [ 
	 
	| intersection | 
	^self allMultiplications 
		anySatisfy: 
			[:each |  
			intersection := each multiplyingEntities intersection: aGroup. 
			intersection size > 1 and: [intersection includes: self]]
]

{ #category : #'Famix-Extensions-metrics' }
FmxNGClass >> lcom2 [

	<MSEProperty: #lcom2 type: #Number>
	<MSEComment: 'lack of cohesion in methods 2 (lcom2)'>
	<derived>

	^ self
		lookUpPropertyNamed: #lcom2
		computedAs: [self calculateLCOM2]
]

{ #category : #'Famix-Extensions-metrics' }
FmxNGClass >> lcom3 [

	<MSEProperty: #lcom3 type: #Number>
	<MSEComment: 'lack of cohesion in methods 3 (lcom3)'>
	<derived>

	^ self
		lookUpPropertyNamed: #lcom3
		computedAs: [self calculateLCOM3]
]

{ #category : #'Famix-Extensions-metrics-support' }
FmxNGClass >> methodsWithoutSutbsAndConstructors [

	"Removing stub and contructor methods. Used to support the calculation of LCOM."
	
	^ (self methods select: [ :each | 
		each isStub not and: [each isConstructor not]]) asSet
]

{ #category : #'Moose-Finder' }
FmxNGClass >> mooseIcon [
	^ self isInterface 
		ifTrue: [ MooseIcons famixInterface ]
		ifFalse: [ MooseIcons famixClass ]
]

{ #category : #'SmallDude-Moose-accessing derived' }
FmxNGClass >> numberOfExternalDuplications [ 
	<MSEProperty: #numberOfExternalDuplications type: #Number>
	<derived>
	<MSEComment: 'The number of pairs of duplicate fragments between this class and other classes'>

	^self 
		lookUpPropertyNamed: #numberOfExternalDuplications 
		computedAs: [self allExternalDuplications size]
]

{ #category : #'SmallDude-Moose-accessing derived' }
FmxNGClass >> numberOfInternalDuplications [ 
	<MSEProperty: #numberOfInternalDuplications type: #Number>
	<derived>
	<MSEComment:  'The number of pairs of duplicate fragments within the class'>

	^self 
		lookUpPropertyNamed: #numberOfInternalDuplications 
		computedAs: [self allInternalDuplications size]
]

{ #category : #'moosechef-scoping-filtering' }
FmxNGClass >> selectWithinYourScope: aMooseQueryResult [
	^ aMooseQueryResult withinClass: self
]

{ #category : #'Famix-Implementation' }
FmxNGClass >> smalltalkClass [ 
	"Returns the associated smalltalk class if it exist in the system."
	
	^ FAMIXNameResolver smalltalkClassFromFamixClassName: 
			self name  ifAbsent: [nil] 
]

{ #category : #'Famix-Smalltalk' }
FmxNGClass >> sourceText [
	self flag: 'This code should be delegated to the FAMIXPharoAnchor'.
	^ self sourceLanguage isSmalltalk
			ifTrue: [
				self mooseName, 
				Character cr asSymbol asString, 
				(Character cr asSymbol asString join: (self attributes collect: #name)), 
				Character cr asSymbol asString, 
				(Character cr asSymbol asString join: (self methods collect: [:each | Character cr asSymbol asString, each sourceText])).
			] ifFalse: [ super sourceText ]
]

{ #category : #'Famix-Extensions' }
FmxNGClass >> structuralChildren [
	^ (OrderedCollection withAll: self methods), self attributes
]

{ #category : #'Moose-RoassalPaintings-PackageBlueprint' }
FmxNGClass >> sureInvokedClasses [
	
	self flag: #fixme.
	^ self queryAllOutgoingInvocations opposites
]

{ #category : #'Moose-RoassalPaintings-PackageBlueprint' }
FmxNGClass >> sureInvokedClassesInto: aFAMIXPackage [ 
	
	self flag: #fixme.
	^ self sureInvokedClasses
]

{ #category : #'Moose-RoassalPaintings-PackageBlueprint' }
FmxNGClass >> sureInvokingClasses [
	
	self flag: #fixme.
	^ self queryAllIncomingInvocations opposites
]

{ #category : #'Moose-RoassalPaintings-PackageBlueprint' }
FmxNGClass >> sureInvokingClassesInto: aFAMIXPackage [ 
	
	self flag: #fixme.
	^ self sureInvokingClasses
]
