accessing
parserClass

	^ parserClass ifNil: [ self defaultParserClass ]