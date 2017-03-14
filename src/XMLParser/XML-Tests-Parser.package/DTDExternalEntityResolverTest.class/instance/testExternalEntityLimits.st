tests
testExternalEntityLimits
	| resolver newEntityLimits |

	resolver := self newResolver.
	self assert: resolver externalEntityLimits class == self entityLimitsClass.

	newEntityLimits := self newEntityLimits.
	self
		assert: (resolver externalEntityLimits: newEntityLimits) == resolver;
		assert: resolver externalEntityLimits == newEntityLimits.