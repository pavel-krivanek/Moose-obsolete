scoping
atPackageScope
	self deprecated: 'Use #atScope: FAMIXPackage instead' on: '19/05/2016' in: 'Moose6.1' transformWith: '`@receiver atPackageScope' -> '`@receiver atScope: FAMIXPackage'.
	^ self atScope: FAMIXPackage 