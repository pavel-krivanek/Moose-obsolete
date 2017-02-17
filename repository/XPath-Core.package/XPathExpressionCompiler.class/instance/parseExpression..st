private
parseExpression: anExpressionStringOrStream
	^ (self parserClass
		on: anExpressionStringOrStream
		for: self parserHandlerClass new) parse