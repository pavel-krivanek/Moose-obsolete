tests
testAttributeAxis
	| result expected |

	result :=
		XPath
			for: 'addressbook/person/address/@city'
			in: document.
	expected := XMLNodeList new.
	document root
		elementsAt: 'person'
		do: [:person |
			person
				elementsAt: 'address'
				do: [:each |
					(each includesAttribute: 'city')
						ifTrue: [
							expected addLast:
								(each attributeNodeAt: 'city')]]].
	self
		assertNodeSet: result
		hasNodes: expected.
	self
		assertNodeSet: result
		hasSortOrder: XPathLevelDocumentSortOrder.

	"attribute nodes don't have attributes"
	self assert: 
		(XPath
			for: 'addressbook/person/address/@city/@city'
			in: document) isEmpty.

	expected removeAll.
	(document allElementsNamed: 'person') allButLast do: [:each |
		expected addAll: each attributeNodes].
	result :=
		(document allElementsNamed: 'person') last xpath:
			'preceding-sibling::node()/attribute::node()'.
	self
		assertNodeSet: result
		hasNodes: expected.
	self
		assertNodeSet: result
		hasSortOrder: XPathLevelDocumentSortOrder.