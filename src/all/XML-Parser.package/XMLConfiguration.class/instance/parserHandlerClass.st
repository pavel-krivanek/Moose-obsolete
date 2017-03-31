accessing
parserHandlerClass
	^ parserHandlerClass ifNil: [parserHandlerClass := self defaultParserHandlerClass]