*Moose-Query-Extensions
atNamespaceScope
	self deprecated: 'Use #atScope: FAMIXNamespace instead' on: '19/05/2016' in: 'Moose6.1' transformWith: '`@receiver atNamespaceScope' -> '`@receiver atScope: FAMIXNamespace'.
	^ self atScope: FAMIXNamespace