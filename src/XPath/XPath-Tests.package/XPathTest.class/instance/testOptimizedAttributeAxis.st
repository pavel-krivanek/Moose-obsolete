tests
testOptimizedAttributeAxis
	| attributes |

	attributes := (document findElementNamed: 'person') attributeNodes.
	self
		assertNodeSet: (document xPath: 'addressbook/person[1]/@node()')
		hasNodes: attributes.
	self
		assertNodeSet: (document xPath: 'addressbook/person[1]/@*')
		hasNodes: attributes.