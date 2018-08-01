Class {
	#name : #FmxNGJavaMethod,
	#superclass : #FmxNGJavaContainerEntity,
	#traits : 'FmxNGTInvocable + FmxNGTMethod + FmxNGTTypedStructure + FmxNGTWithAccesses + FmxNGTWithCaughtExceptions + FmxNGTWithClassScope + FmxNGTWithDeclaredExceptions + FmxNGTWithImplicitVariables + FmxNGTWithInvocations + FmxNGTWithLocalVariables + FmxNGTWithParameters + FmxNGTWithReferences + FmxNGTWithSignature + FmxNGTWithThrownExceptions',
	#classTraits : 'FmxNGTInvocable classTrait + FmxNGTMethod classTrait + FmxNGTTypedStructure classTrait + FmxNGTWithAccesses classTrait + FmxNGTWithCaughtExceptions classTrait + FmxNGTWithClassScope classTrait + FmxNGTWithDeclaredExceptions classTrait + FmxNGTWithImplicitVariables classTrait + FmxNGTWithInvocations classTrait + FmxNGTWithLocalVariables classTrait + FmxNGTWithParameters classTrait + FmxNGTWithReferences classTrait + FmxNGTWithSignature classTrait + FmxNGTWithThrownExceptions classTrait',
	#category : #'FmxNGJava-Entities-Entities'
}

