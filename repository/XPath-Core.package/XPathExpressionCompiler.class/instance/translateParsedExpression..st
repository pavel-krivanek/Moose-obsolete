private
translateParsedExpression: anExpressionAST
	^ self translatorClass new
		visitNode: anExpressionAST;
		translatedExpression