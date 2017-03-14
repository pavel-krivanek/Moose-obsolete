tests
testUndeclarePrefix
	| context |

	context := self newContext.
	context declareNamespaces: self namespaces.
	self namespaces keysDo: [:each |
		self
			assert: (context isDeclaredPrefix: each);
			assert: (context undeclarePrefix: each) == context;
			deny: (context isDeclaredPrefix: each)].