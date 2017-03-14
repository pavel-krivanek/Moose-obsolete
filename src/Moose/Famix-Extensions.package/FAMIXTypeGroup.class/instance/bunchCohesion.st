*famix-extensions-metrics
bunchCohesion
	"Computing cohesion (Bunch formula). It is also considered anonymous and inner classes (in Java)."
	<MSEProperty: #bunchCohesion type: #Number>
	<derived>
	<MSEComment: 'Bunch Cohesion of a class group. It is also considered anonymous and inner classes (in Java).'>
	
	| cgClasses cgTypes intraConnectivities |
	
	cgClasses := self allClasses select: [:c | c isInstanceSide].
	cgTypes := (cgClasses flatCollect: [:c | c allRecursiveTypes]).
	cgClasses := (cgClasses union: cgTypes) asArray.
	
	cgClasses size == 0 ifTrue: [^ 0.0].
						
	intraConnectivities := (cgClasses collect: [:cgClass | 
											   (cgClass queryOutgoingDependencies opposites atTypeScope select: [:class | (cgClasses includes: class) and: [class isInstanceSide]])]
						   ) inject: 0 into: [:subTotal :each | subTotal + each size].
	
	^ intraConnectivities / (cgClasses size squared) asFloat