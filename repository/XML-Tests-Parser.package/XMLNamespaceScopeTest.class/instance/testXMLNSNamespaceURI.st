tests
testXMLNSNamespaceURI
	| namespaceURI |

	namespaceURI := 'http://www.w3.org/2000/xmlns/'.
	self
		assert: self newNamespaceScope xmlnsNamespaceURI = namespaceURI;
		assert: XMLNamespaceScope xmlnsNamespaceURI = namespaceURI.