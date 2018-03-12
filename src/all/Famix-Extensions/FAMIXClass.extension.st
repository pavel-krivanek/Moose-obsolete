Extension { #name : #FAMIXClass }

{ #category : #'*famix-extensions-visitor' }
FAMIXClass >> accept: aVisitor [

	aVisitor visitClass: self
]

{ #category : #'*famix-extensions-metrics-support' }
FAMIXClass >> accessedAttributes [
	
	"Returns my attributes accessed by my methods. If the same attribute is accessed 
	by two different methods it is counted twice.
	Used to support the calculation of LCOM"
	
	^ self methodsWithoutSutbsAndConstructors asOrderedCollection flatCollect: [ :method | method accessedAttributes ]
]

{ #category : #'*famix-extensions-metrics-support' }
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

{ #category : #'*famix-extensions-metrics-support' }
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

{ #category : #'*famix-extensions-Testing' }
FAMIXClass >> containsTheReceiverOf: anInvocation [ 
	 
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

{ #category : #'*famix-extensions-HierarchyTesting' }
FAMIXClass >> isADirectSubclassOf: aClass [ 
	 
	aClass class = FmxNGClass 
		ifTrue: [^aClass directSubclasses includes: self] 
		ifFalse: [^false]
]

{ #category : #'*famix-extensions-HierarchyTesting' }
FAMIXClass >> isADirectSuperclassOf: aClass [ 
	 
	aClass class = FmxNGClass 
		ifTrue: [^aClass superclass = self] 
		ifFalse: [^false]
]

{ #category : #'*famix-extensions-HierarchyTesting' }
FAMIXClass >> isASubclassOf: aClass [ 
	 
	^aClass class = FmxNGClass 
		ifTrue: [aClass subclassHierarchyGroup includes: self] 
		ifFalse: [false]
]

{ #category : #'*famix-extensions-HierarchyTesting' }
FAMIXClass >> isASuperclassOf: aClass [ 
	 
	^aClass class = FmxNGClass 
		ifTrue: [aClass superclassHierarchyGroup includes: self] 
		ifFalse: [false]
]

{ #category : #'*famix-extensions-Testing' }
FAMIXClass >> isAccessedBy: anAccess [ 
	 
	^anAccess accesses == self
]

{ #category : #'*famix-extensions-Testing' }
FAMIXClass >> isInheritedBy: anInheritance [ 
	 
	^anInheritance superclass == self
]

{ #category : #'*famix-extensions-Testing' }
FAMIXClass >> isInvokedBy: anInvocation [ 
	 
	^(anInvocation candidateList notNil 
		and: [anInvocation candidateList notEmpty]) 
		ifTrue: 
			[anInvocation candidateList 
				anySatisfy: 
					[:mtd | mtd class name = #FmxNGMethod and: [mtd belongsTo == self]]] 
		ifFalse: [false]
]

{ #category : #'*famix-extensions-metrics' }
FAMIXClass >> lcom2 [

	<MSEProperty: #lcom2 type: #Number>
	<MSEComment: 'lack of cohesion in methods 2 (lcom2)'>
	<derived>

	^ self
		lookUpPropertyNamed: #lcom2
		computedAs: [self calculateLCOM2]
]

{ #category : #'*famix-extensions-metrics' }
FAMIXClass >> lcom3 [

	<MSEProperty: #lcom3 type: #Number>
	<MSEComment: 'lack of cohesion in methods 3 (lcom3)'>
	<derived>

	^ self
		lookUpPropertyNamed: #lcom3
		computedAs: [self calculateLCOM3]
]

{ #category : #'*famix-extensions-metrics-support' }
FAMIXClass >> methodsWithoutSutbsAndConstructors [

	"Removing stub and contructor methods. Used to support the calculation of LCOM."
	
	^ (self methods select: [ :each | 
		each isStub not and: [each isConstructor not]]) asSet
]

{ #category : #'*famix-extensions' }
FAMIXClass >> structuralChildren [
	^ (OrderedCollection withAll: self methods), self attributes
]
