tests
testResolvesLocalFromNonLocal
	| resolver |

	resolver := self newResolver.
	self
		deny: resolver resolvesLocalFromNonLocal;
		assert: (resolver resolvesLocalFromNonLocal: false) == resolver;
		deny: resolver resolvesLocalFromNonLocal;
		assert: (resolver resolvesLocalFromNonLocal: true) == resolver;
		assert: resolver resolvesLocalFromNonLocal.