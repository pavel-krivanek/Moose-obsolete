private
attributeTestForPrefix: aPrefix localName: aLocalName
	self hasNamespaces
		ifTrue: [
			^ XPathAttributeNodeTestForNamespaceURIAndLocalName
				namespaceURI: (self resolvePrefixReference: aPrefix)
				localName: aLocalName]
		ifFalse: [
			^ XPathAttributeNodeTestForName name:
				(aLocalName qualifyWithXMLPrefix: aPrefix)]