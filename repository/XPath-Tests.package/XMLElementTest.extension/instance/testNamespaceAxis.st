*XPath-Tests
testNamespaceAxis
	| element list |

	element := self newNode.
	element declareNamespaces: self namespaces.
	list := element @@ '*'.
	self
		assert: list = (self nodeSetClass newFrom: element namespaceNodes);
		assertList: list hasSortOrder: XPathDocumentSortOrder.

	element := self newNode.
	element configuration usesNamespaces: false.
	self assert: (element @@ 'node()') isEmpty.