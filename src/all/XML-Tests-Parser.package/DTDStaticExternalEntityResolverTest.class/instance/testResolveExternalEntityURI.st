tests
testResolveExternalEntityURI
	| resolver |

	self isTestingLimiting
		ifTrue: [^ self].

	resolver := self newResolver.
	self entityURIStringsAndReplacementsDo: [:uriString :replacement |
		self
			should: [resolver resolveExternalEntityURI: uriString]
			raise: XMLParserException.
		self
			should: [resolver resolveExternalEntityURI: uriString asXMLURI]
			raise: XMLParserException.

		resolver
			maxExternalEntitySize: replacement size;
			externalEntityAtURI: uriString
			put: replacement.
		self
			assert: (resolver resolveExternalEntityURI: uriString) contents = replacement;
			assert: (resolver resolveExternalEntityURI: uriString asXMLURI) contents = replacement.

		resolver maxExternalEntitySize: replacement size - 1.
		self
			should: [resolver resolveExternalEntityURI: uriString]
			raise: XMLLimitException.
		self
			should: [resolver resolveExternalEntityURI: uriString asXMLURI]
			raise: XMLLimitException].