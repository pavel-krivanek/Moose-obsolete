parsing
parseInput
	currentAxis := XPathAxis new.
	nodeTestParser :=
		XPathNodeTestParser
			on: readStream
			for:
				(XPathASTExpressionNodeTestParserHandler
					currentAxis: currentAxis
					expressionParserHandler: handler).
	self nextOrExpression.