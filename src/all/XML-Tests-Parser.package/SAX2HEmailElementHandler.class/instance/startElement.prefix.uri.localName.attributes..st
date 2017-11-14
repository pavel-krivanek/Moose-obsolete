handling - content
startElement: aQualifiedName prefix: aPrefix uri: aURI localName: aLocalName attributes: anAttributeDictionary
	self parser parsingResult addEmailAddress: (anAttributeDictionary at: 'address')