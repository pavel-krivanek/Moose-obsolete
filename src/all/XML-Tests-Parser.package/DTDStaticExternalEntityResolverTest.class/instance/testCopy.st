tests
testCopy
	| resolver copy |

	super testCopy.

	self isTestingLimiting
		ifTrue: [^ self].

	resolver := self newResolverWithEntities.
	copy := resolver copy.
	self
		deny: copy == resolver;
		deny: copy externalEntities == resolver externalEntities;
		assert: copy externalEntities = resolver externalEntities.