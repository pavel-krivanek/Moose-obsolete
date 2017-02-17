tests
testOptimizedAttributeAxisWithPositionPredicate
	| result attributes |

	attributes :=
		(document allElementsNamed: 'person')
			collect: [:each | each attributeNodes first].
	result := document xPath: '//person/@employee-number[1]'.
	self
		assertNodeSet: result
		hasNodes: attributes.
	self
		assertNodeSet: result
		hasSortOrder: XPathDocumentSortOrder.
	result := document xPath: '//person/@employee-number[1.0][1]'.
	self
		assertNodeSet: result
		hasNodes: attributes.
	self
		assertNodeSet: result
		hasSortOrder: XPathDocumentSortOrder.
	self
		assert: (document xPath: '//person/@employee-number[0]') isEmpty;
		assert: (document xPath: '//person/@employee-number[1.2]') isEmpty;
		assert: (document xPath: '//person/@employee-number[1][2]') isEmpty.

	attributes :=
		(document allElementsNamed: 'person')
			collect: [:each | each attributeNodes second].
	result := document xPath: '//person/@*[2]'.
	self
		assertNodeSet: result
		hasNodes: attributes.
	self
		assertNodeSet: result
		hasSortOrder: XPathDocumentSortOrder.
	result := document xPath: '//person/@*[2.0][1]'.
	self
		assertNodeSet: result
		hasNodes: attributes.
	self
		assertNodeSet: result
		hasSortOrder: XPathDocumentSortOrder.
	self
		assert: (document xPath: '//person/@*[0]') isEmpty;
		assert: (document xPath: '//person/@*[2.2]') isEmpty;
		assert: (document xPath: '//person/@*[2][2]') isEmpty.

	attributes :=
		(document allElementsNamed: 'person') first attributeNodes.
	result :=
		document xPath:
			'addressbook/person[1]/@*[', attributes size asString, ']'.
	self
		assertNodeSet: result
		hasNodes: (XMLNodeList with: attributes last).
	self
		assertNodeSet: result
		hasSortOrder: XPathDocumentSortOrder.

	result :=
		document xPath:
			'addressbook/person[1]/@*[', (attributes size + 1) asString, ']'.
	self assert: result isEmpty.