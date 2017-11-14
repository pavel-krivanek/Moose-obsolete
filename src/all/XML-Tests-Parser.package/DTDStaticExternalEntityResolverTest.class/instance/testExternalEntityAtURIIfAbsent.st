tests
testExternalEntityAtURIIfAbsent
	| resolver |

	self isTestingLimiting
		ifTrue: [^ self].

	resolver := self newResolver.
	self entityURIStringsAndReplacementsDo: [:uriString :replacement |
		self assert:
			(resolver
				externalEntityAtURI: uriString
				ifAbsent: [#absent]) = #absent.
		self assert:
			(resolver
				externalEntityAtURI: uriString asXMLURI
				ifAbsent: [#absent]) = #absent.

		resolver
			externalEntityAtURI: uriString
			put: replacement.
		self assert:
			(resolver
				externalEntityAtURI: uriString
				ifAbsent: [self fail]) = replacement.
		self assert:
			(resolver
				externalEntityAtURI: uriString asXMLURI
				ifAbsent: [self fail]) = replacement].