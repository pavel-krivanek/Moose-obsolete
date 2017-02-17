tests
testExternalSubsetReadLimit
	| resolver |

	resolver := self newResolver.
	self assert:
		resolver externalSubsetReadLimit =
			DTDExternalEntityLimits defaultExternalSubsetReadLimit.
	self
		assert: (resolver externalSubsetReadLimit: 1000000) == resolver;
		assert: resolver externalSubsetReadLimit = 1000000;
		assert: (resolver externalSubsetReadLimit: nil) == resolver;
		assert: resolver externalSubsetReadLimit isNil.