*famix-extensions-metrics
bunchCouplingWith: aPackage
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