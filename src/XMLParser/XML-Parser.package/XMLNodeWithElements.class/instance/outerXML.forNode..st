parsing
outerXML: aStringOrStream forNode: aNode
	self
		outerXMLForNode: aNode
		parsedWith: (self parserHandlerClass on: aStringOrStream)