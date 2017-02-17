tests
testAttributeNamespacesDisabled
	| document  people |

	document :=
		XMLDOMParser
			parse: self addressBookNamespacePrefixedXML
			usingNamespaces: false.
	people := document allElementsNamed: 'person'.
	self assert: people notEmpty.
	people do: [:each |
		self
			assert: each hasAttributes;
			deny: each attributeNames isEmpty;
			assert: (each attributeNodeAt: 'ps:family-name' namespaceURI: 'personNS') isNil;
			assert: (each attributeNodeAt: 'ps:first-name' namespaceURI: 'personNS') isNil].