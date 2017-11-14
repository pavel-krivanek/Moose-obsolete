tests
testRemoveExternalEntityURIIfAbsent
	| resolver |

	self isTestingLimiting
		ifTrue: [^ self].

	resolver := self newResolverWithEntities.
	self entityURIStringsAndReplacementsDo: [:uriString :replacement |
		self assert:
			(resolver
				removeExternalEntityURI: uriString
				ifAbsent: [self fail]) = replacement.
		self deny: (resolver includesExternalEntityURI: uriString).
		self assert:
			(resolver
				removeExternalEntityURI: uriString
				ifAbsent: [#absent]) = #absent.
		self assert:
			(resolver
				removeExternalEntityURI: uriString asXMLURI
				ifAbsent: [#absent]) = #absent].