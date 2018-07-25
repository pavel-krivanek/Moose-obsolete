Class {
	#name : #FmxNGJavaClass,
	#superclass : #FmxNGJavaType,
	#traits : 'FmxNGTClass + FmxNGTWithExceptions',
	#classTraits : 'FmxNGTClass classTrait + FmxNGTWithExceptions classTrait',
	#instVars : [
		'#isInterface'
	],
	#category : #'FmxNGJava-Entities-Entities'
}

{ #category : #meta }
FmxNGJavaClass class >> annotation [

	<MSEClass: #Class super: #FmxNGJavaType>
	<package: #'FmxNGJava-Entities'>
	<generated>
	^self
]

{ #category : #generator }
FmxNGJavaClass class >> generatedSlotNames [
	<generated>
	'FmxNGJavaClass class>>#generatedSlotNames'.
	^ #()
]

{ #category : #generator }
FmxNGJavaClass class >> generatedTraitNames [
	<generated>
	^ #(FmxNGTClass FmxNGTWithExceptions)
]

{ #category : #meta }
FmxNGJavaClass class >> requirements [

	<generated>
	^ {  }
]

{ #category : #'as yet unclassified' }
FmxNGJavaClass >> accept: aVisitor [

	aVisitor visitClass: self
]

{ #category : #'as yet unclassified' }
FmxNGJavaClass >> accessedAttributes [
	
	"Returns my attributes accessed by my methods. If the same attribute is accessed 
	by two different methods it is counted twice.
	Used to support the calculation of LCOM"
	
	^ self methodsWithoutSutbsAndConstructors asOrderedCollection flatCollect: [ :method | method accessedAttributes ]
]

{ #category : #'as yet unclassified' }
FmxNGJavaClass >> containsTheReceiverOf: anInvocation [ 
	 
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

{ #category : #'as yet unclassified' }
FmxNGJavaClass >> initialize [

	super initialize.
	isInterface := false
]

{ #category : #'as yet unclassified' }
FmxNGJavaClass >> isADirectSubclassOf: aClass [ 
	 
	aClass class = FmxNGJavaClass 
		ifTrue: [^aClass directSubclasses includes: self] 
		ifFalse: [^false]
]

{ #category : #'as yet unclassified' }
FmxNGJavaClass >> isADirectSuperclassOf: aClass [ 
	 
	aClass class = FmxNGJavaClass 
		ifTrue: [^aClass superclass = self] 
		ifFalse: [^false]
]

{ #category : #'as yet unclassified' }
FmxNGJavaClass >> isASubclassOf: aClass [ 
	 
	^aClass class = FmxNGJavaClass 
		ifTrue: [aClass subclassHierarchyGroup includes: self] 
		ifFalse: [false]
]

{ #category : #'as yet unclassified' }
FmxNGJavaClass >> isASuperclassOf: aClass [ 
	 
	^aClass class = FmxNGJavaClass 
		ifTrue: [aClass superclassHierarchyGroup includes: self] 
		ifFalse: [false]
]

{ #category : #'as yet unclassified' }
FmxNGJavaClass >> isAccessedBy: anAccess [ 
	 
	^anAccess accesses == self
]

{ #category : #'as yet unclassified' }
FmxNGJavaClass >> isIgnored [
	<MSEProperty: #isIgnored type: #Boolean>
	<multivalued>
	<derived>
	<MSEComment:
		'If the class is a test class, it can be annotated with Ignore, all the tests of contained are bypassed'>
	^ (self isAnnotatedWith: 'Ignore') 
]

{ #category : #'as yet unclassified' }
FmxNGJavaClass >> isInheritedBy: anInheritance [ 
	 
	^anInheritance superclass == self
]

{ #category : #testing }
FmxNGJavaClass >> isInterface [
	<MSEProperty: #isInterface type: #Boolean>
	<MSEComment: 'This is a boolean flag used to distinguish between classes with implementation and interfaces. It is particularly relevant for Java systems.'>
	^ isInterface ifNil: [ false ]
]

{ #category : #'as yet unclassified' }
FmxNGJavaClass >> isInterface: boolean [
	isInterface := boolean
]

{ #category : #'as yet unclassified' }
FmxNGJavaClass >> isInvokedBy: anInvocation [ 
	 
	^(anInvocation candidateList notNil 
		and: [anInvocation candidateList notEmpty]) 
		ifTrue: 
			[anInvocation candidateList 
				anySatisfy: 
					[:mtd | mtd class name = #FmxStMethod and: [mtd belongsTo == self]]] 
		ifFalse: [false]
]

{ #category : #'as yet unclassified' }
FmxNGJavaClass >> methodsWithoutSutbsAndConstructors [

	"Removing stub and contructor methods. Used to support the calculation of LCOM."
	
	^ (self methods select: [ :each | 
		each isStub not and: [each isConstructor not]]) asSet
]

{ #category : #'as yet unclassified' }
FmxNGJavaClass >> selectWithinYourScope: aMooseQueryResult [
	^ aMooseQueryResult withinClass: self
]

{ #category : #'as yet unclassified' }
FmxNGJavaClass >> smalltalkClass [ 
	"Returns the associated smalltalk class if it exist in the system."
	
	^ FAMIXNameResolver smalltalkClassFromFamixClassName: 
			self name  ifAbsent: [nil] 
]

{ #category : #'as yet unclassified' }
FmxNGJavaClass >> sourceText [
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

{ #category : #'as yet unclassified' }
FmxNGJavaClass >> structuralChildren [
	^ (OrderedCollection withAll: self methods), self attributes
]
