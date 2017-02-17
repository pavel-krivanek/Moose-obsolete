tests
testAttributeAxis
	| result expected |

	result :=
		XPath
			for: 'addressbook/person/address/@city'
			in: document.
	self assert: result size = 4.
	result do: [:each |
		self
			assert: each class == XMLAttribute;
			assert: each name = 'city'].
	self assert:
		(result collect: [:each | each value]) asArray =
			#('Los Angeles' 'New York' 'Los Angeles' 'New York').

	"attribute nodes don't have attributes"
	self assert: 
		(XPath
			for: 'addressbook/person/address/@city/@city'
			in: document) isEmpty.

	expected := XMLNodeList new.
	(document allElementsNamed: 'person') allButLast do: [:each |
		expected addAll: each attributeNodes].
	result :=
		(document allElementsNamed: 'person') last xPath:
			'preceding-sibling::node()/attribute::node()'.
	self
		assert: result = expected;
		assertNodeSet: result hasSortOrder: XPathDocumentSortOrder.