tests
testDocumentReadLimit
	| configuration |

	configuration := self newConfiguration.
	self
		assert: configuration documentReadLimit = XMLParserLimits defaultDocumentReadLimit;
		assert: (configuration documentReadLimit: 100000) == configuration;
		assert: configuration documentReadLimit = 100000;
		assert: (configuration documentReadLimit: nil) == configuration;
		assert: configuration documentReadLimit isNil.