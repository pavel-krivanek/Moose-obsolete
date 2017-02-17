accessing
parserInstance
	^ ((PP2ParserResource current parserAt: self parserClass) optimize)
		resetCaches;
		yourself