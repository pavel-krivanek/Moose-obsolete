tests
testAttributesIncludingDeclarations
	| document  root |

	document :=
		XMLDOMParser
			parse: self addressBookNamespacedXML
			usingNamespaces: false.
	root := document root.
	self
		assert: root hasAttributes;
		assert: (root attributeAt: 'xmlns') = 'defaultNS';
		assert: (root attributeAt: 'xmlns:book') = 'bookNS';
		assert: (root attributeAt: 'xmlns:ps') = 'personNS'.