*XPath-Tests
testAncestorOrSelfAxis
	| node list |

	node := self newNode.
	list := node %%~ 'node()'.
	self
		assert: list = (self nodeSetClass with: node);
		assertList: list hasSortOrder: XPathReverseDocumentSortOrder.

	list := node %%~ '*'.
	node isElement
		ifTrue: [
			self
				assert: list = (self nodeSetClass with: node);
				assertList: list hasSortOrder: XPathReverseDocumentSortOrder]
		ifFalse: [self assert: list isEmpty].