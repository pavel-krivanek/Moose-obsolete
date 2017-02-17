handling
handleElementNodeTestForPrefix: aPrefix localName: aLocalName
	self parsingResult:
		(XPathElementNodeTestForName name:
			(aLocalName qualifyWithXMLPrefix: aPrefix))