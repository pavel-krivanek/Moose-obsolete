Class {
	#name : #FmxNGPackage,
	#superclass : #FmxNGPackageGenerated,
	#category : #'FmxNGCompatibility-Entities-Entities'
}

{ #category : #meta }
FmxNGPackage class >> annotation [

	<MSEClass: #Package super: #FmxNGPackageGenerated>
	<package: #'FmxNGCompatibility-Generated'>
	^self
]

{ #category : #'Famix-Implementation' }
FmxNGPackage >> abstractClasses [

	^ self classes select: [:c | c isAbstract]
]

{ #category : #'Famix-Extensions' }
FmxNGPackage >> abstractness [
	"Abstractness is the ratio between the number of abstract classes and the total number of classes in a package, in the range [0, 1]. 0 means the package is fully concrete, 1 it is fully abstract."
	<MSEProperty: #abstractness type: #Number>
	<derived>
	<MSEComment: 'Abstractness of a package'>

	| nsClasses |
	nsClasses := self allClasses select: [:c | c isInstanceSide].
	(nsClasses size == 0) ifTrue: [^nil].
	
	^ (nsClasses select: [:c | c isAbstract]) size / (nsClasses size)
]

{ #category : #'Famix-Extensions' }
FmxNGPackage >> accept: aVisitor [

	aVisitor visitPackage: self
]

{ #category : #accessing }
FmxNGPackage >> addChildNamedEntity: aNamedEntity [
	childEntities add: aNamedEntity
]

{ #category : #'Famix-Extensions' }
FmxNGPackage >> afferentCoupling [
	"Afferent coupling for a package is the number of classes that depend upon this package"

	<MSEProperty: #afferentCoupling type: #Number>
	<derived>
	<MSEComment: 'Afferent Coupling of a package'>
	^ ((self queryIncomingDependencies atScope: FmxNGType) outOfMyPackage
		select: [ :c | c isInstanceSide ]) size
]

{ #category : #'Famix-Extensions' }
FmxNGPackage >> allClasses [
	^self classes union: self extensionClasses
]

{ #category : #'Famix-Extensions' }
FmxNGPackage >> bunchCohesion [
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
	intraConnectivities := (myClasses collect: [ :c | (c queryOutgoingDependencies atScope: FmxNGType) withinMyPackage ])
		inject: 0
		into: [ :subTotal :each | subTotal + (each select: [ :c | c isInstanceSide ]) size ].
	^ intraConnectivities / myClasses size squared asFloat
]

{ #category : #'Famix-Extensions' }
FmxNGPackage >> bunchCouplingWith: aPackage [
	"Computing coupling (Bunch formula) between receiver and aPackage"

	| myClasses otherClasses interConnectivities |
	myClasses := self classes.
	myClasses := (myClasses asSet union: (myClasses flatCollect: [ :c | c allRecursiveTypes ])) select: [ :c | c isInstanceSide ].
	otherClasses := aPackage classes.
	otherClasses := (otherClasses asSet union: (otherClasses flatCollect: [ :c | c allRecursiveTypes ])) select: [ :c | c isInstanceSide ].
	(myClasses size == 0 or: [ otherClasses size == 0 ])
		ifTrue: [ ^ nil ].

	"All outgoing dependencies"
	interConnectivities := (myClasses collect: [ :c | (c queryOutgoingDependencies atScope: FmxNGType) withinPackage: aPackage ])
		inject: 0
		into: [ :subTotal :each | subTotal + (each select: [ :c | c isInstanceSide ]) size ].

	"Plus all incoming dependencies"
	interConnectivities := interConnectivities
		+
			((myClasses collect: [ :c | (c queryIncomingDependencies atScope: FmxNGType) withinPackage: aPackage ])
				inject: 0
				into: [ :subTotal :each | subTotal + (each select: [ :c | c isInstanceSide ]) size ]).
	^ interConnectivities / (2 * myClasses size * otherClasses size) asFloat
]

{ #category : #'Famix-Extensions' }
FmxNGPackage >> bunchCouplingWithAll [
	"Computing coupling (Bunch formula) between receiver and all packages"

	| myClasses interConnectivities allClasses |
	myClasses := self classes.
	myClasses := myClasses union: (myClasses flatCollect: [ :c | c allRecursiveTypes ]).
	allClasses := self mooseModel allModelClasses.
	myClasses size == 0
		ifTrue: [ ^ nil ].

	"All outgoing dependencies"
	interConnectivities := (myClasses collect: [ :c | (c queryOutgoingDependencies atScope: FmxNGType) outOfMyPackage ])
		inject: 0
		into: [ :subTotal :each | subTotal + (each select: [ :c | c isInstanceSide ]) size ].

	"Plus all incoming dependencies"
	interConnectivities := interConnectivities
		+
			((myClasses collect: [ :c | (c queryIncomingDependencies atScope: FmxNGType) outOfMyPackage ]) inject: 0 into: [ :subTotal :each | subTotal + (each select: [ :c | c isInstanceSide ]) size ]).
	^ interConnectivities / (2 * myClasses size * (allClasses size - myClasses size)) asFloat
]

{ #category : #accessing }
FmxNGPackage >> childNamedEntities [

	^ self childEntities
]

{ #category : #accessing }
FmxNGPackage >> childNamedEntities: aNamedEntity [

	^ self childEntities: aNamedEntity
]

{ #category : #'Famix-Extensions' }
FmxNGPackage >> childrenOfMyKind [
	^ self childNamedEntities allWithSubTypesOf: self class
]

{ #category : #'Famix-Implementation' }
FmxNGPackage >> classes [

	^ self privateState 	cacheAt: #classes 
							ifAbsentPut: [ self childEntities select: [ :child | child isClass ]]
]

{ #category : #'Famix-Extensions' }
FmxNGPackage >> clientPackages [
	"^ self inheritedByPackages union: self invokingPackages"

	^ (self queryAllIncoming atScope: FmxNGPackage) withoutSelfLoops
]

{ #category : #'Famix-Extensions' }
FmxNGPackage >> clientTypes [
	<MSEProperty: #clientTypes type: #FmxNGType>
	<multivalued>
	<derived>
	<MSEComment: 'All types that depend on the receiver'>
	^ (self queryAllIncoming atScope: FmxNGType) withoutSelfLoops
]

{ #category : #'Famix-Extensions' }
FmxNGPackage >> concernedClassesCollection [
	"it returns the collection of the receiver's concerned classes (See #__concernedClassesCollection). Before returning this value it verifies if it is cached in the receiver's state under the properiety #concernedClasses."

	^self privateState cacheAt: #concernedClassesCollection
		ifAbsentPut: (self extensionClasses union: self localClasses)
]

{ #category : #'Famix-Extensions' }
FmxNGPackage >> containedEntities [
	^ super containedEntities union: self childNamedEntities
]

{ #category : #'Famix-Extensions' }
FmxNGPackage >> containedEntities: collection [
	self definedClasses: collection.
]

{ #category : #'Famix-Extensions' }
FmxNGPackage >> copyFrom: anEntity within: aVisitor [

	super copyFrom: anEntity within: aVisitor.
	
	anEntity childNamedEntities do: [:c|
		self addChildNamedEntity: (aVisitor visit: c ) ].

]

{ #category : #'Famix-Smalltalk' }
FmxNGPackage >> createPackagesFromCategories [
	<menuItem: 'Create packages from package categories' category: 'Utilities'>
	"Inspired by the Moose Smalltalk Category importer"
	| cat famixCat |
	
	self localClasses do:[ :class |
		cat := (Smalltalk at: class instanceSide name) category.
		famixCat := self mooseModel allPackages detect: [:each | each mooseName = cat] ifNone: [nil].
		famixCat ifNil: [
			famixCat := self mooseModel add: (FmxNGPackage new name: cat; stub: true)
		].
		class isStub
			ifFalse: [ famixCat stub: false ].
		class localMethods do:[:aMethod |
			aMethod parentPackage: famixCat ].
		class parentPackage: famixCat.
	].
	self privateState flushGroups.
	self mooseModel cacheMooseGroups
]

{ #category : #'Famix-Smalltalk' }
FmxNGPackage >> definedMethods [
	"alias"

	^ self localMethods
]

{ #category : #'Famix-Extensions' }
FmxNGPackage >> distance [
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

{ #category : #'Famix-Extensions' }
FmxNGPackage >> efferentCoupling [
	"Efferent coupling for a package is the number of classes it depends upon"

	<MSEProperty: #efferentCoupling type: #Number>
	<derived>
	<MSEComment: 'Efferent Coupling of a package'>
	^ ((self queryAllOutgoing outOfMyPackage atScope: FmxNGType) select: [ :c | c isInstanceSide ]) size
]

{ #category : #'Famix-Smalltalk' }
FmxNGPackage >> extendedClasses [
	"select all classes extended in this package"

	^ self privateState cacheAt: #extendedClasses
							ifAbsentPut: [ self classes select: [ :c| c isExtended ] ]
	
]

{ #category : #'Famix-Smalltalk' }
FmxNGPackage >> extendedClassesGroup [
	<navigation: 'Extended classes in package'>
	
	^ FAMIXClassGroup 
		withAll: self extendedClasses
		withDescription: 'Extended classes in package ', self name
]

{ #category : #'Famix-Smalltalk' }
FmxNGPackage >> extensionClasses [
	"select all classes extended by this package"

	^ self privateState 
		cacheAt: #extensionClasses
		ifAbsentPut: [ self extensionMethods collectAsSet: [ :method | method parentType ] ]
]

{ #category : #'Famix-Smalltalk' }
FmxNGPackage >> extensionClassesGroup [
	<navigation: 'Classes extended by package'>
	
	^ FAMIXClassGroup 
		withAll: self extensionClasses
		withDescription: 'Classes extended by package', self name
]

{ #category : #'Famix-Smalltalk' }
FmxNGPackage >> extensionMethods [
	"select all class extensions made by this package"

	^ self privateState 
		cacheAt: #extensionMethods 
		ifAbsentPut: [ self childEntities select: [ :child | child isMethod ]]
]

{ #category : #'as yet unclassified' }
FmxNGPackage >> historicalUniqueName [
	^ (self parentPackage isNil 
		ifTrue: [ self name ]
		ifFalse: [ self parentPackage historicalUniqueName , '.' , self name ]) asSymbol
]

{ #category : #initialization }
FmxNGPackage >> initialize [
	super initialize.
	self isPackage: true.

]

{ #category : #'Famix-Extensions' }
FmxNGPackage >> instability [
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

{ #category : #'Famix-Smalltalk' }
FmxNGPackage >> localClasses [
	"select all local classes. Just an alias"

	^ self classes
]

{ #category : #'Famix-Smalltalk' }
FmxNGPackage >> localClassesGroup [
	<navigation: 'Local classes'>

	^ FAMIXClassGroup 
		withAll: self localClasses
		withDescription: 'Local classes'
]

{ #category : #'Famix-Smalltalk' }
FmxNGPackage >> localMethods [
	"select all local methods"

	^ self privateState 
			cacheAt: #localMethods 
			ifAbsentPut: [ self classes flatCollect: [:c | c localMethods ]]
]

{ #category : #'Famix-Extensions' }
FmxNGPackage >> martinCohesion [
	"Computing cohesion as described by Robert C. Martin"

	<MSEProperty: #martinCohesion type: #Number>
	<derived>
	<MSEComment: 'Cohesion as defined by Robert C. Martin.'>
	| intraConnectivities myClasses |
	myClasses := self classes.
	myClasses := (myClasses union: (myClasses flatCollect: [ :c | c allRecursiveTypes ])) select: [ :c | c isInstanceSide ].
	myClasses size == 0
		ifTrue: [ ^ nil ].
	intraConnectivities := (myClasses collect: [ :c | (c queryOutgoingDependencies atScope: FmxNGType) withoutSelfLoops withinMyPackage ])
		inject: 0
		into: [ :subTotal :each | subTotal + (each select: [ :c | c isInstanceSide ]) size ].
	^ ((intraConnectivities + 1) / myClasses size) asFloat
]

{ #category : #'Famix-Implementation' }
FmxNGPackage >> methods [
	^ self localMethods union: self extensionMethods
]

{ #category : #'Moose-Finder' }
FmxNGPackage >> mooseIcon [ 
	^ MooseIcons famixPackage
]

{ #category : #'moosechef-scoping-filtering' }
FmxNGPackage >> namespaceScope [

	self shouldNotImplement 

]

{ #category : #'Famix-Extensions' }
FmxNGPackage >> numberOfClasses [
	<MSEProperty: #numberOfClasses type: #Number>
	<derived>
	<MSEComment: 'The number of classes in a package'>
	
	^ self classes size
]

{ #category : #'Famix-Extensions' }
FmxNGPackage >> numberOfClientPackages [
"	<property: #CP longName: 'Number of client packages' description:
			'The number of packages which depend on this package'>"

	<MSEProperty: #numberOfClientPackages type: #Number>
	<MSEComment: 'The number of packages which depend on this package'>
	<derived>

	^ self lookUpPropertyNamed: #numberOfClientPackages
				 computedAs: [ self clientPackages size ]
]

{ #category : #'Famix-Extensions' }
FmxNGPackage >> numberOfClientPackages: aNumber [

	self privateState propertyAt: #numberOfClientPackages put: aNumber
]

{ #category : #'Famix-Extensions' }
FmxNGPackage >> numberOfLinesOfCode [
	<MSEProperty: #numberOfLinesOfCode type: #Number>
	<derived>
	<MSEComment: 'The number of lines of code in a namespace'>
	
	^self
		lookUpPropertyNamed: #numberOfLinesOfCode
		computedAs: [
			self methods inject: 0 into: [ :sum :each | sum + each numberOfLinesOfCode ] ]
]

{ #category : #'Famix-Extensions' }
FmxNGPackage >> numberOfLinesOfCode: aNumber [

	self privateState propertyAt: #numberOfLinesOfCode put: aNumber
]

{ #category : #'Famix-Extensions' }
FmxNGPackage >> numberOfMethods [
	<MSEProperty: #numberOfMethods type: #Number>
	<MSEComment: 'The number of methods in a package'>
	<derived>
	^ self
		lookUpPropertyNamed: #numberOfMethods
		computedAs: [ self types inject: 0 into: [ :sum :each | sum + each numberOfMethods ] ]
]

{ #category : #'Famix-Extensions' }
FmxNGPackage >> numberOfMethods: aNumber [

	self privateState propertyAt: #numberOfMethods put: aNumber
]

{ #category : #'moosechef-scoping-filtering' }
FmxNGPackage >> packageScope [

	^ self
]

{ #category : #'Famix-Implementation' }
FmxNGPackage >> printOn: aStream [ 
	| parent |
	parent := self parentPackage.
	parent ifNotNil: 
		[ parent printOn: aStream.
		aStream
			nextPut: $. ].
	self name ifNotNil: [ aStream nextPutAll: self name ].
	aStream nextPutAll: ' (Package)'
]

{ #category : #'Famix-Extensions' }
FmxNGPackage >> providerPackages [
	"^ self inheritedPackages union: self invokedPackages"

	^ (self queryAllOutgoing atScope: FmxNGPackage) withoutSelfLoops
]

{ #category : #'Famix-Extensions' }
FmxNGPackage >> providerTypes [
	<MSEProperty: #providerTypes type: #FmxNGType>
	<derived>
	<multivalued>
	<MSEComment: 'All types that the receiver depends on'>
	^ (self queryAllOutgoing atScope: FmxNGType) withoutSelfLoops
]

{ #category : #'Famix-Extensions' }
FmxNGPackage >> relativeImportanceForSystem [
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

{ #category : #'moosechef-scoping-filtering' }
FmxNGPackage >> selectWithinYourScope: aMooseQueryResult [
	^ aMooseQueryResult withinPackage: self
]

{ #category : #'Famix-Extensions' }
FmxNGPackage >> weightedMethodCount [
	<MSEProperty: #weightedMethodCount type: #Number>
	<MSEComment: 'The sum of the complexity in a package'>
	<derived>
			
	^self
		lookUpPropertyNamed: #WMC
		computedAs: [self classes inject: 0 into: [ :sum :each | sum + each weightedMethodCount] ]
]
