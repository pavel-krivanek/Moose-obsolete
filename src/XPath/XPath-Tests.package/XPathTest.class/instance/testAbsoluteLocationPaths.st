tests
testAbsoluteLocationPaths
	document allNodesDo: [:each |
		self
			assert: (XPath for: '/' in: each) = (XMLNodeList with: document);
			assert: (XPath for: '/*' in: each) = (XMLNodeList with: document root);
			assert: (XPath for: '/self::node()' in: each) = (XMLNodeList with: document);
			assert: (XPath for: '/addressbook/person' in: each) = (document allElementsNamed: 'person')]