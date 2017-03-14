tests
testNamespaceAxisPredicates
	| element listWithElement |

	element := self newElementWithNamespaces.
	listWithElement := self listClass with: element.
	(Array
		with: listWithElement sorted
		with: listWithElement sorted reversed)
		do: [:list | | result |
			result :=
				list
					namespaceAxis: '*'
					predicates: #(3).
			self
				assertList: result
				copiedFrom: list
				"there is an implicit 'xml' namespace node that comes first"
				equals: (self listClass with: element namespaceNodes third).
			self
				assertList: result
				hasSortOrder: XPathDocumentSortOrder.
			self assert:
				(result
					namespaceAxis: '*'
					predicates: #(1)) isEmpty.

			result :=
				list
					namespaceAxis: 'two'
					predicates: #(1).
			self
				assertList: result
				copiedFrom: list
				"there is an implicit 'xml' namespace node that comes first"
				equals: (self listClass with: element namespaceNodes third).
			self
				assertList: result
				hasSortOrder: XPathDocumentSortOrder.
			self assert:
				(result
					namespaceAxis: 'two'
					predicates: #(1)) isEmpty].