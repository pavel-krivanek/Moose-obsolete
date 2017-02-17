*famix-extensions-metrics
efferentCoupling
	"Efferent coupling for a module is the number of classes it depends upon"

	<MSEProperty: #efferentCoupling type: #Number>
	<derived>
	<MSEComment: 'Efferent coupling for a module is the number of classes it depends upon'>

	^ (self queryOutgoingDependencies outOfMyNamespace atTypeScope select: [:c | c isInstanceSide]) size.
	