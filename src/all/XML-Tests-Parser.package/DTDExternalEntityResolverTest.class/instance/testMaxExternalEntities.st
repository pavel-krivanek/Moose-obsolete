tests
testMaxExternalEntities
	| resolver |

	resolver := self newResolver.
	self
		assert: resolver maxExternalEntities > 0;
		assert: (resolver maxExternalEntities: 10) == resolver;
		assert: resolver maxExternalEntities = 10;
		assert: (resolver maxExternalEntities: nil) == resolver;
		assert: resolver maxExternalEntities isNil.