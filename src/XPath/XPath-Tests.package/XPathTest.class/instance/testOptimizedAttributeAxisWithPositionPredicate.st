tests
testOptimizedAttributeAxisWithPositionPredicate
	| result attributes |

	attributes :=
		(document allElementsNamed: 'person')
			collect: [:each | each attributeNodes first].
	result := document xpath: '//person/@employee-number[1]'.
	self
		assertNodeSet: result
		hasNodes: attributes.
	result := document xpath: '//person/@employee-number[1.0][1]'.
	self
		assertNodeSet: result
		hasNodes: attributes.
	self
		assert: (document xpath: '//person/@employee-number[0]') isEmpty;
		assert: (document xpath: '//person/@employee-number[1.2]') isEmpty;
		assert: (document xpath: '//person/@employee-number[1][2]') isEmpty.

	attributes :=
		(document allElementsNamed: 'person')
			collect: [:each | each attributeNodes second].
	result := document xpath: '//person/@*[2]'.
	self
		assertNodeSet: result
		hasNodes: attributes.
	result := document xpath: '//person/@*[2.0][1]'.
	self
		assertNodeSet: result
		hasNodes: attributes.
	self
		assert: (document xpath: '//person/@*[0]') isEmpty;
		assert: (document xpath: '//person/@*[2.2]') isEmpty;
		assert: (document xpath: '//person/@*[2][2]') isEmpty.

	attributes :=
		(document allElementsNamed: 'person') first attributeNodes.
	result :=
		document xpath:
			'addressbook/person[1]/@*[', attributes size asString, ']'.
	self
		assertNodeSet: result
		hasNodes: (XMLNodeList with: attributes last).
	self
		assertNodeSet: result
		hasSortOrder: XPathLevelDocumentSortOrder.

	result :=
		document xpath:
			'addressbook/person[1]/@*[', (attributes size + 1) asString, ']'.
	self assert: result isEmpty.