tests
testParseDocument
	self
		shouldnt: [
			(SAX2Parser on: self addressBookXML)
				parseDocument]
		raise: XMLParserException