Extension { #name : #FAMIXMethod }

{ #category : #'*Famix-Extensions' }
FAMIXMethod >> accept: aVisitor [

	aVisitor visitMethod: self
]

{ #category : #'*famix-extensions-metrics-support' }
FAMIXMethod >> accessedAttributes [
	
	"Returns the set of attributes of my class accessed by me (method). 
	Used to support the calculation of LCOM"
	
	^ self queryOutgoingAccesses opposites withinMyClass asSet select: #isAttribute
]

{ #category : #'*famix-extensions-nav All Dependencies' }
FAMIXMethod >> clientClasses [
	self deprecated: 'use clientTypes instead'.
	^ self clientTypes
]

{ #category : #'*Famix-Extensions' }
FAMIXMethod >> clientMethods [
	^ self clientBehaviours select: [ :each | each isMethod ]
]

{ #category : #'*famix-extensions-nav All Dependencies' }
FAMIXMethod >> clientNamespaces [
	"returns a set of all the namespaces that depend on the receiver"

	^ (self queryAllIncoming atScope: FmxNGNamespace) withoutSelfLoops
]

{ #category : #'*famix-extensions-nav All Dependencies' }
FAMIXMethod >> clientPackages [
	"returns a set of all the packages that depend on the receiver"

	^ (self queryAllIncoming atScope: FmxNGPackage) withoutSelfLoops
]

{ #category : #'*famix-extensions-nav All Dependencies' }
FAMIXMethod >> clientTypes [
	<MSEProperty: #clientTypes type: #FAMIXType>
	<multivalued>
	<derived>
	<MSEComment: 'All types that depend on the receiver'>
	^ (self queryAllIncoming atScope: FmxNGType) withoutSelfLoops
]

{ #category : #'*Famix-Extensions' }
FAMIXMethod >> copyFrom: anEntity within: aVisitor [

	super copyFrom: anEntity within: aVisitor.
	self kind: anEntity kind copy.
	self category: anEntity category copy.


]

{ #category : #'*Famix-Extensions' }
FAMIXMethod >> hierarchyNestingLevel [
	<MSEProperty: #hierarchyNestingLevel type: #Number>
	<derived>
	<MSEComment: 'The nesting level in the hierarchy'>
	
	^self
		lookUpPropertyNamed: #hierarchyNestingLevel
		computedAs: [self belongsTo hierarchyNestingLevel]
]

{ #category : #'*Famix-Extensions' }
FAMIXMethod >> hierarchyNestingLevel: aNumber [

	self privateState propertyAt: #hierarchyNestingLevel put: aNumber
]

{ #category : #'*Famix-Extensions' }
FAMIXMethod >> invokedMethods [
	<MSEProperty: #invokedMethods type: #FAMIXMethod> <derived> <multivalued>
	<MSEComment: 'The methods invoked by the receiver'>
	
	^ self invokedBehaviours select: [ :each | each isMethod ]
]

{ #category : #'*Famix-Extensions' }
FAMIXMethod >> invokingMethods [
	<MSEProperty: #invokingMethods type: #FAMIXMethod> <derived> <multivalued>
	<MSEComment: 'The methods invoking the receiver'>

	^ self invokingBehaviours select: [ :each | each isMethod ]
]

{ #category : #'*Famix-Extensions' }
FAMIXMethod >> isDetectedGetter [
	^ self outgoingInvocations isEmpty and: [ 
		self accesses size = 1 and: [ 
			self accesses first isWrite not ] ]
]

{ #category : #'*Famix-Extensions' }
FAMIXMethod >> isDetectedSetter [
	^ self outgoingInvocations isEmpty and: [ 
		self accesses size = 1 and: [ 
			self accesses first isWrite ] ]
]

{ #category : #'*Famix-Extensions' }
FAMIXMethod >> isOverriden [
	<MSEProperty: #isOverriden type: #Boolean>
	<derived>
	<MSEComment: 'The method is overrided in a sub class'>
	^ self belongsTo subclassHierarchyGroup
		anySatisfy: [ :each | each hasMethodWithSignature: self signature ]
]

{ #category : #'*Famix-Extensions' }
FAMIXMethod >> isOverriding [
	<MSEProperty: #isOverriding type: #Boolean>
	<derived>
	<MSEComment: 'The method is overrinding a method defined in a super class'>
	
	^self belongsTo directSuperclasses anySatisfy: [:each | 
		each isInterface not and: [each understands: self signature]]
]

{ #category : #'*famix-extensions-InvocationTesting' }
FAMIXMethod >> isSurelyInvokedBy: aFAMIXMethod [ 
	 
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

{ #category : #'*Famix-Extensions' }
FAMIXMethod >> numberOfAnnotationInstances [
	<MSEProperty: #numberOfAnnotationInstances type: #Number>
	<derived>
	<MSEComment: 'The number of annotation instances defined in the method'>

	^self
		lookUpPropertyNamed: #numberOfAnnotationInstances
		computedAs: [self annotationInstances size]
]

{ #category : #'*Famix-Extensions' }
FAMIXMethod >> numberOfInvokedMethods [
	<MSEProperty: #numberOfInvokedMethods type: #Number>
	<MSEComment: 'Return a number corresponding to the number of invoked methods'>
	<derived>
	
	^ self privateState propertyAt: #numberOfInvokedMethods ifAbsentPut: [self invokedMethods size]
]

{ #category : #'*Famix-Extensions' }
FAMIXMethod >> parentTypeIsStub [
	^ self parentType ifNotNil: [ :e | e isStub ] ifNil: [ true ]
]

{ #category : #'*famix-extensions-nav All Dependencies' }
FAMIXMethod >> providerClasses [
	self deprecated: 'use providerTypes'.
	^ self providerTypes
]

{ #category : #'*Famix-Extensions' }
FAMIXMethod >> providerMethods [
	^ self providerBehaviours select: [ :each | each isMethod ]
]

{ #category : #'*famix-extensions-nav All Dependencies' }
FAMIXMethod >> providerNamespaces [
	"returns a set of all the namespaces that the receiver depends on the receiver"

	^ (self queryAllOutgoing atScope: FmxNGNamespace) withoutSelfLoops
]

{ #category : #'*famix-extensions-nav All Dependencies' }
FAMIXMethod >> providerPackages [
	"returns a set of all the packages that the receiver depends on the receiver"

	^ (self queryAllOutgoing atScope: FmxNGPackage) withoutSelfLoops
]

{ #category : #'*famix-extensions-nav All Dependencies' }
FAMIXMethod >> providerTypes [
	<MSEProperty: #providerTypes type: #FAMIXType>
	<derived>
	<multivalued>
	<MSEComment: 'All types that the receiver depends on'>
	^ (self queryAllOutgoing atScope: FmxNGType) withoutSelfLoops
]
