tests
testDeclaringXMLNamespace
	| xmlNamespace elements |

	xmlNamespace :=XMLNamespaceScope xmlNamespaceURI.
	self deny:
		((XMLDOMParser parse: self addressBookNamespacedXML) root
			declaresPrefix: 'xml'
			uri: xmlNamespace).

	elements :=
		(XMLDOMParser parse:
			'<one><two xmlns:xml="', xmlNamespace, '"/><xml:three/></one>') allElements.
	self
		deny: (elements first declaresPrefix: 'xml' uri: xmlNamespace);
		assert: (elements second declaresPrefix: 'xml' uri: xmlNamespace);
		deny: (elements third declaresPrefix: 'xml' uri: xmlNamespace).