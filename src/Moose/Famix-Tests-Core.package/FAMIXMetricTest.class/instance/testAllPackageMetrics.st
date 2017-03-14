testing
testAllPackageMetrics
	self assertNoErrorForAllMetricsOf: (FAMIXPackage new name: 'package'; mooseModel: MooseModel new)