tests
testResolveExternalEntityURIUpToLimit
	| resolver |

	self isTestingLimiting
		ifTrue: [^ self].

	resolver := self newResolver.
	self entityURIStringsAndReplacementsDo: [:uriString :replacement |
		self
			should: [
				resolver
					resolveExternalEntityURI: uriString
					upToLimit: nil]
			raise: XMLParserException.
		self
			should: [
				resolver
					resolveExternalEntityURI: uriString asXMLURI
					upToLimit: nil]
			raise: XMLParserException.

		resolver
			externalEntityAtURI: uriString
			put: replacement.
		self assert:
			(resolver
				resolveExternalEntityURI: uriString
				upToLimit: replacement size) contents = replacement.
		self assert:
			(resolver
				resolveExternalEntityURI: uriString asXMLURI
				upToLimit: replacement size) contents = replacement.
		self
			should: [
				resolver
					resolveExternalEntityURI: uriString
					upToLimit: replacement size - 1]
			raise: XMLLimitException.
		self
			should: [
				resolver
					resolveExternalEntityURI: uriString asXMLURI
					upToLimit: replacement size - 1]
			raise: XMLLimitException].