tests
testRemoveLimits
	| readLimit entityLimit entitySizeLimit resolver |

	readLimit := 100.
	entityLimit := 10.
	entitySizeLimit := 100.
	(resolver := self newResolver)
		externalSubsetReadLimit: readLimit;
		maxExternalEntities: entityLimit;
		maxExternalEntitySize: entitySizeLimit;
		resolvesLocalFromNonLocal: true.
	self
		assert: resolver externalSubsetReadLimit = readLimit;
		assert: resolver maxExternalEntities = entityLimit;
		assert: resolver maxExternalEntitySize = entitySizeLimit;
		assert: resolver resolvesLocalFromNonLocal.

	resolver removeLimits.
	self
		assert: resolver externalSubsetReadLimit isNil;
		assert: resolver maxExternalEntities isNil;
		assert: resolver maxExternalEntitySize isNil;
		assert: resolver resolvesLocalFromNonLocal.