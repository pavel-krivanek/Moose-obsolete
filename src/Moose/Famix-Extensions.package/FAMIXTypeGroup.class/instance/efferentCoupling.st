*famix-extensions-metrics
efferentCoupling
	"Efferent coupling for a class group is the number of classes it depends upon"
	<MSEProperty: #efferentCoupling type: #Number>
	<derived>
	<MSEComment: 'Efferent coupling for a class group is the number of classes it depends upon'>

	| cgClasses cgTypes |
	cgClasses := self allClasses select: [:c | c isInstanceSide].
	cgTypes := cgClasses flatCollect: [:c | c allRecursiveTypes].
	cgClasses := (cgClasses union: cgTypes) asArray.

	^ (cgClasses flatCollect: [:aClass | aClass queryOutgoingDependencies atTypeScope select: [:c | (cgClasses includes: c) not and: [c isInstanceSide]]]) asSet size