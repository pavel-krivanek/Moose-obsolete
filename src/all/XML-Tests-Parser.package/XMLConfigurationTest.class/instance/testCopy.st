tests
testCopy
	| configuration externalEntityResolver copy |

	externalEntityResolver := self externalEntityResolverClass new.
	(configuration := self newConfiguration)
		isValidating: false;
		usesNamespaces: false;
		decodesCharacters: false;
		parserHandlerClass: self otherParserHandlerClass;
		documentReadLimit: XMLParserLimits defaultDocumentReadLimit - 1;
		maxEntityReplacementDepth: XMLParserLimits defaultMaxEntityReplacementDepth - 1;
		preservesUndeclaredEntityReferences: true;
		replacesContentEntityReferences: false;
		resolvesExternalEntities: true;
		externalEntityResolver: externalEntityResolver.
	copy := configuration copy.
	self
		deny: copy == configuration;
		assert: copy isValidating = configuration isValidating;
		assert: copy usesNamespaces = configuration usesNamespaces;
		assert: copy decodesCharacters = configuration decodesCharacters;
		assert: copy requiresDocumentConstraints = configuration requiresDocumentConstraints;
		assert: copy parserHandlerClass == configuration parserHandlerClass.

	self
		deny: copy parserLimits == configuration parserLimits;
		assert: copy documentReadLimit = configuration documentReadLimit;
		assert: copy maxEntityReplacementDepth = configuration maxEntityReplacementDepth.

	self
		deny: copy entityConfiguration == configuration entityConfiguration;
		assert: copy preservesUndeclaredEntityReferences = configuration preservesUndeclaredEntityReferences;
		assert: copy replacesContentEntityReferences = configuration replacesContentEntityReferences;
		assert: copy resolvesExternalEntities = configuration resolvesExternalEntities;
		deny: copy externalEntityResolver == configuration externalEntityResolver;
		assert: copy externalEntityResolver class == configuration externalEntityResolver class.