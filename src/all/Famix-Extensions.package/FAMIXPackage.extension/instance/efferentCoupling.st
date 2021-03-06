*famix-extensions-metrics
efferentCoupling
	"Efferent coupling for a package is the number of classes it depends upon"

	<MSEProperty: #efferentCoupling type: #Number>
	<derived>
	<MSEComment: 'Efferent Coupling of a package'>
	^ ((self queryAllOutgoing outOfMyPackage atScope: FAMIXType) select: [ :c | c isInstanceSide ]) size