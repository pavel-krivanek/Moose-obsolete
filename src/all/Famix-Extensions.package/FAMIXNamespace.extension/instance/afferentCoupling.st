*famix-extensions-metrics
afferentCoupling
	<MSEProperty: #afferentCoupling type: #Number>
	<derived>
	<MSEComment:
		'Afferent Coupling of a namespace Afferent is the number of classes that depend upon this namespace'>
	^ ((self queryAllIncomingAssociations atScope: FAMIXType)
		outOfMyNamespace select: [ :c | c isInstanceSide ]) size