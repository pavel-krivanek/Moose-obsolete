tests
testUndeclarePrefixes
	| context |

	context := self newContext.
	context declareNamespaces: self namespaces.
	self
		assert: context hasNamespaces;
		assert: context undeclarePrefixes == context;
		deny: context hasNamespaces.