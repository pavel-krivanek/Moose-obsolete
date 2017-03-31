tests
testAttributeAxisPredicates
	| element listWithElement |

	element := self newElementWithAttributes.
	listWithElement := self listClass with: element.
	(Array
		with: listWithElement sorted
		with: listWithElement sorted reversed)
		do: [:list | | result |
			result := list @ ('*' ?? 2).
			self
				assertList: result
				copiedFrom: list
				hasNode: element attributeNodes second.
			self
				assertList: result
				hasSortOrder: XPathLevelDocumentSortOrder.
			self assert: (result @ ('*' ?? 1)) isEmpty.

			result := list @ ('two' ?? 1).
			self
				assertList: result
				copiedFrom: list
				hasNode: element attributeNodes second.
			self
				assertList: result
				hasSortOrder: XPathLevelDocumentSortOrder.
			self assert: (result @ ('two' ?? 1)) isEmpty].