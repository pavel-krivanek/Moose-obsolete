tests
testResolveExternalEntityURI
	| resolver |

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
			assert: (resolver resolveExternalEntityURI: uriString) = replacement;
			assert: (resolver resolveExternalEntityURI: uriString asXMLURI) = replacement.

		resolver maxExternalEntitySize: replacement size - 1.
		self
			should: [resolver resolveExternalEntityURI: uriString]
			raise: XMLLimitException.
		self
			should: [resolver resolveExternalEntityURI: uriString asXMLURI]
			raise: XMLLimitException].