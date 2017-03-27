*XPath-Tests
testNamespaceAxis
	| element list |

	element := self newNode.
	element declareNamespaces: self namespaces.
	list := element namespaceAxis: '*'.
	self
		assert: list = (self nodeSetClass newFrom: element namespaceNodes);
		assertNodeSet: list hasSortOrder: XPathLevelDocumentSortOrder.

	element := self newNode.
	element configuration usesNamespaces: false.
	self assert: (element namespaceAxis: 'node()') isEmpty.