tests
testCopy
	| resolver copy |

	(resolver := self newResolver)
		externalSubsetReadLimit: 1000000;
		maxExternalEntities: 10;
		maxExternalEntitySize: 10000;
		resolvesLocalFromNonLocal: true.

	copy := resolver copy.
	self
		deny: copy == resolver;
		assert: copy externalSubsetReadLimit = 1000000;
		assert: copy maxExternalEntities = 10;
		assert: copy maxExternalEntitySize = 10000;
		assert: copy resolvesLocalFromNonLocal.

	self isTestingLimiting
		ifTrue: [
			self
				assert: copy externalEntityResolver == resolver externalEntityResolver;
				assert: copy externalEntityLimits == resolver externalEntityLimits]
		ifFalse: [
			self deny: copy externalEntityLimits == resolver externalEntityLimits]