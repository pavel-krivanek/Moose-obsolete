*famix-extensions-metrics
afferentCoupling
	"Afferent coupling for a package is the number of classes that depend upon this package"

	<MSEProperty: #afferentCoupling type: #Number>
	<derived>
	<MSEComment: 'Afferent Coupling of a package'>
	^ ((self queryIncomingDependencies atScope: FAMIXType) outOfMyPackage
		select: [ :c | c isInstanceSide ]) size