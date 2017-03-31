tests
testTextTypeTest
	self
		assertNodeSet: (document xpath: ' //text( ) ')
		hasNodes: (document allNodesSelect: [:each | each isStringNode]).
	self
		assertNodeSet: (document xpath: '//text()/self::text()')
		hasNodes: (document allNodesSelect: [:each | each isStringNode]).
	self assert: (document xpath: ' //text()/text()') isEmpty.

	self
		should: [document xpath: '//text(name)']
		raise: XPathSyntaxException.