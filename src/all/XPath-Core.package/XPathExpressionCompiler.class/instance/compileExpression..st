compiling
compileExpression: anExpressionSourceStringOrStream
	^ self compileTranslatedExpression:
		(self translateParsedExpression:
			(self optimizeParsedExpression:
				(self parseExpression: anExpressionSourceStringOrStream)))