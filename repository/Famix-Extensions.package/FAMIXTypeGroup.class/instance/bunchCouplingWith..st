*famix-extensions-metrics
bunchCouplingWith: aClassGroup
	"Computing coupling (Bunch formula) from aClassGroup to receiver. It is also considered anonymous and inner classes (in Java)"
	
	| cgClasses cgTypes dependClasses dependTypes interConnectivities |
	
	cgClasses := self allClasses select: [:c | c isInstanceSide].
	cgTypes := (cgClasses flatCollect: [:c | c allRecursiveTypes]).
	cgClasses := (cgClasses union: cgTypes) asArray.
	
	dependClasses :=  aClassGroup allClasses select: [:c | c isInstanceSide].
	dependTypes := (dependClasses flatCollect: [:c | c allRecursiveTypes]).
	dependClasses := (dependClasses union: dependTypes) asArray.
	
	(cgClasses size == 0 or: [dependClasses size == 0]) ifTrue: [^ 0.0].
	
	interConnectivities := (cgClasses collect: [:cgClass | 
											    cgClass queryOutgoingDependencies opposites atTypeScope select: [:referencedClass | (dependClasses includes: referencedClass) and: [referencedClass isInstanceSide]]]
						   ) inject: 0 into:  [:subTotal :each | subTotal + each size].
	
	interConnectivities := ((cgClasses collect: [:cgClass | 
													 cgClass queryIncomingDependencies opposites atTypeScope select: [:referencingClass | (dependClasses includes: referencingClass) and: [referencingClass isInstanceSide]]]
						   ) inject: 0 into: [:subTotal :each | subTotal + each size]) + interConnectivities.
	
	^ interConnectivities / (2 * cgClasses size * dependClasses size) asFloat