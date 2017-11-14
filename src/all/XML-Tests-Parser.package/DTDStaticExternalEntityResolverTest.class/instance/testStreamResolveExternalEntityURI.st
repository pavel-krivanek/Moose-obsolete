tests
testStreamResolveExternalEntityURI
	| resolver |

	self isTestingLimiting
		ifTrue: [^ self].

	resolver := self newResolver.
	self entityURIStringsAndReplacementsDo: [:uriString :replacement | | stream |
		self
			should: [resolver streamResolveExternalEntityURI: uriString]
			raise: XMLParserException.
		self
			should: [resolver streamResolveExternalEntityURI: uriString asXMLURI]
			raise: XMLParserException.

		resolver
			maxExternalEntitySize: replacement size;
			externalEntityAtURI: uriString
			put: replacement.
		stream := resolver streamResolveExternalEntityURI: uriString.
		self
			assert: (stream isKindOf: XMLDecodingReadStreamAdapter);
			assert: stream contents = replacement.
		stream := resolver streamResolveExternalEntityURI: uriString asXMLURI.
		self
			assert: (stream isKindOf: XMLDecodingReadStreamAdapter);
			assert: stream contents = replacement.

		resolver maxExternalEntitySize: replacement size - 1.
		self
			should: [resolver streamResolveExternalEntityURI: uriString]
			raise: XMLLimitException.
		self
			should: [resolver streamResolveExternalEntityURI: uriString asXMLURI]
			raise: XMLLimitException].