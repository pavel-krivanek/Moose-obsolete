Class {
	#name : #FmxNGMethod,
	#superclass : #FmxNGMethodGenerated,
	#classVars : [
		'ShouldSearchForSmalltalkCodeInImage'
	],
	#category : #'FmxNGCompatibility-Entities-Entities'
}

{ #category : #meta }
FmxNGMethod class >> annotation [

	<MSEClass: #Method super: #FmxNGMethodGenerated>
	<package: #'FmxNGCompatibility-Generated'>
	^self
]

{ #category : #meta }
FmxNGMethod class >> shouldSearchForSmalltalkCodeInImage [
	^ ShouldSearchForSmalltalkCodeInImage ifNil: [ ShouldSearchForSmalltalkCodeInImage := true ]
]

{ #category : #meta }
FmxNGMethod class >> shouldSearchForSmalltalkCodeInImage: anObject [
	ShouldSearchForSmalltalkCodeInImage := anObject
]

{ #category : #'Famix-Extensions' }
FmxNGMethod >> accept: aVisitor [

	aVisitor visitMethod: self
]

{ #category : #'Famix-Extensions' }
FmxNGMethod >> accessedAttributes [
	
	"Returns the set of attributes of my class accessed by me (method). 
	Used to support the calculation of LCOM"
	
	^ self queryOutgoingAccesses opposites withinMyClass asSet select: #isAttribute
]

{ #category : #accessing }
FmxNGMethod >> allRecursiveTypes [
	"Retrieves all nested types recursively"
	
	| result |
	result := Set new.
	self allRecursiveTypesDo: [:each | result add: each ].
	^ result
]

{ #category : #accessing }
FmxNGMethod >> allRecursiveTypesDo: aBlock [
	"Traverses all nested types recursively"

	self types do: [ :each | 
		aBlock value: each.
		each allRecursiveTypesDo: aBlock ]
]

{ #category : #accessing }
FmxNGMethod >> belongsTo [
	^ self parentType
]

{ #category : #accessing }
FmxNGMethod >> belongsTo: aType [
	self parentType
]

{ #category : #'Famix-Smalltalk' }
FmxNGMethod >> category [
	<MSEProperty: #category type: #String>
	<MSEComment: 'Category of the method'>
	<package: 'Smalltalk'>
	
	^ self privateState attributeAt: #category ifAbsentPut: [ nil ]
]

{ #category : #'Famix-Smalltalk' }
FmxNGMethod >> category: aString [

	self privateState attributeAt: #category put: aString

	
]

{ #category : #'Famix-Extensions' }
FmxNGMethod >> clientMethods [
	^ self clientBehaviours select: [ :each | each isMethod ]
]

{ #category : #'Famix-Extensions' }
FmxNGMethod >> clientNamespaces [
	"returns a set of all the namespaces that depend on the receiver"

	^ (self queryAllIncoming atScope: FmxNGNamespace) withoutSelfLoops
]

{ #category : #'Famix-Extensions' }
FmxNGMethod >> clientPackages [
	"returns a set of all the packages that depend on the receiver"

	^ (self queryAllIncoming atScope: FmxNGPackage) withoutSelfLoops
]

{ #category : #'Famix-Extensions' }
FmxNGMethod >> clientTypes [
	<MSEProperty: #clientTypes type: #FmxNGType>
	<multivalued>
	<derived>
	<MSEComment: 'All types that depend on the receiver'>
	^ (self queryAllIncoming atScope: FmxNGType) withoutSelfLoops
]

{ #category : #'Famix-Implementation' }
FmxNGMethod >> compiledMethod [
	"Return the compiled method associated to the receiver or nil"
	
	^ self smalltalkClass  compiledMethodAt: self name asSymbol
	
	
]

{ #category : #'Famix-Extensions' }
FmxNGMethod >> copyFrom: anEntity within: aVisitor [

	super copyFrom: anEntity within: aVisitor.
	self kind: anEntity kind copy.
	self category: anEntity category copy.


]

{ #category : #'Famix-Java' }
FmxNGMethod >> hasInnerClassImplementingMethods [
	^ self innerClassesImplementingMethods isNotEmpty
]

{ #category : #'Famix-Extensions' }
FmxNGMethod >> hierarchyNestingLevel [
	<MSEProperty: #hierarchyNestingLevel type: #Number>
	<derived>
	<MSEComment: 'The nesting level in the hierarchy'>
	
	^self
		lookUpPropertyNamed: #hierarchyNestingLevel
		computedAs: [self belongsTo hierarchyNestingLevel]
]

{ #category : #'Famix-Extensions' }
FmxNGMethod >> hierarchyNestingLevel: aNumber [

	self privateState propertyAt: #hierarchyNestingLevel put: aNumber
]

{ #category : #'Famix-Java' }
FmxNGMethod >> implementMethod [
	^ self belongsTo implementedInterfaces
		collect: [ :each | each implementationOf: self signature ]
]

{ #category : #initialization }
FmxNGMethod >> initialize [
	super initialize.
	hasClassScope := false
]

{ #category : #'Famix-Java' }
FmxNGMethod >> innerClassesImplementingMethods [
	^ self types select: [ :el | el methods anySatisfy: [ :m | m isStub not ] ]
]

{ #category : #'Famix-Extensions' }
FmxNGMethod >> invokedMethods [
	<MSEProperty: #invokedMethods type: #FmxNGMethod> <derived> <multivalued>
	<MSEComment: 'The methods invoked by the receiver'>
	
	^ self invokedBehaviours select: [ :each | each isMethod ]
]

{ #category : #'Famix-Extensions' }
FmxNGMethod >> invokingMethods [
	<MSEProperty: #invokingMethods type: #FmxNGMethod> <derived> <multivalued>
	<MSEComment: 'The methods invoking the receiver'>

	^ self invokingBehaviours select: [ :each | each isMethod ]
]

{ #category : #'Famix-Smalltalk' }
FmxNGMethod >> isCalledInternally [
	^self incomingInvocations
		anySatisfy:
			[:each | each sender isMethod and: [each sender belongsTo == self belongsTo]]
]

{ #category : #'Famix-Implementation' }
FmxNGMethod >> isClassInitializer [
	<MSEProperty: #isClassInitializer type: #Boolean>
	<derived>
	<MSEComment: 'True if the method is an initializer of the class (i.e. contains the attribute init env)'>
	^ #initializer = self kind
		or: [ self privateState propertyAt: #isClassInitializer ifAbsent: [ false ] ]
]

{ #category : #'Famix-Implementation' }
FmxNGMethod >> isConstant [
	<MSEProperty: #isConstant type: #Boolean>
	<derived>
	<MSEComment: 'True if the method simply returns a constant'>
	^#constant = self kind
]

{ #category : #'Famix-Implementation' }
FmxNGMethod >> isConstructor [
	<MSEProperty: #isConstructor type: #Boolean>
	<derived>
	<MSEComment: 'True if the method is a constructor of the class'>

	^ #constructor = self kind or: [ 
		self privateState propertyAt: #isConstructor ifAbsent: [false] ]
]

{ #category : #'Famix-Implementation' }
FmxNGMethod >> isConstructor: aBoolean [
	aBoolean 
		ifTrue: [ self kind: #constructor ]
		ifFalse: [ 
			self isConstructor ifTrue: [ self kind: nil ] ]
]

{ #category : #'Famix-Extensions' }
FmxNGMethod >> isDetectedGetter [
	^ self outgoingInvocations isEmpty and: [ 
		self accesses size = 1 and: [ 
			self accesses first isWrite not ] ]
]

{ #category : #'Famix-Extensions' }
FmxNGMethod >> isDetectedSetter [
	^ self outgoingInvocations isEmpty and: [ 
		self accesses size = 1 and: [ 
			self accesses first isWrite ] ]
]

{ #category : #'Famix-Smalltalk' }
FmxNGMethod >> isExtension [
	^self belongsTo packageScope ~~ self packageScope.
]

{ #category : #'Famix-Implementation' }
FmxNGMethod >> isGetter [
	<MSEProperty: #isGetter type: #Boolean>
	<derived>
	<MSEComment: 'True if the method is a getter of an attribute'>
	
	^#getter = self kind
]

{ #category : #'Famix-Java' }
FmxNGMethod >> isImplementing [
	<MSEProperty: #isImplementing type: #Boolean>
	<derived>
	<MSEComment: 'The method is implementing a method defined in an interface'>
	^ self belongsTo directSuperclasses
		anySatisfy: [ :each | each isInterface and: [ each understands: self signature ] ]
]

{ #category : #'Famix-Smalltalk' }
FmxNGMethod >> isInitializer [
	^ self mooseModel isSmalltalk
		ifTrue: [ (('*initialize*' match: self category) or: [ '*initialize*' match: self name ]) or: [ self isConstructor ] ]
		ifFalse: [ self isConstructor ]
]

{ #category : #'Famix-Smalltalk' }
FmxNGMethod >> isInternalImplementation [
	<MSEProperty: #isInternalImplementation type: #Boolean>
	<derived>
	<MSEComment: 'Public Interface Layer Method'>
	<package: 'Smalltalk'>
	^ (self isInitializer not and: [ self isCalledInternally ])
		and: [ self isPureAccessor not ]
]

{ #category : #'Famix-Java' }
FmxNGMethod >> isJUnit4Test [
	<MSEProperty: #isJUnit4Test type: #Boolean>
	<derived>
	<MSEComment: 'True if the method is considered as a Junit 4 Java test'>
	^ self isAnnotatedWith: 'Test'
]

{ #category : #'Famix-Implementation' }
FmxNGMethod >> isMethod [

	^ true
]

{ #category : #'Famix-Extensions' }
FmxNGMethod >> isOverriden [
	<MSEProperty: #isOverriden type: #Boolean>
	<derived>
	<MSEComment: 'The method is overrided in a sub class'>
	^ self belongsTo subclassHierarchyGroup
		anySatisfy: [ :each | each hasMethodWithSignature: self signature ]
]

{ #category : #'Famix-Extensions' }
FmxNGMethod >> isOverriding [
	<MSEProperty: #isOverriding type: #Boolean>
	<derived>
	<MSEComment: 'The method is overrinding a method defined in a super class'>
	
	^self belongsTo directSuperclasses anySatisfy: [:each | 
		each isInterface not and: [each understands: self signature]]
]

{ #category : #'Famix-Implementation' }
FmxNGMethod >> isPureAccessor [
	^self isGetter
		or: [self isSetter
		or: [self privateState propertyAt: #isPureAccessor ifAbsent: [false]]]
]

{ #category : #'Famix-Implementation' }
FmxNGMethod >> isSetter [
	<MSEProperty: #isSetter type: #Boolean>
	<derived>
	<MSEComment: 'True if the method is a setter on an attribute'>

	^#setter = self kind
]

{ #category : #'Famix-Extensions' }
FmxNGMethod >> isSurelyInvokedBy: aFAMIXMethod [ 
	 
	| outgoingInvo |

	((self isAbstract or: [aFAMIXMethod isAbstract]) 
		or: [(outgoingInvo := aFAMIXMethod queryAllOutgoingInvocations) isEmpty])
		ifFalse: 
			[
			(outgoingInvo do:[:invo |
				(invo signature = self signature and: [invo isASureInvocation]) ifTrue:[
					| invocationRVar | 
					invocationRVar := invo getReceivingFAMIXClass. 
					(invocationRVar notNil 
						and: [(invocationRVar lookUp: self signature) = self]) 
							ifTrue:[^true]
				]
			]).
		].
	^false
]

{ #category : #'moosechef-scoping-filtering' }
FmxNGMethod >> methodScope [
"This is a special case, only meaningful when using #withoutSelfLoops. Rejecting self loops with a method means rejecting recursive calls."

	^ self
]

{ #category : #'Famix-Implementation' }
FmxNGMethod >> mooseNameOn: stream [ 
	| parent |
	parent := self belongsTo.
	parent ifNotNil: 
		[ parent mooseNameOn: stream.
		stream nextPut: $. ].
	self signature
		ifNotNil: [ stream nextPutAll: self signature ]
		ifNil: [ 
			self name ifNotNil: [ stream nextPutAll: self name] ]
]

{ #category : #'moosechef-scoping-filtering' }
FmxNGMethod >> namespaceScope [
	^ self parentType namespaceScope
]

{ #category : #'Famix-Extensions' }
FmxNGMethod >> numberOfAnnotationInstances [
	<MSEProperty: #numberOfAnnotationInstances type: #Number>
	<derived>
	<MSEComment: 'The number of annotation instances defined in the method'>

	^self
		lookUpPropertyNamed: #numberOfAnnotationInstances
		computedAs: [self annotationInstances size]
]

{ #category : #'Famix-Extensions' }
FmxNGMethod >> numberOfInvokedMethods [
	<MSEProperty: #numberOfInvokedMethods type: #Number>
	<MSEComment: 'Return a number corresponding to the number of invoked methods'>
	<derived>
	
	^ self privateState propertyAt: #numberOfInvokedMethods ifAbsentPut: [self invokedMethods size]
]

{ #category : #'Famix-Implementation' }
FmxNGMethod >> overridesMethod [
	^ self belongsTo superclassHierarchy collect: [ :each | each implementationOf: self signature ] thenSelect: #isNotNil
]

{ #category : #'moosechef-scoping-filtering' }
FmxNGMethod >> packageScope [

	^ self parentPackage ifNil:[ 
		|cl|
		cl := self parentType.
		cl isNil 
			ifTrue:[nil]
			ifFalse:[cl packageScope]
	]
]

{ #category : #'Famix-Implementation' }
FmxNGMethod >> parentScope [
	"Polymorphic alias to mimic GlobalVariable#parentScope and similar"

	^ self parentType parentScope
]

{ #category : #'Famix-Extensions' }
FmxNGMethod >> parentTypeIsStub [
	^ self parentType ifNotNil: [ :e | e isStub ] ifNil: [ true ]
]

{ #category : #'Famix-Implementation' }
FmxNGMethod >> printOn: aStream [
	parentType ifNotNil: [ aStream nextPutAll: parentType name ].
	aStream nextPutAll: '>>'.
	signature ifNotNil: [ aStream nextPutAll: signature ].
	aStream nextPutAll: ' (Method)'
]

{ #category : #'Famix-Extensions' }
FmxNGMethod >> providerMethods [
	^ self providerBehaviours select: [ :each | each isMethod ]
]

{ #category : #'Famix-Extensions' }
FmxNGMethod >> providerNamespaces [
	"returns a set of all the namespaces that the receiver depends on the receiver"

	^ (self queryAllOutgoing atScope: FmxNGNamespace) withoutSelfLoops
]

{ #category : #'Famix-Extensions' }
FmxNGMethod >> providerPackages [
	"returns a set of all the packages that the receiver depends on the receiver"

	^ (self queryAllOutgoing atScope: FmxNGPackage) withoutSelfLoops
]

{ #category : #'Famix-Extensions' }
FmxNGMethod >> providerTypes [
	<MSEProperty: #providerTypes type: #FmxNGType>
	<derived>
	<multivalued>
	<MSEComment: 'All types that the receiver depends on'>
	^ (self queryAllOutgoing atScope: FmxNGType) withoutSelfLoops
]

{ #category : #'Famix-Implementation' }
FmxNGMethod >> smalltalkClass [ 
	"Return the smalltalk class associated with the receiver. Note that it may be different than doing self parentType because the class and metaclass can be merged."
	
	^   ('*_class' match: self parentType name)
			ifTrue: [self parentType smalltalkClass]
			ifFalse: [self hasClassScope 
							ifTrue: [self parentType smalltalkClass class]
							ifFalse: [self parentType smalltalkClass]]
]

{ #category : #'Famix-Smalltalk' }
FmxNGMethod >> sourceText [
	self flag: 'This code should be delegated to the FAMIXPharoAnchor'.
	^ (self sourceLanguage isSmalltalk and: [ self class shouldSearchForSmalltalkCodeInImage ])
		ifTrue: [ [ | class |
			"take the normal class"
			class := Smalltalk at: self parentType instanceSide name asSymbol.
			self hasClassScope
				ifFalse: [ class sourceCodeAt: self name asSymbol ]
				ifTrue: [ class class sourceCodeAt: self name asSymbol ]	"dispatch on class or metaclass depending on method scope" ]
				on: Error
				do: [ super sourceText ]	"probably class is not in the system" ]
		ifFalse: [ super sourceText ]
]

{ #category : #'Famix-Smalltalk' }
FmxNGMethod >> timeStamp [
	<MSEProperty: #timeStamp type: #String>
	<MSEComment: 'TimeStamp of the method with author and time of the last change'>
	<package: 'Smalltalk'>
	
	^ self privateState attributeAt: #timeStamp ifAbsentPut: ['']
]

{ #category : #'Famix-Smalltalk' }
FmxNGMethod >> timeStamp: aTimeStamp [

	self privateState attributeAt: #timeStamp put: aTimeStamp
]

{ #category : #'moosechef-scoping-filtering' }
FmxNGMethod >> typeScope [

	^ self parentType 
]
