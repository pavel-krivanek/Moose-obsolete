tests
testAbsoluteLocationPaths
	document allNodesDo: [:each |
		self
			assertNodeSet: (XPath for: '/' in: each)
			hasNode: document.
		self
			assertNodeSet: (XPath for: '/*' in: each)
			hasNode: document root.
		self
			assertNodeSet: (XPath for: '/self::node()' in: each)
			hasNode: document.
		self
			assertNodeSet: (XPath for: '/addressbook/person' in: each)
			hasNodes: (document allElementsNamed: 'person')]