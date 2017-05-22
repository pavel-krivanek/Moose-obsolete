scoping
atMethodScope
	self deprecated: 'Use #atScope: FAMIXMethod instead' on: '19/05/2016' in: 'Moose6.1' transformWith: '`@receiver atTypeScope' -> '`@receiver atScope: FAMIXMethod'.
	^ self atScope: FAMIXMethod