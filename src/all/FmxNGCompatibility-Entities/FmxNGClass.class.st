Class {
	#name : #FmxNGClass,
	#superclass : #FmxNGClassGenerated,
	#instVars : [
		'isInterface'
	],
	#category : #'FmxNGCompatibility-Entities-Entities'
}

{ #category : #'Famix-Extensions' }
FmxNGClass >> accept: aVisitor [

	aVisitor visitClass: self
]

{ #category : #'Famix-Extensions' }
FmxNGClass >> accessedAttributes [
	
	"Returns my attributes accessed by my methods. If the same attribute is accessed 
	by two different methods it is counted twice.
	Used to support the calculation of LCOM"
	
	^ self methodsWithoutSutbsAndConstructors asOrderedCollection flatCollect: [ :method | method accessedAttributes ]
]

{ #category : #'Famix-Extensions' }
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

{ #category : #'Famix-Extensions' }
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

{ #category : #'Famix-Extensions' }
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

{ #category : #initialization }
FmxNGClass >> initialize [

	super initialize.
	isInterface := false
]

{ #category : #'Famix-Extensions' }
FmxNGClass >> isADirectSubclassOf: aClass [ 
	 
	aClass class = FmxNGClass 
		ifTrue: [^aClass directSubclasses includes: self] 
		ifFalse: [^false]
]

{ #category : #'Famix-Extensions' }
FmxNGClass >> isADirectSuperclassOf: aClass [ 
	 
	aClass class = FmxNGClass 
		ifTrue: [^aClass superclass = self] 
		ifFalse: [^false]
]

{ #category : #'Famix-Extensions' }
FmxNGClass >> isASubclassOf: aClass [ 
	 
	^aClass class = FmxNGClass 
		ifTrue: [aClass subclassHierarchyGroup includes: self] 
		ifFalse: [false]
]

{ #category : #'Famix-Extensions' }
FmxNGClass >> isASuperclassOf: aClass [ 
	 
	^aClass class = FmxNGClass 
		ifTrue: [aClass superclassHierarchyGroup includes: self] 
		ifFalse: [false]
]

{ #category : #'Famix-Extensions' }
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

{ #category : #'Famix-Extensions' }
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

{ #category : #'Famix-Extensions' }
FmxNGClass >> isInvokedBy: anInvocation [ 
	 
	^(anInvocation candidateList notNil 
		and: [anInvocation candidateList notEmpty]) 
		ifTrue: 
			[anInvocation candidateList 
				anySatisfy: 
					[:mtd | mtd class name = #FmxStMethod and: [mtd belongsTo == self]]] 
		ifFalse: [false]
]

{ #category : #'Famix-Extensions' }
FmxNGClass >> lcom2 [

	<MSEProperty: #lcom2 type: #Number>
	<MSEComment: 'lack of cohesion in methods 2 (lcom2)'>
	<derived>

	^ self
		lookUpPropertyNamed: #lcom2
		computedAs: [self calculateLCOM2]
]

{ #category : #'Famix-Extensions' }
FmxNGClass >> lcom3 [

	<MSEProperty: #lcom3 type: #Number>
	<MSEComment: 'lack of cohesion in methods 3 (lcom3)'>
	<derived>

	^ self
		lookUpPropertyNamed: #lcom3
		computedAs: [self calculateLCOM3]
]

{ #category : #'Famix-Extensions' }
FmxNGClass >> methodsWithoutSutbsAndConstructors [

	"Removing stub and contructor methods. Used to support the calculation of LCOM."
	
	^ (self methods select: [ :each | 
		each isStub not and: [each isConstructor not]]) asSet
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
