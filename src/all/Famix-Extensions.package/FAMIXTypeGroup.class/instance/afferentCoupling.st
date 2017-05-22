*famix-extensions-metrics
afferentCoupling
	"Afferent coupling for a class group is the number of external classes that depend upon this class group"

	<MSEProperty: #afferentCoupling type: #Number>
	<derived>
	<MSEComment: 'Afferent coupling for a class group is the number of external classes that depend upon this class group'>
	| cgClasses cgTypes |
	cgClasses := self allClasses select: [ :c | c isInstanceSide ].
	cgTypes := cgClasses flatCollect: [ :c | c allRecursiveTypes ].
	cgClasses := (cgClasses union: cgTypes) asArray.
	^ (cgClasses
		flatCollect: [ :cgClass | (cgClass queryIncomingDependencies atScope: FAMIXType) select: [ :invokingClass | (cgClasses includes: invokingClass) not and: [ invokingClass isInstanceSide ] ] ])
		asSet size