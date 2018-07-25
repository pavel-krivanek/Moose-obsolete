Class {
	#name : #FmxNGJavaNamespace,
	#superclass : #FmxNGJavaScopingEntity,
	#traits : 'FmxNGTNamespace',
	#classTraits : 'FmxNGTNamespace classTrait',
	#category : #'FmxNGJava-Entities-Entities'
}

{ #category : #meta }
FmxNGJavaNamespace class >> annotation [

	<MSEClass: #Namespace super: #FmxNGJavaScopingEntity>
	<package: #'FmxNGJava-Entities'>
	<generated>
	^self
]

{ #category : #generator }
FmxNGJavaNamespace class >> generatedSlotNames [
	<generated>
	'FmxNGJavaNamespace class>>#generatedSlotNames'.
	^ #()
]

{ #category : #generator }
FmxNGJavaNamespace class >> generatedTraitNames [
	<generated>
	^ #(FmxNGTNamespace)
]

{ #category : #meta }
FmxNGJavaNamespace class >> requirements [

	<generated>
	^ {  }
]

{ #category : #'as yet unclassified' }
FmxNGJavaNamespace >> abstractness [
	"Abstractness is the ratio between the number of abstract classes and the total number of classes in a package, in the range [0, 1]. 0 means the package is fully concrete, 1 it is fully abstract."
	<MSEProperty: #abstractness type: #Number>
	<derived>
	<MSEComment: 'Abstractness of a namespace'>

	| nsClasses |
	nsClasses := self allClasses select: [:c | c isInstanceSide].
	(nsClasses size == 0) ifTrue: [^nil].
	
	^ (nsClasses select: [:c | c isAbstract]) size / (nsClasses size) asFloat
]

{ #category : #'as yet unclassified' }
FmxNGJavaNamespace >> abstractness: aNumber [

	self privateState propertyAt: #abstractness put: aNumber
]

{ #category : #'as yet unclassified' }
FmxNGJavaNamespace >> accept: aVisitor [

	aVisitor visitNamespace: self
]

{ #category : #'as yet unclassified' }
FmxNGJavaNamespace >> afferentCoupling [
	<MSEProperty: #afferentCoupling type: #Number>
	<derived>
	<MSEComment: 'Afferent Coupling of a namespace Afferent is the number of classes that depend upon this namespace'>
	^ ((self queryAllIncoming atScope: FmxNGTType) outOfMyNamespace select: [ :c | c isInstanceSide ]) size
]

{ #category : #'as yet unclassified' }
FmxNGJavaNamespace >> afferentCoupling: aNumber [

	self privateState propertyAt: #afferentCoupling put: aNumber
]

{ #category : #'as yet unclassified' }
FmxNGJavaNamespace >> allParentsUpTo: aNamespace [
	(self parentScope isNil or: [self parentScope = aNamespace ]) ifTrue: [ ^ OrderedCollection new ].
	^ self parentScope withAllParentsUpTo: aNamespace
]

{ #category : #'as yet unclassified' }
FmxNGJavaNamespace >> bunchCohesion [
	"Computing cohesion (Bunch formula)"

	<MSEProperty: #bunchCohesion type: #Number>
	<derived>
	<MSEComment: 'Bunch Cohesion of a namespace. It is also considered anonymous and inner classes.'>
	| myClasses intraConnectivities |
	(myClasses := self classes) union: (myClasses flatCollect: [ :c | c allRecursiveTypes ]).
	myClasses size == 0
		ifTrue: [ ^ nil ].
	intraConnectivities := (myClasses collect: [ :c | (c queryOutgoingDependencies atScope: FmxNGTType) withinMyNamespace ]) inject: 0 into: [ :subTotal :each | subTotal + each size ].
	^ intraConnectivities / myClasses size squared asFloat
]

{ #category : #'as yet unclassified' }
FmxNGJavaNamespace >> bunchCohesion: aNumber [

	self privateState propertyAt: #bunchCohesion put: aNumber
]

{ #category : #'as yet unclassified' }
FmxNGJavaNamespace >> bunchCouplingWith: aNamespace [
	"Computing coupling (Bunch formula) between receiver and aNamespace"

	| myClasses otherClasses interConnectivities |
	myClasses := self classes.
	myClasses := myClasses union: (myClasses flatCollect: [ :c | c allRecursiveTypes ]).
	otherClasses := aNamespace classes.
	otherClasses := otherClasses union: (otherClasses flatCollect: [ :c | c allRecursiveTypes ]).
	(myClasses size == 0 or: [ otherClasses size == 0 ])
		ifTrue: [ ^ nil ].

	"All outgoing dependencies"
	interConnectivities := (myClasses collect: [ :c | (c queryOutgoingDependencies atScope: FmxNGTType) withinNamespace: aNamespace ]) inject: 0 into: [ :subTotal :each | subTotal + each size ].

	"Plus all incoming dependencies"
	interConnectivities := interConnectivities
		+ ((myClasses collect: [ :c | (c queryIncomingDependencies atScope: FmxNGTType) withinNamespace: aNamespace ]) inject: 0 into: [ :subTotal :each | subTotal + each size ]).
	^ interConnectivities / (2 * myClasses size * otherClasses size) asFloat
]

{ #category : #'as yet unclassified' }
FmxNGJavaNamespace >> bunchCouplingWithAll [
	"Computing coupling (Bunch formula) between receiver and all namespaces"

	| myClasses interConnectivities allClasses |
	myClasses := self classes.
	myClasses := myClasses union: (myClasses flatCollect: [ :c | c allRecursiveTypes ]).
	allClasses := self mooseModel allModelNamespaces flatCollect: [ :aNamespace | aNamespace classes ].
	allClasses := allClasses union: (allClasses flatCollect: [ :aClass | aClass allRecursiveTypes ]).
	(myClasses isEmpty or: [ allClasses isEmpty ])
		ifTrue: [ ^ nil ].

	"All outgoing dependencies"
	interConnectivities := (myClasses collect: [ :c | (c queryOutgoingDependencies atScope: FmxNGTType) outOfMyNamespace ])
		inject: 0
		into: [ :subTotal :each | subTotal + (each select: [ :c | c isInstanceSide ]) size ].

	"Plus all incoming dependencies"
	interConnectivities := interConnectivities
		+ ((myClasses collect: [ :c | (c queryIncomingDependencies atScope: FmxNGTType) outOfMyNamespace ]) inject: 0 into: [ :subTotal :each | subTotal + (each select: [ :c | c isInstanceSide ]) size ]).
	^ interConnectivities / (2 * myClasses size * (allClasses size - myClasses size)) asFloat
]

{ #category : #'as yet unclassified' }
FmxNGJavaNamespace >> childrenOfMyKind [
	^ self childScopes
]

{ #category : #'as yet unclassified' }
FmxNGJavaNamespace >> clientClasses [
	self deprecated: 'use clientTypes'.
	^ self clientTypes
]

{ #category : #'as yet unclassified' }
FmxNGJavaNamespace >> clientNamespaces [
	"MooseCook was: ^ self inheritedByNamespaces union: self invokingNamespaces"

	^ (self queryAllIncoming atScope: FmxNGTNamespace) withoutSelfLoops
]

{ #category : #'as yet unclassified' }
FmxNGJavaNamespace >> clientTypes [
	<MSEProperty: #clientTypes type: #FmxNGJavaType>
	<multivalued>
	<derived>
	<MSEComment: 'All types that depend on the receiver'>
	^ (self queryAllIncoming atScope: FmxNGTType) withoutSelfLoops
]

{ #category : #'as yet unclassified' }
FmxNGJavaNamespace >> containedEntities [
	^self types
]

{ #category : #'as yet unclassified' }
FmxNGJavaNamespace >> containedEntities: collection [
	self types: collection.
]

{ #category : #'as yet unclassified' }
FmxNGJavaNamespace >> distance [
	"D = A + I - 1. A package should be balanced between abstractness and instability, i.e., somewhere between abstract and stable or concrete and unstable. This rule defines the main sequence by the equation A + I - 1 = 0. D is the distance to the main sequence."
	<MSEProperty: #distance type: #Number>
	<derived>
	<MSEComment: 'Distance of a namespace'>

	| abstractness instability |
	abstractness := self abstractness.
	instability := self instability.
	
	(abstractness isNil or: [instability isNil]) ifTrue: [^ nil].
	^ abstractness + instability - 1
]

{ #category : #'as yet unclassified' }
FmxNGJavaNamespace >> distance: aNumber [

	self privateState propertyAt: #distance put: aNumber
]

{ #category : #'as yet unclassified' }
FmxNGJavaNamespace >> efferentCoupling [
	"Efferent coupling for a module is the number of classes it depends upon"

	<MSEProperty: #efferentCoupling type: #Number>
	<derived>
	<MSEComment:
		'Efferent coupling for a module is the number of classes it depends upon'>
	^ ((self queryOutgoingDependencies outOfMyNamespace
		atScope: FmxNGTType) select: [ :c | c isInstanceSide ]) size
]

{ #category : #'as yet unclassified' }
FmxNGJavaNamespace >> efferentCoupling: aNumber [

	self privateState propertyAt: #efferentCoupling put: aNumber
]

{ #category : #'as yet unclassified' }
FmxNGJavaNamespace >> instability [
	"I =	Ce(P)/(Ce(P)+Ca(P)), in the range [0, 1]. 0 means package is maximally stable (i.e., no dependency to other packages and can not change without big consequences), 1 means it is unstable."
	<MSEProperty: #instability type: #Number>
	<derived>
	<MSEComment: 'Instability of a namespace'>
	
	| efferentCoupling afferentCoupling |
	
	efferentCoupling := self efferentCoupling.
	afferentCoupling := self afferentCoupling.
	(efferentCoupling + afferentCoupling) == 0 ifTrue: [^ nil].
	^ efferentCoupling / (efferentCoupling + afferentCoupling) asFloat
]

{ #category : #'as yet unclassified' }
FmxNGJavaNamespace >> instability: aNumber [

	self privateState propertyAt: #instability put: aNumber
]

{ #category : #testing }
FmxNGJavaNamespace >> isNamespace [
	^ true
]

{ #category : #'as yet unclassified' }
FmxNGJavaNamespace >> martinCohesion [
	"Computing cohesion as described by Robert C. Martin"

	<MSEProperty: #martinCohesion type: #Number>
	<derived>
	<MSEComment: 'Cohesion as defined by Robert C. Martin.'>
	| intraConnectivities myClasses |
	myClasses := self classes.
	myClasses := (myClasses union: (myClasses flatCollect: [ :c | c allRecursiveTypes ])) select: [ :c | c isInstanceSide ].
	myClasses size == 0
		ifTrue: [ ^ nil ].
	intraConnectivities := (myClasses collect: [ :c | (c queryOutgoingDependencies atScope: FmxNGTType) withoutSelfLoops withinMyNamespace ])
		inject: 0
		into: [ :subTotal :each | subTotal + (each select: [ :c | c isInstanceSide ]) size ].
	^ ((intraConnectivities + 1) / myClasses size) asFloat
]

{ #category : #'as yet unclassified' }
FmxNGJavaNamespace >> methods [
	^ self privateState 
			cacheAt: #methods 
			ifAbsentPut: [ 
				self classes flatCollect: #methods ]
]

{ #category : #'as yet unclassified' }
FmxNGJavaNamespace >> mooseNameOn: aStream [ 
	| parent |
	parent := self belongsTo.
	parent ifNotNil: 
		[ parent mooseNameOn: aStream.
		aStream
			nextPut: $:;
			nextPut: $: ].
	self name ifNotNil: [aStream nextPutAll: self name]
]

{ #category : #'as yet unclassified' }
FmxNGJavaNamespace >> namespaceScope [

	^ self 
]

{ #category : #'as yet unclassified' }
FmxNGJavaNamespace >> numberOfAttributes [
"	<property: #NOA longName: 'Number of attributes' description:
			'The number of attributes in a namespace'>"

	<MSEProperty: #numberOfAttributes type: #Number>
	<derived>
	<MSEComment: 'The number of attributes in a namespace'>
	
	^ self
		lookUpPropertyNamed: #numberOfAttributes
		computedAs: [self types inject: 0 into: [ :sum :each | sum + each numberOfAttributes] ]
]

{ #category : #'as yet unclassified' }
FmxNGJavaNamespace >> numberOfAttributes: aNumber [

	self privateState propertyAt: #numberOfAttributes put: aNumber
]

{ #category : #'as yet unclassified' }
FmxNGJavaNamespace >> numberOfClasses [
	<MSEProperty: #numberOfClasses type: #Number>
	<derived>
	<MSEComment: 'The number of classes in a namespace'>
	
	^self
		lookUpPropertyNamed: #numberOfClasses
		computedAs: [self types size]
]

{ #category : #'as yet unclassified' }
FmxNGJavaNamespace >> numberOfClasses: aNumber [

	self privateState propertyAt: #numberOfClasses put: aNumber
]

{ #category : #'as yet unclassified' }
FmxNGJavaNamespace >> numberOfLinesOfCode [
	<MSEProperty: #numberOfLinesOfCode type: #Number>
	<derived>
	<MSEComment: 'The number of lines of code in a namespace'>
	
	^self
		lookUpPropertyNamed: #numberOfLinesOfCode
		computedAs: [
			self functions inject: (self types inject: 0 into: [ :sum :each | sum + each numberOfLinesOfCode])
				into: [ :sum :each | sum + each numberOfLinesOfCode]]
]

{ #category : #'as yet unclassified' }
FmxNGJavaNamespace >> numberOfLinesOfCode: aNumber [

	self privateState propertyAt: #numberOfLinesOfCode put: aNumber
]

{ #category : #'as yet unclassified' }
FmxNGJavaNamespace >> numberOfMethods [
	<MSEProperty: #numberOfMethods type: #Number>
	<derived>
	<MSEComment: 'The number of methods in a namespace'>
	
	^self
		lookUpPropertyNamed: #numberOfMethods
		computedAs: [self types inject: 0 into: [ :sum :each | sum + each numberOfMethods ]]
]

{ #category : #'as yet unclassified' }
FmxNGJavaNamespace >> numberOfMethods: aNumber [

	self privateState propertyAt: #numberOfMethods put: aNumber
]

{ #category : #'as yet unclassified' }
FmxNGJavaNamespace >> numberOfNonInterfacesClasses [
	<MSEProperty: #numberOfNonInterfacesClasses type: #Number>
	<derived>
	<MSEComment: 'The number of non interfaces classes in a namespace'>
	
	^self
		lookUpPropertyNamed: #numberOfNonInterfacesClasses
		computedAs: [(self types reject: #isInterface) size]
]

{ #category : #'as yet unclassified' }
FmxNGJavaNamespace >> numberOfNonInterfacesClasses: aNumber [

	self privateState propertyAt: #numberOfNonInterfacesClasses put: aNumber
]

{ #category : #'as yet unclassified' }
FmxNGJavaNamespace >> packageScope [

	self shouldNotImplement
]

{ #category : #'as yet unclassified' }
FmxNGJavaNamespace >> printOn: aStream [ 
	self belongsTo ifNotNil: [:parent |
		parent printOn: aStream.
		aStream
			nextPut: $:;
			nextPut: $: ].
	self name ifNotNil: [ aStream nextPutAll: self name ].
	aStream nextPutAll: ' (Namespace)'
]

{ #category : #'as yet unclassified' }
FmxNGJavaNamespace >> providerClasses [
	self deprecated: 'use providerTypes'.
	^ self providerTypes
]

{ #category : #'as yet unclassified' }
FmxNGJavaNamespace >> providerNamespaces [
	"MooseCook was: ^ self inheritedNamespaces union: self invokedNamespaces"

	^ (self queryAllOutgoing atScope: FmxNGTNamespace) withoutSelfLoops
]

{ #category : #'as yet unclassified' }
FmxNGJavaNamespace >> providerTypes [
	<MSEProperty: #providerTypes type: #FmxNGJavaType>
	<derived>
	<multivalued>
	<MSEComment: 'All types that the receiver depends on'>
	^ (self queryAllOutgoing atScope: FmxNGTType) withoutSelfLoops
]

{ #category : #'as yet unclassified' }
FmxNGJavaNamespace >> selectWithinYourScope: aMooseQueryResult [
	^ aMooseQueryResult withinNamespace: self
]

{ #category : #'as yet unclassified' }
FmxNGJavaNamespace >> withAllParentsUpTo: aNamespace [
	^ (self parentScope allParentsUpTo: aNamespace) addFirst: self; yourself
]
