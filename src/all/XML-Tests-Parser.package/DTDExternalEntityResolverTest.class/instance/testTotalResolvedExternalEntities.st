tests
testTotalResolvedExternalEntities
	| resolver |

	self isTestingLimiting
		ifFalse: [^ self].

	resolver := self newResolver.
	self assert: resolver totalResolvedExternalEntities = 0.

	resolver incrementTotalResolvedExternalEntities.
	self assert: resolver totalResolvedExternalEntities = 1.

	self assert:
		(self newResolver
			incrementTotalResolvedExternalEntities;
			totalResolvedExternalEntities) = 1.