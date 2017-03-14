tests
testHasExternalEntities
	self
		deny: self newResolver hasExternalEntities;
		assert: self newResolverWithEntities hasExternalEntities