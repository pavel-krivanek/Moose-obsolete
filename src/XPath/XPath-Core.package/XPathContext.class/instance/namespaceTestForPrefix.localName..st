private
namespaceTestForPrefix: aPrefix localName: aLocalName
	self hasNamespaces
		ifTrue: [
			^ XPathNamespaceTestForNamespaceURIAndLocalName
				namespaceURI: (self resolvePrefixReference: aPrefix)
				localName: aLocalName]
		ifFalse: [
			^ XPathNamespaceTestForName name:
				(aLocalName qualifyWithXMLPrefix: aPrefix)]