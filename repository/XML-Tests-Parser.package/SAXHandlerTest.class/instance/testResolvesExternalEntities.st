tests
testResolvesExternalEntities
	| parser |

	parser := SAXHandler on: self prefixedXMLSource.
	"should not resolve external entities by default for security"
	self
		deny: parser resolvesExternalEntities;
		assert: (parser resolvesExternalEntities: true) == parser;
		assert: parser resolvesExternalEntities;
		assert: (parser resolvesExternalEntities: false) == parser;
		deny: parser resolvesExternalEntities.