tests
testHasExternalEntities
	self isTestingLimiting
		ifTrue: [^ self].

	self
		deny: self newResolver hasExternalEntities;
		assert: self newResolverWithEntities hasExternalEntities