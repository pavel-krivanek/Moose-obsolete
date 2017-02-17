*famix-extensions-metrics
bunchCohesion
	"Computing cohesion (Bunch formula)"
	
	<MSEProperty: #bunchCohesion type: #Number>
	<derived>
	<MSEComment: 'Bunch Cohesion of a package. It is also considered anonymous and inner classes (in Java).'>
	
	| myClasses intraConnectivities |
	
	myClasses := self classes.
	myClasses := myClasses union: (myClasses flatCollect: [:c | c allRecursiveTypes]).
	myClasses := myClasses select: [:c | c isInstanceSide].
	
	myClasses size == 0 ifTrue: [^ nil].
	
	intraConnectivities := (myClasses collect: [:c | c queryOutgoingDependencies atTypeScope withinMyPackage]
						   ) inject: 0 into: [:subTotal :each | subTotal + ((each select: [:c | c isInstanceSide]) size)].
	
	^ intraConnectivities / (myClasses size squared) asFloat.
