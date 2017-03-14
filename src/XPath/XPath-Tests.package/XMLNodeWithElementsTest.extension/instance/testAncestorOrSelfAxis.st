*XPath-Tests
testAncestorOrSelfAxis
	| nodeWithElements |

	super testAncestorOrSelfAxis.

	nodeWithElements := self newNodeWithElements.
	nodeWithElements allNodesDo: [:each | | list |
		list := each %%~ 'node()'.
		self
			assert: list = (each ancestorNodes copyWithFirst: each);
			assertList: list hasSortOrder: XPathReverseDocumentSortOrder.

		list := each %%~ '*'.
		each isElement
			ifTrue: [self assert: list = (each ancestorElements copyWithFirst: each)]
			ifFalse: [self assert: list = each ancestorElements].
		self assertList: list hasSortOrder: XPathReverseDocumentSortOrder].