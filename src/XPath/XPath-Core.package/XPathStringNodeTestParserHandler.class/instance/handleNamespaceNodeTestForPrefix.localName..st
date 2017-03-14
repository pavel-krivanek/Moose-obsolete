handling
handleNamespaceNodeTestForPrefix: aPrefix localName: aLocalName
	self parsingResult:
		(XPathNamespaceTestForName name:
			(aLocalName qualifyWithXMLPrefix: aPrefix))