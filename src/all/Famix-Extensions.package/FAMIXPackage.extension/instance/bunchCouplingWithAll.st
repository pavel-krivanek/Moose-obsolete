*famix-extensions-metrics
bunchCouplingWithAll
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