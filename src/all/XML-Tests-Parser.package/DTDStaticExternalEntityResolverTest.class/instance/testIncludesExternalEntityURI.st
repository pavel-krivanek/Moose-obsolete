tests
testIncludesExternalEntityURI
	| resolver |

	self isTestingLimiting
		ifTrue: [^ self].

	resolver := self newResolver.
	self entityURIStringsAndReplacementsDo: [:uriString :replacement |
		self
			deny: (resolver includesExternalEntityURI: uriString);
			deny: (resolver includesExternalEntityURI: uriString asXMLURI).

		resolver
			externalEntityAtURI: uriString
			put: replacement.
		self
			assert: (resolver includesExternalEntityURI: uriString);
			assert: (resolver includesExternalEntityURI: uriString asXMLURI)].