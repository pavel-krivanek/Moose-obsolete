*famix-extensions-metrics
bunchCouplingWith: aNamespace
	"Computing coupling (Bunch formula) between receiver and aNamespace"
	
	| myClasses otherClasses interConnectivities |
	
	myClasses := self classes.
	myClasses := myClasses union: (myClasses flatCollect: [:c | c allRecursiveTypes]).
	
	otherClasses :=  aNamespace classes.
	otherClasses := otherClasses union: (otherClasses flatCollect: [:c | c allRecursiveTypes])..
	
	(myClasses size == 0 or: [otherClasses size == 0]) ifTrue: [^ nil].
	
	"All outgoing dependencies"
	interConnectivities := (myClasses collect: [:c | c queryOutgoingDependencies atTypeScope withinNamespace: aNamespace]
						   ) inject: 0 into: [:subTotal :each | subTotal + (each size)].

	"Plus all incoming dependencies"
	interConnectivities := interConnectivities +
						 ((myClasses collect: [:c | c queryIncomingDependencies atTypeScope withinNamespace: aNamespace]
						   ) inject: 0 into: [:subTotal :each | subTotal + (each size)]).

	^ interConnectivities / (2 * myClasses size * otherClasses size) asFloat