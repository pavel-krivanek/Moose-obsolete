tests
testInvalidAbbreviatedLocationPath
	self
		should: ['/ /one' asXPath compileExpression]
		raise: XPathSyntaxException.
	self
		should: ['one/ /two' asXPath compileExpression]
		raise: XPathSyntaxException.
	self
		should: ['//' asXPath compileExpression]
		raise: XPathSyntaxException.
	self
		should: ['//one/' asXPath compileExpression]
		raise: XPathSyntaxException.