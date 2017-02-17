private
elementTestForPrefix: aPrefix localName: aLocalName
	self hasNamespaces
		ifTrue: [
			^ XPathElementNodeTestForNamespaceURIAndLocalName
				namespaceURI: (self resolvePrefixReference: aPrefix)
				localName: aLocalName]
		ifFalse: [
			^ XPathElementNodeTestForName name:
				(aLocalName qualifyWithXMLPrefix: aPrefix)]