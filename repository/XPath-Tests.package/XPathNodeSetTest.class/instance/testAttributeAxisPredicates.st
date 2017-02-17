tests
testAttributeAxisPredicates
	| element listWithElement |

	element := self newElementWithAttributes.
	listWithElement := self listClass with: element.
	(Array
		with: listWithElement sorted
		with: listWithElement sorted reversed)
		do: [:list | | result |
			result :=
				list
					attributeAxis: '*'
					predicates: #(2).
			self
				assertList: result
				copiedFrom: list
				equals: (self listClass with: element attributeNodes second).
			self
				assertList: result
				hasSortOrder: XPathDocumentSortOrder.
			self assert:
				(result
					attributeAxis: '*'
					predicates: #(1)) isEmpty.

			result :=
				list
					attributeAxis: 'two'
					predicates: #(1).
			self
				assertList: result
				copiedFrom: list
				equals: (self listClass with: element attributeNodes second).
			self
				assertList: result
				hasSortOrder: XPathDocumentSortOrder.
			self assert:
				(result
					attributeAxis: 'two'
					predicates: #(1)) isEmpty].