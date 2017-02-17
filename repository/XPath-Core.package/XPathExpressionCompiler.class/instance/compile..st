compiling
compile: anExpressionStringOrStream
	^ self compileTranslatedExpression:
		(self translateParsedExpression:
			(self optimizeParsedExpression:
				(self parseExpression: anExpressionStringOrStream)))