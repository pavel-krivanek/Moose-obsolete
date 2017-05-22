*famix-extensions-metrics
bunchCouplingWithAll
	"Computing coupling (Bunch formula) between receiver and all namespaces"

	| myClasses interConnectivities allClasses |
	myClasses := self classes.
	myClasses := myClasses union: (myClasses flatCollect: [ :c | c allRecursiveTypes ]).
	allClasses := self mooseModel allModelNamespaces flatCollect: [ :aNamespace | aNamespace classes ].
	allClasses := allClasses union: (allClasses flatCollect: [ :aClass | aClass allRecursiveTypes ]).
	(myClasses isEmpty or: [ allClasses isEmpty ])
		ifTrue: [ ^ nil ].

	"All outgoing dependencies"
	interConnectivities := (myClasses collect: [ :c | (c queryOutgoingDependencies atScope: FAMIXType) outOfMyNamespace ])
		inject: 0
		into: [ :subTotal :each | subTotal + (each select: [ :c | c isInstanceSide ]) size ].

	"Plus all incoming dependencies"
	interConnectivities := interConnectivities
		+ ((myClasses collect: [ :c | (c queryIncomingDependencies atScope: FAMIXType) outOfMyNamespace ]) inject: 0 into: [ :subTotal :each | subTotal + (each select: [ :c | c isInstanceSide ]) size ]).
	^ interConnectivities / (2 * myClasses size * (allClasses size - myClasses size)) asFloat