accessing
translatedExpression
	^ XPathTranslatedExpression
		sourceCode: self contents
		nodeTests: nodeTests