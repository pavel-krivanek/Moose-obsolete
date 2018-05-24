Class {
	#name : #FAMIXClass,
	#superclass : #FAMIXType,
	#traits : 'FmxNGTClass + FmxNGTWithExceptions',
	#classTraits : 'FmxNGTClass classTrait + FmxNGTWithExceptions classTrait',
	#instVars : [
		'#isInterface'
	],
	#category : #'FmxNGCompatibility-Entities-Entities'
}

{ #category : #meta }
FAMIXClass class >> annotation [

	<generated>
	<MSEClass: #Class super: #FAMIXType>
	<package: #FAMIX>
	<generated>
	^self
]

{ #category : #generator }
FAMIXClass class >> generatedSlotNames [
	<generated>
	^ #()
]

{ #category : #generator }
FAMIXClass class >> generatedTraitNames [
	<generated>
	^ #(FmxNGTClass FmxNGTWithExceptions)
]

{ #category : #meta }
FAMIXClass class >> requirements [

	<generated>
	^ {  }
]

{ #category : #'Famix-Extensions-visitor' }
FAMIXClass >> accept: aVisitor [

	aVisitor visitClass: self
]

{ #category : #'Famix-Extensions-metrics-support' }
FAMIXClass >> accessedAttributes [
	
	"Returns my attributes accessed by my methods. If the same attribute is accessed 
	by two different methods it is counted twice.
	Used to support the calculation of LCOM"
	
	^ self methodsWithoutSutbsAndConstructors asOrderedCollection flatCollect: [ :method | method accessedAttributes ]
]

{ #category : #'Famix-Extensions-metrics-support' }
FAMIXClass >> calculateLCOM2 [
	
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
FAMIXClass >> calculateLCOM3 [
	
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
FAMIXClass >> containsTheReceiverOf: anInvocation [ 
	 
	^anInvocation receivingVariable notNil 
		ifTrue: 
			[anInvocation receivingVariable class name = #FAMIXClass 
				ifTrue: [anInvocation receivingVariable == self] 
				ifFalse: 
					[anInvocation receivingVariable class name = #FAMIXImplicitVariable 
						ifTrue: [anInvocation receivingVariable belongsTo == self] 
						ifFalse: [false]]] 
		ifFalse: [false]
]

{ #category : #initialization }
FAMIXClass >> initialize [

	super initialize.
	isInterface := false
]

{ #category : #'Famix-Extensions-HierarchyTesting' }
FAMIXClass >> isADirectSubclassOf: aClass [ 
	 
	aClass class = FAMIXClass 
		ifTrue: [^aClass directSubclasses includes: self] 
		ifFalse: [^false]
]

{ #category : #'Famix-Extensions-HierarchyTesting' }
FAMIXClass >> isADirectSuperclassOf: aClass [ 
	 
	aClass class = FAMIXClass 
		ifTrue: [^aClass superclass = self] 
		ifFalse: [^false]
]

{ #category : #'Famix-Extensions-HierarchyTesting' }
FAMIXClass >> isASubclassOf: aClass [ 
	 
	^aClass class = FAMIXClass 
		ifTrue: [aClass subclassHierarchyGroup includes: self] 
		ifFalse: [false]
]

{ #category : #'Famix-Extensions-HierarchyTesting' }
FAMIXClass >> isASuperclassOf: aClass [ 
	 
	^aClass class = FAMIXClass 
		ifTrue: [aClass superclassHierarchyGroup includes: self] 
		ifFalse: [false]
]

{ #category : #'Famix-Extensions-Testing' }
FAMIXClass >> isAccessedBy: anAccess [ 
	 
	^anAccess accesses == self
]

{ #category : #'Famix-Java' }
FAMIXClass >> isIgnored [
	<MSEProperty: #isIgnored type: #Boolean>
	<multivalued>
	<derived>
	<MSEComment:
		'If the class is a test class, it can be annotated with Ignore, all the tests of contained are bypassed'>
	^ (self isAnnotatedWith: 'Ignore') 
]

{ #category : #'Famix-Extensions-Testing' }
FAMIXClass >> isInheritedBy: anInheritance [ 
	 
	^anInheritance superclass == self
]

{ #category : #accessing }
FAMIXClass >> isInterface [
	<MSEProperty: #isInterface type: #Boolean>
	<MSEComment: 'This is a boolean flag used to distinguish between classes with implementation and interfaces. It is particularly relevant for Java systems.'>
	^ isInterface ifNil: [ false ]
]

{ #category : #accessing }
FAMIXClass >> isInterface: boolean [
	isInterface := boolean
]

{ #category : #'Famix-Extensions-Testing' }
FAMIXClass >> isInvokedBy: anInvocation [ 
	 
	^(anInvocation candidateList notNil 
		and: [anInvocation candidateList notEmpty]) 
		ifTrue: 
			[anInvocation candidateList 
				anySatisfy: 
					[:mtd | mtd class name = #FmxStMethod and: [mtd belongsTo == self]]] 
		ifFalse: [false]
]

{ #category : #'Famix-Extensions-metrics' }
FAMIXClass >> lcom2 [

	<MSEProperty: #lcom2 type: #Number>
	<MSEComment: 'lack of cohesion in methods 2 (lcom2)'>
	<derived>

	^ self
		lookUpPropertyNamed: #lcom2
		computedAs: [self calculateLCOM2]
]

{ #category : #'Famix-Extensions-metrics' }
FAMIXClass >> lcom3 [

	<MSEProperty: #lcom3 type: #Number>
	<MSEComment: 'lack of cohesion in methods 3 (lcom3)'>
	<derived>

	^ self
		lookUpPropertyNamed: #lcom3
		computedAs: [self calculateLCOM3]
]

{ #category : #'Famix-Extensions-metrics-support' }
FAMIXClass >> methodsWithoutSutbsAndConstructors [

	"Removing stub and contructor methods. Used to support the calculation of LCOM."
	
	^ (self methods select: [ :each | 
		each isStub not and: [each isConstructor not]]) asSet
]

{ #category : #'moosechef-scoping-filtering' }
FAMIXClass >> selectWithinYourScope: aMooseQueryResult [
	^ aMooseQueryResult withinClass: self
]

{ #category : #'Famix-Implementation' }
FAMIXClass >> smalltalkClass [ 
	"Returns the associated smalltalk class if it exist in the system."
	
	^ FAMIXNameResolver smalltalkClassFromFamixClassName: 
			self name  ifAbsent: [nil] 
]

{ #category : #'Famix-Smalltalk' }
FAMIXClass >> sourceText [
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
FAMIXClass >> structuralChildren [
	^ (OrderedCollection withAll: self methods), self attributes
]
