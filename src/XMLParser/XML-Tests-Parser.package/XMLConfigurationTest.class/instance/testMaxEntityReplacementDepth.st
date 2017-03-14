tests
testMaxEntityReplacementDepth
	| configuration |

	configuration := self newConfiguration.
	self assert:
		configuration maxEntityReplacementDepth =
			XMLParserLimits defaultMaxEntityReplacementDepth.
	self
		assert: (configuration maxEntityReplacementDepth: 20) == configuration;
		assert: configuration maxEntityReplacementDepth = 20;
		assert: (configuration maxEntityReplacementDepth: nil) == configuration;
		assert: configuration maxEntityReplacementDepth isNil.