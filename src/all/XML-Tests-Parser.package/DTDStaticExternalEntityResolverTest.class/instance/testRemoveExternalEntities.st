tests
testRemoveExternalEntities
	| resolver |

	resolver := self newResolverWithEntities.
	self
		assert: resolver removeExternalEntities == resolver;
		deny: resolver hasExternalEntities.