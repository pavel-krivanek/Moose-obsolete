private
compileTranslatedExpression: aTranslatedExpression
	^ XPathCompiledExpression
		block:
			(self class systemCompilerClass evaluate:
				aTranslatedExpression sourceCode)
		nodeTests: aTranslatedExpression nodeTests