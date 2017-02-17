tests
testParserLimits
	| configuration newParserLimits |

	configuration := self newConfiguration.
	self assert: configuration parserLimits class == XMLParserLimits.

	newParserLimits := XMLParserLimits new.
	self
		assert: (configuration parserLimits: newParserLimits) == configuration;
		assert: configuration parserLimits == newParserLimits.