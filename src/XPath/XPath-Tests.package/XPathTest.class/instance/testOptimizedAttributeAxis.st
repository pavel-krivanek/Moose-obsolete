tests
testOptimizedAttributeAxis
	| attributes |

	attributes := (document findElementNamed: 'person') attributeNodes.
	self
		assertNodeSet: (document xpath: 'addressbook/person[1]/@node()')
		hasNodes: attributes.
	self
		assertNodeSet: (document xpath: 'addressbook/person[1]/@*')
		hasNodes: attributes.