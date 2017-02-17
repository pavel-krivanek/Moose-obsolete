tests
testNamespaceAxis
	| element listWithElement |

	element := self newElementWithNamespaces.
	listWithElement := self listClass with: element.
	(Array
		with: listWithElement sorted
		with: listWithElement sorted reversed)
		do: [:list | | result |
			result := list @@ '*'.
			self
				assertList: result
				copiedFrom: list
				equals: (self listClass withAll: element namespaceNodes).
			self
				assertList: result
				hasSortOrder: XPathDocumentSortOrder.
			self assert: (result @@ '*') isEmpty.

			result := list @@ 'two'.
			self
				assertList: result
				copiedFrom: list
				"there is an implicit 'xml' namespace node that comes first"
				equals: (self listClass with: element namespaceNodes third).
			self
				assertList: result
				hasSortOrder: XPathDocumentSortOrder.
			self assert: (result @@ 'two') isEmpty].