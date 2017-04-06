private
startNodeTest
	self parsingResult: true.
	currentAxis isStartOfRelativeLocationPath
		ifTrue: [expressionParserHandler handleStartRelativeLocationPath].
	expressionParserHandler
		handleStartStep;
		perform: currentAxis handlerSelector.
	currentAxis beDefaultImplicitAxis.