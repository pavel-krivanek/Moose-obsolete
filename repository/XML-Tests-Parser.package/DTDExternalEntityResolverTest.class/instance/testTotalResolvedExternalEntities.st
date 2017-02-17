tests
testTotalResolvedExternalEntities
	| resolver |

	resolver := self newResolver.
	self assert: resolver totalResolvedExternalEntities = 0.

	resolver incrementTotalResolvedExternalEntities.
	self assert: resolver totalResolvedExternalEntities = 1.

	self assert:
		(self newResolver
			incrementTotalResolvedExternalEntities;
			totalResolvedExternalEntities) = 1.