{ #category : #meta }
FmxNGJavaMethod class >> annotation [

	<MSEClass: #Method super: #FmxNGJavaContainerEntity>
	<package: #'FmxNGJava-Entities'>
	<generated>
	^self
]

{ #category : #generator }
FmxNGJavaMethod class >> generatedSlotNames [
	<generated>
	'FmxNGJavaMethod class>>#generatedSlotNames'.
	^ #()
]

{ #category : #generator }
FmxNGJavaMethod class >> generatedTraitNames [
	<generated>
	^ #(FmxNGTInvocable FmxNGTMethod FmxNGTTypedStructure FmxNGTWithAccesses FmxNGTWithCaughtExceptions FmxNGTWithClassScope FmxNGTWithDeclaredExceptions FmxNGTWithImplicitVariables FmxNGTWithInvocations FmxNGTWithLocalVariables FmxNGTWithParameters FmxNGTWithReferences FmxNGTWithSignature FmxNGTWithThrownExceptions)
]

{ #category : #meta }
FmxNGJavaMethod class >> requirements [

	<generated>
	^ { FmxNGJavaType }
]

{ #category : #'as yet unclassified' }
FmxNGJavaMethod >> accept: aVisitor [

	aVisitor visitMethod: self
]

{ #category : #'as yet unclassified' }
FmxNGJavaMethod >> accessedAttributes [
	
	"Returns the set of attributes of my class accessed by me (method). 
	Used to support the calculation of LCOM"
	
	^ self queryOutgoingAccesses opposites withinMyClass asSet select: #isAttribute
]

{ #category : #'as yet unclassified' }
FmxNGJavaMethod >> addOutgoingReference: aReference [ 
	outgoingReferences add: aReference
]

{ #category : #accessing }
FmxNGJavaMethod >> belongsTo [

	<generated>
	^ self parentType

]

{ #category : #accessing }
FmxNGJavaMethod >> belongsTo: anObject [

	<generated>
	self parentType: anObject

]

{ #category : #accessing }
FmxNGJavaMethod >> category [
	<MSEProperty: #category type: #String>
	<MSEComment: 'Category of the method'>
	<package: 'Smalltalk'>
	
	^ self privateState attributeAt: #category ifAbsentPut: [ nil ]
]

{ #category : #'as yet unclassified' }
FmxNGJavaMethod >> clientBehaviours [
	<MSEProperty: #clientBehaviours type: #FmxNGJavaMethod> <multivalued> <derived>
	<MSEComment: 'All behaviours that depend on the receiver'>
	^ self invokingBehaviours 
]

{ #category : #'as yet unclassified' }
FmxNGJavaMethod >> clientClasses [
	self deprecated: 'use clientTypes instead'.
	^ self clientTypes
]

{ #category : #'as yet unclassified' }
FmxNGJavaMethod >> clientMethods [
	^ self clientBehaviours select: [ :each | each isMethod ]
]

{ #category : #'as yet unclassified' }
FmxNGJavaMethod >> clientNamespaces [
	"returns a set of all the namespaces that depend on the receiver"

	^ (self queryAllIncoming atScope: FmxNGTNamespace) withoutSelfLoops
]

{ #category : #'as yet unclassified' }
FmxNGJavaMethod >> clientPackages [
	"returns a set of all the packages that depend on the receiver"

	^ (self queryAllIncoming atScope: FmxNGTPackage) withoutSelfLoops
]

{ #category : #'as yet unclassified' }
FmxNGJavaMethod >> clientTypes [
	<MSEProperty: #clientTypes type: #FmxNGJavaType>
	<multivalued>
	<derived>
	<MSEComment: 'All types that depend on the receiver'>
	^ (self queryAllIncoming atScope: FmxNGTType) withoutSelfLoops
]

{ #category : #'as yet unclassified' }
FmxNGJavaMethod >> compiledMethod [
	"Return the compiled method associated to the receiver or nil"
	
	^ self smalltalkClass  compiledMethodAt: self name asSymbol
	
	
]

{ #category : #'as yet unclassified' }
FmxNGJavaMethod >> computeNumberOfLinesOfCode [
	self hasSourceAnchor 
		ifTrue: [ ^ self sourceAnchor lineCount ].
	^ (self sourceText = '')
			ifTrue: [ self notExistentMetricValue ]
			ifFalse: [ self sourceText lineCount ]
]

{ #category : #'as yet unclassified' }
FmxNGJavaMethod >> computeNumberOfLinesOfCodeIfSmalltalk [
	| parser |
	
	parser := RBVisitorForFAMIXMetrics new.
	parser processMethod: self usingImporter: nil inModel: nil.
	^ parser numberOfLinesOfCode
]

{ #category : #'as yet unclassified' }
FmxNGJavaMethod >> copyFrom: anEntity within: aVisitor [

	super copyFrom: anEntity within: aVisitor.
	self kind: anEntity kind copy.
	self category: anEntity category copy.


]

{ #category : #'as yet unclassified' }
FmxNGJavaMethod >> cyclomaticComplexity [
	<MSEProperty: #cyclomaticComplexity type: #Number>
	<MSEComment: 'The number of linear-independent paths through a method.'>
	^ self
		lookUpPropertyNamed: #cyclomaticComplexity
		computedAs: [ self mooseModel isSmalltalk
				ifTrue: [ | parser |
					parser := RBVisitorForFAMIXMetrics new.
					parser processMethod: self usingImporter: nil inModel: nil.
					parser cyclomaticNumber2 ]
				ifFalse: [ self notExistentMetricValue ] ]
]

{ #category : #'as yet unclassified' }
FmxNGJavaMethod >> cyclomaticComplexity: aNumber [

	self privateState propertyAt: #cyclomaticComplexity put: aNumber
]

{ #category : #'as yet unclassified' }
FmxNGJavaMethod >> hasEmptyBody [
	"Copied from FAMIX2.
	 The closest we can get in FAMIX2 to determine if a body is empty is to check if the method
	 performs no invocations and/or accesses. The only thing left to do would be the declaration
	 of local variables (that are not accesses afterwards).

	Note that an abstract method with only 'self subclassResponsibility' is not regarded as an 
	empty method in this scheme (which is questionable)."
	"note that the presence of statements should be checked too for that..."
	^ self numberOfAccesses = 0 and: [ self numberOfOutgoingInvocations = 0 ]
]

{ #category : #'as yet unclassified' }
FmxNGJavaMethod >> hasInnerClassImplementingMethods [
	^ self innerClassesImplementingMethods isNotEmpty
]

{ #category : #'as yet unclassified' }
FmxNGJavaMethod >> hierarchyNestingLevel [
	<MSEProperty: #hierarchyNestingLevel type: #Number>
	<derived>
	<MSEComment: 'The nesting level in the hierarchy'>
	
	^self
		lookUpPropertyNamed: #hierarchyNestingLevel
		computedAs: [self belongsTo hierarchyNestingLevel]
]

{ #category : #'as yet unclassified' }
FmxNGJavaMethod >> hierarchyNestingLevel: aNumber [

	self privateState propertyAt: #hierarchyNestingLevel put: aNumber
]

{ #category : #'as yet unclassified' }
FmxNGJavaMethod >> implementMethod [
	^ self belongsTo implementedInterfaces
		collect: [ :each | each implementationOf: self signature ]
]

{ #category : #'as yet unclassified' }
FmxNGJavaMethod >> initialize [
	super initialize.
	hasClassScope := false
]

{ #category : #'as yet unclassified' }
FmxNGJavaMethod >> innerClassesImplementingMethods [
	^ self types select: [ :el | el methods anySatisfy: [ :m | m isStub not ] ]
]

{ #category : #'as yet unclassified' }
FmxNGJavaMethod >> invokedBehaviours [
	^ self queryAllOutgoingInvocations opposites
]

{ #category : #'as yet unclassified' }
FmxNGJavaMethod >> invokedMethods [
	<MSEProperty: #invokedMethods type: #FmxNGJavaMethod> <derived> <multivalued>
	<MSEComment: 'The methods invoked by the receiver'>
	
	^ self invokedBehaviours select: [ :each | each isMethod ]
]

{ #category : #'as yet unclassified' }
FmxNGJavaMethod >> invokingBehaviours [
	^ self queryAllIncomingInvocations opposites
]

{ #category : #'as yet unclassified' }
FmxNGJavaMethod >> invokingMethods [
	<MSEProperty: #invokingMethods type: #FmxNGJavaMethod> <derived> <multivalued>
	<MSEComment: 'The methods invoking the receiver'>

	^ self invokingBehaviours select: [ :each | each isMethod ]
]

{ #category : #'as yet unclassified' }
FmxNGJavaMethod >> isCalledInternally [
	^self incomingInvocations
		anySatisfy:
			[:each | each sender isMethod and: [each sender belongsTo == self belongsTo]]
]

{ #category : #'as yet unclassified' }
FmxNGJavaMethod >> isClassInitializer [
	<MSEProperty: #isClassInitializer type: #Boolean>
	<derived>
	<MSEComment: 'True if the method is an initializer of the class (i.e. contains the attribute init env)'>
	^ #initializer = self kind
		or: [ self privateState propertyAt: #isClassInitializer ifAbsent: [ false ] ]
]

{ #category : #'as yet unclassified' }
FmxNGJavaMethod >> isDetectedGetter [
	^ self outgoingInvocations isEmpty and: [ 
		self accesses size = 1 and: [ 
			self accesses first isWrite not ] ]
]

{ #category : #'as yet unclassified' }
FmxNGJavaMethod >> isDetectedSetter [
	^ self outgoingInvocations isEmpty and: [ 
		self accesses size = 1 and: [ 
			self accesses first isWrite ] ]
]

{ #category : #'as yet unclassified' }
FmxNGJavaMethod >> isImplementing [
	<MSEProperty: #isImplementing type: #Boolean>
	<derived>
	<MSEComment: 'The method is implementing a method defined in an interface'>
	^ self belongsTo directSuperclasses
		anySatisfy: [ :each | each isInterface and: [ each understands: self signature ] ]
]

{ #category : #testing }
FmxNGJavaMethod >> isJUnit4Test [
	<MSEProperty: #isJUnit4Test type: #Boolean>
	<derived>
	<MSEComment: 'True if the method is considered as a Junit 4 Java test'>
	^ self isAnnotatedWith: 'Test'
]

{ #category : #'as yet unclassified' }
FmxNGJavaMethod >> isOverriden [
	<MSEProperty: #isOverriden type: #Boolean>
	<derived>
	<MSEComment: 'The method is overrided in a sub class'>
	"If we have a stub and we don't have the container, we can't have the information"
	(self belongsTo isNil and: [ self isStub ]) ifTrue: [ ^ false ].
	
	^ self belongsTo subclassHierarchyGroup anySatisfy: [ :each | each hasMethodWithSignature: self signature ]
]

{ #category : #'as yet unclassified' }
FmxNGJavaMethod >> isOverriding [
	<MSEProperty: #isOverriding type: #Boolean>
	<derived>
	<MSEComment: 'The method is overrinding a method defined in a super class'>
	
	^self belongsTo directSuperclasses anySatisfy: [:each | 
		each isInterface not and: [each understands: self signature]]
]

{ #category : #'as yet unclassified' }
FmxNGJavaMethod >> isSurelyInvokedBy: aFAMIXMethod [ 
	 
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

{ #category : #'as yet unclassified' }
FmxNGJavaMethod >> methodScope [
"This is a special case, only meaningful when using #withoutSelfLoops. Rejecting self loops with a method means rejecting recursive calls."

	^ self
]

{ #category : #'as yet unclassified' }
FmxNGJavaMethod >> mooseNameOn: stream [ 
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

{ #category : #'as yet unclassified' }
FmxNGJavaMethod >> namespaceScope [
	^ self parentType namespaceScope
]

{ #category : #'as yet unclassified' }
FmxNGJavaMethod >> numberOfAccesses [
	<MSEProperty: #numberOfAccesses type: #Number>
	<derived>
	<MSEComment: 'The number of accesses from a method'>
	
	^ self 
		lookUpPropertyNamed: #numberOfAccesses
		computedAs: [ self accesses size ]
]

{ #category : #'as yet unclassified' }
FmxNGJavaMethod >> numberOfAnnotationInstances [
	<MSEProperty: #numberOfAnnotationInstances type: #Number>
	<derived>
	<MSEComment: 'The number of annotation instances defined in the method'>

	^self
		lookUpPropertyNamed: #numberOfAnnotationInstances
		computedAs: [self annotationInstances size]
]

{ #category : #'as yet unclassified' }
FmxNGJavaMethod >> numberOfComments [
	<MSEProperty: #numberOfComments type: #Number>
	<MSEComment: 'The number of comment fragments'>
	<derived>
	^ self lookUpPropertyNamed: #numberOfComments computedAs: [ self comments size ]
]

{ #category : #'as yet unclassified' }
FmxNGJavaMethod >> numberOfComments: aNumber [

	self privateState propertyAt: #numberOfComments put: aNumber
]

{ #category : #'as yet unclassified' }
FmxNGJavaMethod >> numberOfConditionals [
	<MSEProperty: #numberOfConditionals type: #Number>
	<MSEComment: 'The number of conditionals in a method'>
	^ self
		lookUpPropertyNamed: #numberOfConditionals
		computedAs: [ 
			self mooseModel isSmalltalk
				ifTrue: [ 
					| parser |
					parser := RBVisitorForFAMIXMetrics new.
					parser processMethod: self usingImporter: nil inModel: nil.
					parser numberOfConditionals ]
				ifFalse: [ self notExistentMetricValue ] ]
]

{ #category : #'as yet unclassified' }
FmxNGJavaMethod >> numberOfConditionals: aNumber [

	self privateState propertyAt: #numberOfConditionals put: aNumber
]

{ #category : #'as yet unclassified' }
FmxNGJavaMethod >> numberOfInvokedMethods [
	<MSEProperty: #numberOfInvokedMethods type: #Number>
	<MSEComment: 'Return a number corresponding to the number of invoked methods'>
	<derived>
	
	^ self privateState propertyAt: #numberOfInvokedMethods ifAbsentPut: [self invokedMethods size]
]

{ #category : #'as yet unclassified' }
FmxNGJavaMethod >> numberOfLinesOfCode [
	<MSEProperty: #numberOfLinesOfCode type: #Number>
	<MSEComment: 'The number of lines of code in a method.'>
	^ self
		lookUpPropertyNamed: #numberOfLinesOfCode
		computedAs: [ self computeNumberOfLinesOfCode ]
]

{ #category : #'as yet unclassified' }
FmxNGJavaMethod >> numberOfLinesOfCode: aNumber [

	self privateState propertyAt: #numberOfLinesOfCode put: aNumber
]

{ #category : #'as yet unclassified' }
FmxNGJavaMethod >> numberOfMessageSends [
	<MSEProperty: #numberOfMessageSends type: #Number>
	<derived>
	<MSEComment: 'The number of message from a method'>
	^ self
		lookUpPropertyNamed: #numberOfMessageSends
		computedAs: [ 
			self mooseModel isSmalltalk
				ifTrue: [ 
					| parser |
					parser := RBVisitorForFAMIXMetrics new.
					parser processMethod: self usingImporter: nil inModel: nil.
					parser numberOfMessageSends ]
				ifFalse: [ self notExistentMetricValue ] ]
]

{ #category : #'as yet unclassified' }
FmxNGJavaMethod >> numberOfOutgoingInvocations [
	<MSEProperty: #numberOfOutgoingInvocations type: #Number>
	<derived>
	<MSEComment: 'The number of invocations in a method'>
	
	^self
		lookUpPropertyNamed: #numberOfOutgoingInvocations
		computedAs: [self outgoingInvocations size]
]

{ #category : #'as yet unclassified' }
FmxNGJavaMethod >> numberOfStatements [
	<MSEProperty: #numberOfStatements type: #Number>
	<MSEComment: 'The number of statements in a method'>
	^ self
		lookUpPropertyNamed: #numberOfStatements
		computedAs: [ self mooseModel isSmalltalk
				ifTrue: [ | parser |
					parser := RBVisitorForFAMIXMetrics new.
					parser processMethod: self usingImporter: nil inModel: nil.
					parser numberOfStatements ]
				ifFalse: [ self notExistentMetricValue ] ]
]

{ #category : #'as yet unclassified' }
FmxNGJavaMethod >> numberOfStatements: aNumber [

	self privateState propertyAt: #numberOfStatements put: aNumber
]

{ #category : #'as yet unclassified' }
FmxNGJavaMethod >> outgoingTypeDeclarations [
	^ self declaredType ifNil: [ {} ] ifNotNil: [ :dt | {(MooseChefTypeDeclarationAssociation newFrom: self to: dt)} ]
]

{ #category : #'as yet unclassified' }
FmxNGJavaMethod >> overridesMethod [
	^ self belongsTo superclassHierarchy collect: [ :each | each implementationOf: self signature ] thenSelect: #isNotNil
]

{ #category : #'as yet unclassified' }
FmxNGJavaMethod >> packageScope [

	^ self parentPackage ifNil:[ 
		|cl|
		cl := self parentType.
		cl isNil 
			ifTrue:[nil]
			ifFalse:[cl packageScope]
	]
]

{ #category : #'as yet unclassified' }
FmxNGJavaMethod >> parentScope [
	"Polymorphic alias to mimic GlobalVariable#parentScope and similar"

	^ self parentType parentScope
]

{ #category : #'Famix-Extensions' }
FmxNGJavaMethod >> parentTypeIsStub [
	^ self parentType ifNotNil: [ :e | e isStub ] ifNil: [ true ]
]

{ #category : #'as yet unclassified' }
FmxNGJavaMethod >> printOn: aStream [
	parentType ifNotNil: [ aStream nextPutAll: parentType name ].
	aStream nextPutAll: '>>'.
	signature ifNotNil: [ aStream nextPutAll: signature ].
	aStream nextPutAll: ' (Method)'
]

{ #category : #'as yet unclassified' }
FmxNGJavaMethod >> providerBehaviours [
	<MSEProperty: #providerBehaviours type: #FmxNGJavaMethod> <derived> <multivalued>
	<MSEComment: 'All behaviours that the receiver depends on'>

	^ self invokedBehaviours 
]

{ #category : #'as yet unclassified' }
FmxNGJavaMethod >> providerClasses [
	self deprecated: 'use providerTypes'.
	^ self providerTypes
]

{ #category : #'as yet unclassified' }
FmxNGJavaMethod >> providerMethods [
	^ self providerBehaviours select: [ :each | each isMethod ]
]

{ #category : #'as yet unclassified' }
FmxNGJavaMethod >> providerNamespaces [
	"returns a set of all the namespaces that the receiver depends on the receiver"

	^ (self queryAllOutgoing atScope: FmxNGTNamespace) withoutSelfLoops
]

{ #category : #'as yet unclassified' }
FmxNGJavaMethod >> providerPackages [
	"returns a set of all the packages that the receiver depends on the receiver"

	^ (self queryAllOutgoing atScope: FmxNGTPackage) withoutSelfLoops
]

{ #category : #'as yet unclassified' }
FmxNGJavaMethod >> providerTypes [
	<MSEProperty: #providerTypes type: #FmxNGJavaType>
	<derived>
	<multivalued>
	<MSEComment: 'All types that the receiver depends on'>
	^ (self queryAllOutgoing atScope: FmxNGTType) withoutSelfLoops
]

{ #category : #'as yet unclassified' }
FmxNGJavaMethod >> typeScope [

	^ self parentType 
]
