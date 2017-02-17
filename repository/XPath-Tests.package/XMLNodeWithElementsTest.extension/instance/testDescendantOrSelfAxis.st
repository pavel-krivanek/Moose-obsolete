*XPath-Tests
testDescendantOrSelfAxis
	| nodeWithElements |

	super testDescendantOrSelfAxis.

	nodeWithElements := self newNodeWithElements.
	nodeWithElements allNodesDo: [:each |
		each hasChildren
			ifTrue: [| list |
				list := each //~ 'node()'.
				self
					assert: list = (each descendantNodes copyWithFirst: each);
					assertList: list hasSortOrder: XPathDocumentSortOrder.

				list := each //~ '*'.
				each isElement
					ifTrue: [self assert: list = (each descendantElements copyWithFirst: each)]
					ifFalse: [self assert: list = each descendantElements].
				self assertList: list hasSortOrder: XPathDocumentSortOrder]
			ifFalse: [
				self assert: (each //~ 'node()') = (self nodeSetClass with: each).
				each isElement
					ifTrue: [self assert: (each //~ '*') = (self nodeSetClass with: each)]
					ifFalse: [self assert: (each //~ '*') isEmpty]]].