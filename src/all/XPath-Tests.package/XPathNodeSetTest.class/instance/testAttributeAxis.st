tests
testAttributeAxis
	| element listWithElement |

	element := self newElementWithAttributes.
	listWithElement := self listClass with: element.
	(Array
		with: listWithElement sorted
		with: listWithElement sorted reversed)
		do: [:list | | result |
			result := list @ '*'.
			self
				assertList: result
				copiedFrom: list
				hasNodes: element attributeNodes.
			self
				assertList: result
				hasSortOrder: XPathLevelDocumentSortOrder.
			self assert: (result @ '*') isEmpty.

			result := list @ 'two'.
			self
				assertList: result
				copiedFrom: list
				hasNode: element attributeNodes second.
			self
				assertList: result
				hasSortOrder: XPathLevelDocumentSortOrder.
			self assert: (result @ 'two') isEmpty].