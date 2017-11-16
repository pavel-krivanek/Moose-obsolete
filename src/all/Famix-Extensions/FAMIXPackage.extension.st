Extension { #name : #FAMIXPackage }

{ #category : #'*famix-extensions-metrics' }
FAMIXPackage >> abstractness [
	"Abstractness is the ratio between the number of abstract classes and the total number of classes in a package, in the range [0, 1]. 0 means the package is fully concrete, 1 it is fully abstract."
	<MSEProperty: #abstractness type: #Number>
	<derived>
	<MSEComment: 'Abstractness of a package'>

	| nsClasses |
	nsClasses := self allClasses select: [:c | c isInstanceSide].
	(nsClasses size == 0) ifTrue: [^nil].
	
	^ (nsClasses select: [:c | c isAbstract]) size / (nsClasses size)
]

{ #category : #'*famix-extensions' }
FAMIXPackage >> accept: aVisitor [

	aVisitor visitPackage: self
]

{ #category : #'*famix-extensions-metrics' }
FAMIXPackage >> afferentCoupling [
	"Afferent coupling for a package is the number of classes that depend upon this package"

	<MSEProperty: #afferentCoupling type: #Number>
	<derived>
	<MSEComment: 'Afferent Coupling of a package'>
	^ ((self queryIncomingDependencies atScope: FAMIXType) outOfMyPackage
		select: [ :c | c isInstanceSide ]) size
]

{ #category : #'*famix-extensions' }
FAMIXPackage >> allClasses [
	^self classes union: self extensionClasses
]

{ #category : #'*famix-extensions-metrics' }
FAMIXPackage >> bunchCohesion [
	"Computing cohesion (Bunch formula)"

	<MSEProperty: #bunchCohesion type: #Number>
	<derived>
	<MSEComment: 'Bunch Cohesion of a package. It is also considered anonymous and inner classes (in Java).'>
	| myClasses intraConnectivities |
	myClasses := self classes.
	myClasses := myClasses union: (myClasses flatCollect: [ :c | c allRecursiveTypes ]).
	myClasses := myClasses select: [ :c | c isInstanceSide ].
	myClasses size == 0
		ifTrue: [ ^ nil ].
	intraConnectivities := (myClasses collect: [ :c | (c queryOutgoingDependencies atScope: FAMIXType) withinMyPackage ])
		inject: 0
		into: [ :subTotal :each | subTotal + (each select: [ :c | c isInstanceSide ]) size ].
	^ intraConnectivities / myClasses size squared asFloat
]

{ #category : #'*famix-extensions-metrics' }
FAMIXPackage >> bunchCouplingWith: aPackage [
	"Computing coupling (Bunch formula) between receiver and aPackage"

	| myClasses otherClasses interConnectivities |
	myClasses := self classes.
	myClasses := (myClasses asSet union: (myClasses flatCollect: [ :c | c allRecursiveTypes ])) select: [ :c | c isInstanceSide ].
	otherClasses := aPackage classes.
	otherClasses := (otherClasses asSet union: (otherClasses flatCollect: [ :c | c allRecursiveTypes ])) select: [ :c | c isInstanceSide ].
	(myClasses size == 0 or: [ otherClasses size == 0 ])
		ifTrue: [ ^ nil ].

	"All outgoing dependencies"
	interConnectivities := (myClasses collect: [ :c | (c queryOutgoingDependencies atScope: FAMIXType) withinPackage: aPackage ])
		inject: 0
		into: [ :subTotal :each | subTotal + (each select: [ :c | c isInstanceSide ]) size ].

	"Plus all incoming dependencies"
	interConnectivities := interConnectivities
		+
			((myClasses collect: [ :c | (c queryIncomingDependencies atScope: FAMIXType) withinPackage: aPackage ])
				inject: 0
				into: [ :subTotal :each | subTotal + (each select: [ :c | c isInstanceSide ]) size ]).
	^ interConnectivities / (2 * myClasses size * otherClasses size) asFloat
]

{ #category : #'*famix-extensions-metrics' }
FAMIXPackage >> bunchCouplingWithAll [
	"Computing coupling (Bunch formula) between receiver and all packages"

	| myClasses interConnectivities allClasses |
	myClasses := self classes.
	myClasses := myClasses union: (myClasses flatCollect: [ :c | c allRecursiveTypes ]).
	allClasses := self mooseModel allModelClasses.
	myClasses size == 0
		ifTrue: [ ^ nil ].

	"All outgoing dependencies"
	interConnectivities := (myClasses collect: [ :c | (c queryOutgoingDependencies atScope: FAMIXType) outOfMyPackage ])
		inject: 0
		into: [ :subTotal :each | subTotal + (each select: [ :c | c isInstanceSide ]) size ].

	"Plus all incoming dependencies"
	interConnectivities := interConnectivities
		+
			((myClasses collect: [ :c | (c queryIncomingDependencies atScope: FAMIXType) outOfMyPackage ]) inject: 0 into: [ :subTotal :each | subTotal + (each select: [ :c | c isInstanceSide ]) size ]).
	^ interConnectivities / (2 * myClasses size * (allClasses size - myClasses size)) asFloat
]

{ #category : #'*famix-extensions' }
FAMIXPackage >> childrenOfMyKind [
	^ self childNamedEntities allWithSubTypesOf: self class
]

{ #category : #'*famix-extensions-nav All Dependencies' }
FAMIXPackage >> clientClasses [
	self deprecated: 'use clientTypes'.
	^ self clientTypes
]

{ #category : #'*famix-extensions-nav All Dependencies' }
FAMIXPackage >> clientPackages [
	"^ self inheritedByPackages union: self invokingPackages"

	^ (self queryAllIncoming atScope: FAMIXPackage) withoutSelfLoops
]

{ #category : #'*famix-extensions-nav All Dependencies' }
FAMIXPackage >> clientTypes [
	<MSEProperty: #clientTypes type: #FAMIXType>
	<multivalued>
	<derived>
	<MSEComment: 'All types that depend on the receiver'>
	^ (self queryAllIncoming atScope: FAMIXType) withoutSelfLoops
]

{ #category : #'*famix-extensions-accessing' }
FAMIXPackage >> concernedClassesCollection [
	"it returns the collection of the receiver's concerned classes (See #__concernedClassesCollection). Before returning this value it verifies if it is cached in the receiver's state under the properiety #concernedClasses."

	^self privateState cacheAt: #concernedClassesCollection
		ifAbsentPut: (self extensionClasses union: self localClasses)
]

{ #category : #'*famix-extensions' }
FAMIXPackage >> containedEntities [
	^ super containedEntities union: self childNamedEntities
]

{ #category : #'*famix-extensions-accessing' }
FAMIXPackage >> containedEntities: collection [
	self definedClasses: collection.
]

{ #category : #'*famix-extensions' }
FAMIXPackage >> copyFrom: anEntity within: aVisitor [

	super copyFrom: anEntity within: aVisitor.
	
	anEntity childNamedEntities do: [:c|
		self addChildNamedEntity: (aVisitor visit: c ) ].

]

{ #category : #'*famix-extensions-metrics' }
FAMIXPackage >> distance [
	"D = A + I - 1. A package should be balanced between abstractness and instability, i.e., somewhere between abstract and stable or concrete and unstable. This rule defines the main sequence by the equation A + I - 1 = 0. D is the distance to the main sequence."
	<MSEProperty: #distance type: #Number>
	<derived>
	<MSEComment: 'Distance of a package'>

	
	| abstractness instability |
	abstractness := self abstractness.
	instability := self instability.
	
	(abstractness isNil or: [instability isNil]) ifTrue: [^ nil].
	^ abstractness + instability - 1
	
]

{ #category : #'*famix-extensions-metrics' }
FAMIXPackage >> efferentCoupling [
	"Efferent coupling for a package is the number of classes it depends upon"

	<MSEProperty: #efferentCoupling type: #Number>
	<derived>
	<MSEComment: 'Efferent Coupling of a package'>
	^ ((self queryAllOutgoing outOfMyPackage atScope: FAMIXType) select: [ :c | c isInstanceSide ]) size
]

{ #category : #'*famix-extensions-metrics' }
FAMIXPackage >> instability [
	"I =	Ce(P)/(Ce(P)+Ca(P)), in the range [0, 1]. 0 means package is maximally stable (i.e., no dependency to other packages and can not change without big consequences), 1 means it is unstable."

	<MSEProperty: #instability type: #Number>
	<derived>
	<MSEComment: 'Instability of a package'>

	| efferentCoupling afferentCoupling |
	
	efferentCoupling := self efferentCoupling.
	afferentCoupling := self afferentCoupling.
	(efferentCoupling + afferentCoupling) == 0 ifTrue: [^ nil].
	^ efferentCoupling / (efferentCoupling + afferentCoupling)
]

{ #category : #'*famix-extensions-metrics' }
FAMIXPackage >> martinCohesion [
	"Computing cohesion as described by Robert C. Martin"

	<MSEProperty: #martinCohesion type: #Number>
	<derived>
	<MSEComment: 'Cohesion as defined by Robert C. Martin.'>
	| intraConnectivities myClasses |
	myClasses := self classes.
	myClasses := (myClasses union: (myClasses flatCollect: [ :c | c allRecursiveTypes ])) select: [ :c | c isInstanceSide ].
	myClasses size == 0
		ifTrue: [ ^ nil ].
	intraConnectivities := (myClasses collect: [ :c | (c queryOutgoingDependencies atScope: FAMIXType) withoutSelfLoops withinMyPackage ])
		inject: 0
		into: [ :subTotal :each | subTotal + (each select: [ :c | c isInstanceSide ]) size ].
	^ ((intraConnectivities + 1) / myClasses size) asFloat
]

{ #category : #'*famix-extensions-metrics' }
FAMIXPackage >> numberOfClasses [
	<MSEProperty: #numberOfClasses type: #Number>
	<derived>
	<MSEComment: 'The number of classes in a package'>
	
	^ self classes size
]

{ #category : #'*famix-extensions' }
FAMIXPackage >> numberOfClientPackages [
"	<property: #CP longName: 'Number of client packages' description:
			'The number of packages which depend on this package'>"

	<MSEProperty: #numberOfClientPackages type: #Number>
	<MSEComment: 'The number of packages which depend on this package'>
	<derived>

	^ self lookUpPropertyNamed: #numberOfClientPackages
				 computedAs: [ self clientPackages size ]
]

{ #category : #'*famix-extensions' }
FAMIXPackage >> numberOfClientPackages: aNumber [

	self privateState propertyAt: #numberOfClientPackages put: aNumber
]

{ #category : #'*famix-extensions' }
FAMIXPackage >> numberOfLinesOfCode [
	<MSEProperty: #numberOfLinesOfCode type: #Number>
	<derived>
	<MSEComment: 'The number of lines of code in a namespace'>
	
	^self
		lookUpPropertyNamed: #numberOfLinesOfCode
		computedAs: [
			self methods inject: 0 into: [ :sum :each | sum + each numberOfLinesOfCode ] ]
]

{ #category : #'*famix-extensions' }
FAMIXPackage >> numberOfLinesOfCode: aNumber [

	self privateState propertyAt: #numberOfLinesOfCode put: aNumber
]

{ #category : #'*famix-extensions' }
FAMIXPackage >> numberOfMethods [
	<MSEProperty: #numberOfMethods type: #Number>
	<MSEComment: 'The number of methods in a package'>
	<derived>
	^ self
		lookUpPropertyNamed: #numberOfMethods
		computedAs: [ self types inject: 0 into: [ :sum :each | sum + each numberOfMethods ] ]
]

{ #category : #'*famix-extensions' }
FAMIXPackage >> numberOfMethods: aNumber [

	self privateState propertyAt: #numberOfMethods put: aNumber
]

{ #category : #'*famix-extensions-nav All Dependencies' }
FAMIXPackage >> providerClasses [
	self deprecated: 'use providerTypes'.
	^ self providerTypes
]

{ #category : #'*famix-extensions-nav All Dependencies' }
FAMIXPackage >> providerPackages [
	"^ self inheritedPackages union: self invokedPackages"

	^ (self queryAllOutgoing atScope: FAMIXPackage) withoutSelfLoops
]

{ #category : #'*famix-extensions-nav All Dependencies' }
FAMIXPackage >> providerTypes [
	<MSEProperty: #providerTypes type: #FAMIXType>
	<derived>
	<multivalued>
	<MSEComment: 'All types that the receiver depends on'>
	^ (self queryAllOutgoing atScope: FAMIXType) withoutSelfLoops
]

{ #category : #'*famix-extensions-metrics' }
FAMIXPackage >> relativeImportanceForSystem [
	<MSEProperty: #relativeImportanceForSystem type: #Number>
	<derived>
	<MSEComment: 'The number of client packages normalized by the total number of packages'>
	
	^ self lookUpPropertyNamed: #relativeImportanceForSystem
				 computedAs: [
					(self mooseModel allModelPackages size > 1)
						ifTrue:[
							self numberOfClientPackages / (self mooseModel allModelPackages size - 1)
							]
						ifFalse: [0]
						]
]

{ #category : #'*famix-extensions' }
FAMIXPackage >> weightedMethodCount [
	<MSEProperty: #weightedMethodCount type: #Number>
	<MSEComment: 'The sum of the complexity in a package'>
	<derived>
			
	^self
		lookUpPropertyNamed: #WMC
		computedAs: [self classes inject: 0 into: [ :sum :each | sum + each weightedMethodCount] ]
]
