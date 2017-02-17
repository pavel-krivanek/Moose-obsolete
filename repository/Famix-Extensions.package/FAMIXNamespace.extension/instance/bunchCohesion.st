*famix-extensions-metrics
bunchCohesion
	"Computing cohesion (Bunch formula)"

	<MSEProperty: #bunchCohesion type: #Number>
	<derived>
	<MSEComment: 'Bunch Cohesion of a namespace. It is also considered anonymous and inner classes.'>
	
	| myClasses intraConnectivities |
	
	myClasses := self classes.
	myClasses := myClasses union: (myClasses flatCollect: [:c | c allRecursiveTypes]).
	
	myClasses size == 0 ifTrue: [^ nil].
	
	intraConnectivities := (myClasses collect: [:c | c queryOutgoingDependencies atTypeScope withinMyNamespace]
						   ) inject: 0 into: [:subTotal :each | subTotal + (each size)].
	
	^ intraConnectivities / (myClasses size squared) asFloat.
