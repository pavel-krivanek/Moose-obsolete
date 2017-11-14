tests
testRemoveExternalEntities
	| resolver |

	self isTestingLimiting
		ifTrue: [^ self].

	resolver := self newResolverWithEntities.
	self
		assert: resolver removeExternalEntities == resolver;
		deny: resolver hasExternalEntities.