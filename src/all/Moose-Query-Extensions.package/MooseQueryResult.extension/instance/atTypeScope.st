*Moose-Query-Extensions
atTypeScope
	self deprecated: 'Use #atScope: FAMIXType instead' on: '19/05/2016' in: 'Moose6.1' transformWith: '`@receiver atTypeScope' -> '`@receiver atScope: FAMIXType'.
	^ self atScope: FAMIXType 