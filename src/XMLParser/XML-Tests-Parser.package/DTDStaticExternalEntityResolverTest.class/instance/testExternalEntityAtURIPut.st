tests
testExternalEntityAtURIPut
	| resolver |

	resolver := self newResolver.
	self entityURIStringsAndReplacementsDo: [:uriString :replacement |
		self assert:
			(resolver
				externalEntityAtURI: uriString
				put: replacement) = replacement.
		self assert: (resolver externalEntityAtURI: uriString) = replacement.

		self assert:
			(resolver
				externalEntityAtURI: uriString asXMLURI
				put: self newEntityReplacement) = self newEntityReplacement.
		self assert:
			(resolver externalEntityAtURI: uriString asXMLURI) = self newEntityReplacement].