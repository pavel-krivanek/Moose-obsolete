tests
testTextTypeTest
	self
		assertNodeSet: (document xPath: ' //text( ) ')
		hasNodes: (document allNodesSelect: [:each | each isStringNode]).
	self
		assertNodeSet: (document xPath: '//text()/self::text()')
		hasNodes: (document allNodesSelect: [:each | each isStringNode]).
	self assert: (document xPath: ' //text()/text()') isEmpty.

	self
		should: [document xPath: '//text(name)']
		raise: XPathSyntaxException.