handling
handleAttributeNodeTestForPrefix: aPrefix localName: aLocalName
	self parsingResult:
		(XPathAttributeNodeTestForName name:
			(aLocalName qualifyWithXMLPrefix: aPrefix))