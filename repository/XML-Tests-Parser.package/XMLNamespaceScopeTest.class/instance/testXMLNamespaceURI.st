tests
testXMLNamespaceURI
	| namespaceURI |

	namespaceURI := 'http://www.w3.org/XML/1998/namespace'.
	self
		assert: self newNamespaceScope xmlNamespaceURI = namespaceURI;
		assert: XMLNamespaceScope xmlNamespaceURI = namespaceURI.