tests
testExternalEntityAtURI
	| resolver |

	resolver := self newResolver.
	self entityURIStringsAndReplacementsDo: [:uriString :replacement |
		self
			assert: (resolver externalEntityAtURI: uriString) = '';
			assert: (resolver externalEntityAtURI: uriString asXMLURI) = ''.

		resolver
			externalEntityAtURI: uriString
			put: replacement.
		self
			assert: (resolver externalEntityAtURI: uriString) = replacement;
			assert: (resolver externalEntityAtURI: uriString asXMLURI) = replacement].