tests
testExternalEntityAtURIIfAbsentPut
	| resolver |

	resolver := self newResolver.
	self entityURIStringsAndReplacementsDo: [:uriString :replacement |
		self assert:
			(resolver
				externalEntityAtURI: uriString
				ifAbsentPut: [replacement]) = replacement.
		self assert: (resolver externalEntityAtURI: uriString) = replacement.
		self assert:
			(resolver
				externalEntityAtURI: uriString asXMLURI
				ifAbsentPut: [self fail]) = replacement.
		self assert: (resolver externalEntityAtURI: uriString) = replacement].