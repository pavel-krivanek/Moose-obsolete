instance creation
newResolver
	^ self isTestingLimiting
		ifTrue: [self resolverClass new asLimitingExternalEntityResolver]
		ifFalse: [self resolverClass new]