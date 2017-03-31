*XPath-Tests
testAttributeAxis
	| element list |

	super testAttributeAxis.

	element := self newElementWithAttributes.
	list := element @ '*'.
	self
		assert: list = (self nodeSetClass newFrom: element attributeNodes);
		assertNodeSet: list hasSortOrder: XPathLevelDocumentSortOrder.

	element := self newNode.
	self assert: (element @ 'node()') isEmpty.