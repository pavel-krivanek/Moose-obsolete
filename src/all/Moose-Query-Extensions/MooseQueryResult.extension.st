Extension { #name : #MooseQueryResult }

{ #category : #'*Moose-Query-Extensions' }
MooseQueryResult >> atNamespaceScope [
	self deprecated: 'Use #atScope: FAMIXNamespace instead' on: '19/05/2016' in: 'Moose6.1' transformWith: '`@receiver atNamespaceScope' -> '`@receiver atScope: FAMIXNamespace'.
	^ self atScope: FAMIXNamespace
]

{ #category : #'*Moose-Query-Extensions' }
MooseQueryResult >> atPackageScope [
	self deprecated: 'Use #atScope: FmxNGPackage instead' on: '19/05/2016' in: 'Moose6.1' transformWith: '`@receiver atPackageScope' -> '`@receiver atScope: FAMIXPackage'.
	^ self atScope: FAMIXPackage 
]

{ #category : #'*Moose-Query-Extensions' }
MooseQueryResult >> atTypeScope [
	self deprecated: 'Use #atScope: FAMIXType instead' on: '19/05/2016' in: 'Moose6.1' transformWith: '`@receiver atTypeScope' -> '`@receiver atScope: FAMIXType'.
	^ self atScope: FAMIXType 
]
