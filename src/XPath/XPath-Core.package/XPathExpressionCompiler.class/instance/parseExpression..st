private
parseExpression: anExpressionSourceStringOrStream
	^ (self parserClass
		on: anExpressionSourceStringOrStream
		for: self parserHandlerClass new) parse