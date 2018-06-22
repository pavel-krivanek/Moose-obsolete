Extension { #name : #MooseQueryResult }

{ #category : #'*Moose-Query-Extensions' }
MooseQueryResult >> atNamespaceScope [
	self deprecated: 'Use #atScope: FmxNGTNamespace instead' on: '19/05/2016' in: 'Moose6.1' transformWith: '`@receiver atNamespaceScope' -> '`@receiver atScope: FmxNGTNamespace'.
	^ self atScope: FmxNGTNamespace
]

{ #category : #'*Moose-Query-Extensions' }
MooseQueryResult >> atPackageScope [
	self deprecated: 'Use #atScope: FAMIXPackage instead' on: '19/05/2016' in: 'Moose6.1' transformWith: '`@receiver atPackageScope' -> '`@receiver atScope: FmxNGTPackage'.
	^ self atScope: FmxNGTPackage 
]

{ #category : #'*Moose-Query-Extensions' }
MooseQueryResult >> atTypeScope [
	self deprecated: 'Use #atScope: FmxNGTType instead' on: '19/05/2016' in: 'Moose6.1' transformWith: '`@receiver atTypeScope' -> '`@receiver atScope: FmxNGTType'.
	^ self atScope: FmxNGTType 
]
