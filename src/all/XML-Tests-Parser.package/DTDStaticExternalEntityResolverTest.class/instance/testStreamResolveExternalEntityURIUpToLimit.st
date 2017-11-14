tests
testStreamResolveExternalEntityURIUpToLimit
	| resolver |

	self isTestingLimiting
		ifTrue: [^ self].

	resolver := self newResolver.
	self entityURIStringsAndReplacementsDo: [:uriString :replacement | | stream |
		self
			should: [
				resolver
					streamResolveExternalEntityURI: uriString
					upToLimit: nil]
			raise: XMLParserException.
		self
			should: [
				resolver
					streamResolveExternalEntityURI: uriString asXMLURI
					upToLimit: nil]
			raise: XMLParserException.

		resolver
			externalEntityAtURI: uriString
			put: replacement.
		stream :=
			resolver
				streamResolveExternalEntityURI: uriString
				upToLimit: replacement size.
		self
			assert: (stream isKindOf: XMLDecodingReadStreamAdapter);
			assert: stream contents = replacement.
		stream :=
			resolver
				streamResolveExternalEntityURI: uriString asXMLURI
				upToLimit: replacement size.
		self
			assert: (stream isKindOf: XMLDecodingReadStreamAdapter);
			assert: stream contents = replacement.

		self
			should: [
				resolver
					streamResolveExternalEntityURI: uriString
					upToLimit: replacement size - 1]
			raise: XMLLimitException.
		self
			should: [
				resolver
					streamResolveExternalEntityURI: uriString asXMLURI
					upToLimit: replacement size - 1]
			raise: XMLLimitException].