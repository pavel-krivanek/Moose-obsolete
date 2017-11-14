tests
testRemoveExternalEntityURI
	| resolver |

	self isTestingLimiting
		ifTrue: [^ self].

	resolver := self newResolverWithEntities.
	self entityURIStringsAndReplacementsDo: [:uriString :replacement |
		self
			assert: (resolver removeExternalEntityURI: uriString) = replacement;
			deny: (resolver includesExternalEntityURI: uriString).
		self
			should: [resolver removeExternalEntityURI: uriString]
			raise: Error.
		self
			should: [resolver removeExternalEntityURI: uriString asXMLURI]
			raise: Error.].