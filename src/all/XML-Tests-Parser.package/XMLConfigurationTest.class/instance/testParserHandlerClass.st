tests
testParserHandlerClass
	| configuration |

	configuration := self newConfiguration.
	self assert: configuration parserHandlerClass == self parserHandlerClass.
	self assert:
		(configuration parserHandlerClass: self otherParserHandlerClass) ==
			configuration.
	self assert: configuration parserHandlerClass == self otherParserHandlerClass.