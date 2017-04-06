parsing
parseInput
	currentAxis := XPathExpressionParserAxis new.
	nodeTestParser :=
		self nodeTestParserClass
			on: readStream
			for:
				(self nodeTestParserHandlerClass
					currentAxis: currentAxis
					expressionParserHandler: handler).

	self nextOrExpression.